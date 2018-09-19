int number = 10;
Ball[] balls = new Ball[number * 10];
void setup()
{
  size(480, 480);
  fill(0);
  for(int i = 0; i < number * 10; i++)
  {
    balls[i] = new Ball(new PVector(random(width),random(height)), new PVector(random(-10, 10), random(-10, 10)), random(5, 25), i);
  }
}
void draw()
{
  background(255);
  for(Ball ball : balls)
  {
    ball.Move();
    ball.Display();
  }
}
class Ball
{
  PVector pos;
  PVector dir;
  float size;
  int id;
  Ball(PVector inPos, PVector inDir, float inSize, int inId)
  {
    pos = inPos;
    dir = inDir;
    size = inSize;
    id = inId;
  }
  void Display()
  {
    fill(dir.x * 10, dir.y * 10, id);
    ellipse(pos.x, pos.y, size, size);
  }
  void Move()
  {
    PVector delta = new PVector(0, 0);
    delta.add(pos);
    delta.add(dir);
    if(delta.x > width)
    {
      pos.x += width - delta.x;
      dir.x *= -1;
    }
    else if(delta.x < 0)
    {
      pos.x += delta.x;
      dir.x *= -1;
    }
    if(delta.y < 0)
    {
      pos.y += delta.y;
      dir.y *= -1;
    }
    else if(delta.y > height)
    {
      pos.y += height - delta.y;
      dir.y *= -1;
    }
    pos.add(dir);
  }
}
