PVector ballPos, ballDir;
float vBall = 500, frameTime;
int time;
void setup()
{
  size(640, 480);
  fill(0);
  ballPos = new PVector(width/2, height/2);
  ballDir = new PVector(1, 1);
}
void draw()
{
  int currentTime = millis();
  frameTime = (currentTime - time) * 0.001;
  background(128);
  if(ballPos.x < 0 || ballPos.x > width)
  {
  	ballPos.set(0, ballPos.y);
  }
  if(ballPos.y < 0 || ballPos.y > height)
  {
  	ballDir.set(ballDir.x, ballDir.y * -1);
  }
  ballDir.normalize();
  ballDir.mult(vBall * frameTime);
  ballPos.add(ballDir);
  ellipse(ballPos.x, ballPos.y, 10, 10);
  time = currentTime;
}
