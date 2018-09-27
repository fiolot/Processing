boolean isLeft = false, isRight = false, isSpace = false, once = true;
LaserShot shot;
LaserShot[] shots;
PVector pDir, pPos;
int shipLength, shipDepth, shipSpeed, bulletWidth;
int bulletIndex;
Alien[] aliens;
void setup()
{
  size(480, 800);
  pDir = new PVector(0, 0);
  shots = new LaserShot[5];
  bulletIndex = 0;
  for (int i = 0; i < 5; ++i)
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
  aliens = new Alien[5];
  for(int i = 0; i < 5; i++)
  {
  	aliens[i] = new Alien(new PVector(10 + i * 20, 20), false, shots);
  }
}
void draw()
{
  background(0);
  PlayerController();
  rect(pPos.x, pPos.y, shipLength, shipDepth);
  //shot.Update();
  //shot.Display();
  for(int i = 0; i < 5; i++)
  {
  	shots[i].Update();
  	shots[i].Display();
  }
  for(int i = 0; i < 5; i++)
  {
  	aliens[i].Update();
  	aliens[i].Display();
  }
}