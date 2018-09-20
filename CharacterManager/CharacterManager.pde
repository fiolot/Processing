Human[] people;
float speed = 5;
void setup()
{
	size(720, 720);
	people = new Human[100];
	for(int i = 0; i < 100; i++)
	{
		if(i == 0)
			people[i] = new Zombie(speed);
		else
		people[i] = new Human(speed);
	}
}
void draw()
{
	background(255);
	for (int i = 0; i < 100; ++i)
	{
		for (int j = i + 1; j < 100; ++j)
		{
			boolean collide = Collision(people[i].position, people[j].position, 5);
			if(collide)
			{
				people[j] = new Zombie(people[j].position, people[j].direction, speed);
			}
		}
	}
	for (int i = 0; i < 100; i++)
	{
		people[i].Move();
		people[i].Display();
	}
}