void setup()
{
  size(480, 480);
  strokeWeight(10);
}
void draw()
{
  background(255);
  spacing(20);
}
void spacing(float n)
{
  for(int i = 0; i < n; i++)
  {
    point(240 + sin(i * 2 *PI/n) * 100, 240 + cos(i * 2 * PI/n) * 100);
  }
}
