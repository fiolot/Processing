PFont title, slogan;
void setup()
{
	title = createFont("Bad Signal.otf", 32);
	slogan = createFont("Demonized.ttf", 32);
	size(512, 512);
}
void draw()
{
 	 background(255);
	textFont(title, 80);
	fill(0);
	text("Cyberium", 30, 100);
	textFont(slogan, 32);
	text("Slogan", 80, 220);
}
