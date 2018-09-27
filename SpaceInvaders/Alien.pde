class Alien
{
	PVector alienPos;
	PVector alienDir;
	boolean dead = false;
	LaserShot[] laserShots;
	public Alien(PVector pos, boolean inDead, LaserShot[] shots)
	{
		laserShots = shots;
		alienPos = pos;
		alienDir = new PVector(0, 1);
		dead = inDead;
	}
	boolean Hit()
	{
		for(int i = 0; i < 5; i++)
		{
			if(shots[i].position.x > alienPos.x - 6 && shots[i].position.x < alienPos.x)
			{
				if(shots[i].position.y > alienPos.y - 10 && shots[i].position.y < alienPos.y)
					return true;
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
		if(Hit())
		{
			alienDir = new PVector();
			alienPos = new PVector(-20, -20);
		}
	}
}