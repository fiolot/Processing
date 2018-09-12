void setup()
{
  size(768, 432);
}
float weight, backgroundWeight = 1;
boolean weightSwitch = false;
int r, g, b;
void draw()
{
  drawB();
  stroke(r, g, b);
  noFill();
  r += 1;
  g += 5;
  b += 15;
  if(r == 255)
  {
    r = 0;
    g = 0;
    b = 0;
  }
  else if(g == 255)
  {
    g = 0;
  }
  else if(b == 255)
  {
    b = 0;
  }
  strokeWeight(weight);
  if(weight < 8.0 && !weightSwitch)
  {
    weight = weight + 0.2; 
    //println(weight);
  }
  else if(weight > 0.5 && weightSwitch)
  {
    weight = weight - 0.5;
  }
  else if(weight > 8.0)
  {
    weightSwitch = true;
  }
  else
  {
    weightSwitch = false;
  }
  //S
  arc(30, 30, 30, 30, 2.0, 5.0);
  arc(20, 59, 30, 30, -1.3, 2.3);
  //e
  arc(60, 59, 30, 30, -5.4, -0.2);
  line(45, 57, 74, 57);
  //b
  line(82, 73, 82, 16);
  arc(91, 59, 30, 30, -2.1, 2.1);
  //a
  arc(130, 59, 30, 30, 0.0, 6.3);
  line(142, 47, 150, 74);
  //s
  arc(167, 51, 15, 15, 2.0, 5.0);
  arc(162, 66, 15, 15, -1.3, 2.3);
  //t
  arc(187, 66, 10, 15, 1.1, 3.1);
  line(182, 66, 182, 41);
  line(177, 48, 187, 48);
  //i
  arc(200, 43, 3, 3, -6.3, 0.0);
  line(200, 48, 200, 73);
  //a
  arc(222, 59, 30, 30, 0.0, 6.3);
  line(234, 47, 242, 74);
  //n
  arc(256, 54, 20, 20, -3.1, -0.1);
  line(246, 73, 246, 43);
  line(265, 73, 265, 52);
  //N
  line(10, 100, 10, 150);
  line(10, 100, 30, 150);
  line(30, 100, 30, 150);
  //i
  arc(40, 116, 3, 3, -6.3, 0.0);
  line(40, 120, 40, 150);
  //l
  line(46, 100, 46, 150);
  //s
  arc(60, 127, 15, 15, 2.0, 5.0);
  arc(55, 142, 15, 15, -1.3, 2.3);
  //s
  arc(75, 127, 15, 15, 2.0, 5.0);
  arc(70, 142, 15, 15, -1.3, 2.3);
  //o
  arc(95, 134, 30, 30, 0, 8);
  //n
  arc(126, 129, 20, 20, -3.1, -0.1);
  line(116, 120, 116, 150);
  line(135, 129, 135, 150);
}
//Background
void drawB()
{
  background(18, 61, 148);
  strokeWeight(backgroundWeight);
  stroke(0, 0, 0);
  fill(74, 65, 47);
  triangle(546, 432, 407, 57, 59, 432);
  triangle(0, 432, 4, 230, 170, 432);
  triangle(10, 432, 58, 160, 300, 432);
  triangle(164, 432, 281, 235, 338, 432);
  triangle(76, 432, 180, 212, 268, 432);
  triangle(413, 432, 516, 134, 768, 432);
  triangle(339, 432, 421, 289, 558, 432);
  triangle(537, 432, 730, 173, 768, 432);
}
