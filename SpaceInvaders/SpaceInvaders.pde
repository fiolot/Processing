boolean isLeft = false, isRight = false, isSpace = false, once = true;
LaserShot shot;
LaserShot[] shots;
PVector pDir, pPos;
int shipLength, shipDepth, shipSpeed, bulletWidth;
int maxBullets, maxAliens, bulletIndex;
Alien[] aliens;
boolean gameWon, gameOver;
PFont f;
void setup()
{
  gameWon = false;
  gameOver = false;
  f = createFont("Arial", 16, true);
  textFont(f, 36);
  size(720, 720);
  maxAliens = 100;
  pDir = new PVector(0, 0);
  maxBullets = 10;
  bulletIndex = 0;
  shots = new LaserShot[maxBullets];
  for (int i = 0; i < maxBullets; ++i)
  {
  	shots[i] = new LaserShot();
  }
  shipSpeed = 5;
  bulletWidth = 6;
  shipLength = 40;
  shipDepth = 40;
  pPos = new PVector((width - shipLength)/2, height - shipDepth - 20);
  fill(255);
  shot = new LaserShot();
  aliens = new Alien[maxAliens];
  int j = 1;
  for(int i = 0; i < maxAliens; i++)
  {
    if(i%20 == 0)
      j++;
  	aliens[i] = new Alien(new PVector(10 + i%20 * 20, 20 * j), false, shots, maxBullets);
  }
}
void draw()
{
  background(0);
  if(!gameWon && !gameOver)
  {
    PlayerController();
    rect(pPos.x, pPos.y, shipLength, shipDepth);
    //shot.Update();
    //shot.Display();
    for(int i = 0; i < maxBullets; i++)
    {
  	 shots[i].Update();
  	 shots[i].Display();
    }
    gameWon = true;
    for(int i = 0; i < maxAliens; i++)
    {
      if(aliens[i].dead == false)
      {
        aliens[i].Update();
        if(aliens[i].alienPos.y >= pPos.y)
          gameOver = true;
        aliens[i].Display();
        gameWon = false;
      }
    }
  }
  if(gameWon)
  {
    text("You Win!", width/2 - 80, height/2);
  }
  else if(gameOver)
  {
    text("Game Over!", width/2 - 80, height/2);
  }
}