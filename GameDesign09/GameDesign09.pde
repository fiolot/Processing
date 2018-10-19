PFont title, slogan;
color primaryColor;
color secondaryColor1, secondaryColor2, secondaryColor3;
Star[] stars;
void setup()
{
	title = createFont("Bad Signal.otf", 32);
	slogan = createFont("Demonized.ttf", 32);
	size(680, 720);
	Stars(50);
}
void draw()
{
	primaryColor = color(3, 6, 30);
	secondaryColor2 = color(54, 74, 4);
	secondaryColor1 = color(74, 4, 9);
	secondaryColor3 = color(0, 0, 0);
 	background(primaryColor);
	for (Star star : stars)
	{
		star.Display(primaryColor);
	}
	textFont(title, 190);
	fill(0);
	text("Cyberium", 15, 420);
	fill(secondaryColor1);
	text("Cyberium", 15, 410);
	textFont(slogan, 32);
  fill(0);
  text("There will NEVER be enough sp- \n                                              ace."
  , 20, 553);
	fill(secondaryColor2);
	text("There will NEVER be enough sp- \n                                              ace."
  , 20, 550);
}
void Stars(int amount)
{
	stars = new Star[amount];
	for (int i = 0; i < amount; ++i)
	{
		stars[i] = new Star(random(0, width), random(0, height), random(1, 4));
	}
}
