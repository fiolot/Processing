public class Manager 
{
	Human[] people;
	float speed;
	int amount;
	public Manager (int number, float moveSpeed)
	{
		amount = number;
		speed = moveSpeed;
		people = new Human[amount];
		for(int i = 0; i < amount; i++)
		{
			if(i == 0)
				people[i] = new Zombie(speed);
			else
				people[i] = new Human(speed);
		}
	}
	void Update()
	{
		for (int i = 0; i < amount; ++i)
		{
			people[i].Move();
			for (int j = i + 1; j < amount; ++j)
			{
				boolean collide = Collision(people[i].position, people[j].position, 5);
				if(collide)
				{
					people[j] = new Zombie(people[j].position, people[j].direction, humanSpeed);
				}
			}
		}
		for(int i = 0; i < amount; i++)
		{
			people[i].Display();
		}
	}
	boolean Collision(PVector pos1, PVector pos2, int size)
	{
		if(abs(pos1.x - pos2.x) > size || abs(pos1.y - pos2.y) > size * 2)
			return false;
		else
			return true;
	}
}