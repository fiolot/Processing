int paddleLenght = 120, paddleWidth = 30;
int ballX, ballY, directionX = 5, setDirection = 5, directionY = 5;
int counter;
int secondPaddleX, secondPaddleY, paddleX, paddleY;
PFont f;
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
  if(keyPressed && key == 'a')
  {
    paddleY -= 5;
  }
  else if(keyPressed && key == 'd')
    paddleY += 5;
   if(paddleY <= 0)
     paddleY = 0;
    else if(paddleY >= height - paddleLenght)
      paddleY = height - paddleLenght;
}
