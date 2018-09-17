PVector circlePos, mousePos = new PVector(0, 0);
float circleSpeed;
PVector ballPos, ballDir;
void setup()
{
  size(640, 480);
  circlePos = new PVector(width/2, height/2);
  ballPos = new PVector(width/2, height/2);
  ballDir = new PVector(1, 1);
  ballDir.normalize();
  circleSpeed = 5;
  fill(0);
}
void draw()
{
  background(255);
  mousePos.set(mouseX, mouseY);
  mousePos.sub(circlePos);
  if(mousePos.mag() >= circleSpeed)
  {
    mousePos.normalize();
    mousePos.mult(circleSpeed);
    circlePos.add(mousePos);
  }
  ellipse(circlePos.x, circlePos.y, 10, 10);
  Ball();
}
void Ball()
{
  if(ballPos.x <= 0 || ballPos.x >= width)
  {
    ballDir.set(ballDir.x * -1, ballDir.y);
  }
  if(ballPos.y <= 0 || ballPos.y >= height)
  {
    ballDir.set(ballDir.x, ballDir.y * -1);
  }
  ballDir.normalize();
  ballDir.mult(circleSpeed);
  ballPos.add(ballDir);
  ellipse(ballPos.x, ballPos.y, 20, 20);
}
