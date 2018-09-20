//Human[] people;
Manager classManager;
float humanSpeed = 5;
void setup()
{
	size(720, 720);
	classManager = new Manager(100, humanSpeed);
}
void draw()
{
	background(255);
	classManager.Update();
}