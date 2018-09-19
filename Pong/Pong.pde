int paddleLenght = 120, paddleWidth = 30;
int ballX, ballY, directionX = 5, setDirection = 5, directionY = 5;
int counter;
int secondPaddleX, secondPaddleY, paddleX, paddleY;
PFont f;
boolean a = false, d = false, left = false, right = false;
void setup()
{
  f = createFont("Arial", 16, true);
  textFont(f, 36);
  size(720, 480);
  strokeWeight(2);
  ballX = width/2;
  ballY = height/2;
  secondPaddleX = width - paddleWidth;
  secondPaddleY = height/2 - paddleLenght/2;
  paddleY = height/2 - paddleLenght/2;
}
void draw()
{
  background(255);
  fill(0);
  PlayerOne();
  PlayerTwo();
  rect(0, paddleY, paddleWidth, paddleLenght);
  rect(secondPaddleX, secondPaddleY, paddleWidth, paddleLenght);
  Ball();
  text("Score: " + counter, width/2 - 100, 40);
}
void Ball()
{
  if(ballX <= 0)
  {
    counter--;
    ballX = width/2;
    ballY = height/2;
    directionX = setDirection;
    println(counter);
  }
  else if(ballX >= width)
  {
    counter++;
    directionX = -setDirection;
    ballX = width/2;
    ballY = height/2;
    println(counter);
  }
  else if(ballY <= 0)
  {
    directionY = setDirection;
  }
  else if(ballY >= height)
  {
    directionY = -setDirection;
  }
  else if(ballX == paddleWidth && ballY >= paddleY && ballY <= paddleY + paddleLenght)
    directionX = setDirection;
  else if(ballX == secondPaddleX && ballY >= secondPaddleY && ballY <= secondPaddleY + paddleLenght)
    directionX = -setDirection;
  ellipse(ballX, ballY, 20, 20);
  ballX += directionX;
  ballY += directionY;
}
void PlayerOne()
{
  if(a)
    paddleY -= 5;
  if(d)
    paddleY += 5;
  if(paddleY < 0)
    paddleY = 0;
  else if(paddleY > height - paddleLenght)
    paddleY = height - paddleLenght;
}
void PlayerTwo()
{
  if(left)
    secondPaddleY += 5;
  if(right)
    secondPaddleY -= 5;
  if(secondPaddleY < 0)
    secondPaddleY = 0;
  else if(secondPaddleY > height - paddleLenght)
    secondPaddleY = height - paddleLenght;
}
void keyReleased()
{
  move(keyCode, false);
}
void keyPressed()
{
  move(keyCode, true);
}
boolean move(int k, boolean b)
{
  switch(k)
  {
    case 37:
      return left = b;
    case 39:
      return right = b;
    case 65:
      return a = b;
    case 68:
      return d = b;
    default :
      return b; 
  }
}