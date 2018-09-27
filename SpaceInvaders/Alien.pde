class Alien
{
	PVector alienPos;
	PVector alienDir;
	boolean dead = false;
	LaserShot[] laserShots;
	int maxShots;
	public Alien(PVector pos, boolean inDead, LaserShot[] shots, int max)
	{
		laserShots = shots;
		alienPos = pos;
		alienDir = new PVector(2, 0);
		dead = inDead;
		maxShots = max;
	}
	boolean Hit()
	{
		for(int i = 0; i < maxShots; i++)
		{
			if(shots[i].position.x >= alienPos.x - 6 && shots[i].position.x <= alienPos.x + 15)
			{
				if(shots[i].position.y > alienPos.y - 10 && shots[i].position.y < alienPos.y + 15)
				{
					shots[i].position = new PVector(0, height + 20);
					shots[i].velocity = new PVector();
					return true;
				}
			}
		}
		return false;
	}
	void Display()
	{
		rect(alienPos.x, alienPos.y, 15, 15);
	}
	void Update()
	{
		alienPos.add(alienDir);
		if(alienPos.x > width - 15 || alienPos.x < 0)
		{
			alienDir.x *= -1;
			alienPos.y += 15;
		}
		if(Hit())
		{
			alienDir = new PVector();
			alienPos = new PVector(-20, -20);
			dead = true;
		}
	}
}