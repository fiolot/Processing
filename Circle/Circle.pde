int frames;
void setup()
{
  size(480, 480);
  strokeWeight(10);
}
void draw()
{
  background(255);
  stroke(0);
  circle(25);
  spiral(100);
  frames++;
}
void circle(float n)
{
  for(int i = 0; i < n; i++)
  {
    point(240 + sin(i * TWO_PI/n + frames) * 100, 240 + cos(i * TWO_PI/n + frames) * 100);
  }
}

void spiral(float n)
{
  stroke(0, 0, 255);
  for(int i = 0; i < n; i++)
  {
    point(240 + sin(i * TWO_PI/(n/2) - frames * 0.10) * i, 240 + cos(i * TWO_PI/(n/2) - frames * 0.10) * i);
  }
}
