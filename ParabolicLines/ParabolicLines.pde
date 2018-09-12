int lineWidthDistance = 0;
int lineDistance = 10;
void setup()
{
  size(480, 480);
  //Setting width distance for the lines
  lineWidthDistance = width/(height/lineDistance);
  println(lineWidthDistance); //Debug
}
void draw()
{
  for(int i = 0; i < height; i += lineDistance)
  {
    if(i%30 == 0)
    stroke(0);
    else
    stroke(128);
    line(0, i, lineWidthDistance * i/lineDistance, height);
  }
}
