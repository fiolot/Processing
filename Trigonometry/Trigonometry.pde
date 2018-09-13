void setup()
{
  size(720, 480);
  strokeWeight(5);
}
int frames;
void draw()
{
  background(255);
  stroke(255, 0, 0);
  for(int i = 0; i < 100; i++)
  {
    point(i * width/100, 120 + sin((i * width/100 + frames) * 0.04) * -100);
  }
  stroke(0, 255, 0);
  for(int i = 0; i < 100; i++)
  {
    point(i * width/100, 360 + cos((i + frames) * 0.10) * -100);
  }
  //For fun
  /*stroke(0, 0, 255);
  for(int i = 0; i < 100; i++)
  {
     point(10 + i * 5, 240 + tan((i + frames) * 0.04) * -100);
  }*/
  frames++;
}
