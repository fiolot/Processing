class Zombie extends Human
{
	public Zombie(float zombieSpeed)
	{
		super(zombieSpeed * 0.8f);
		zombie = true;
	}
	public Zombie(PVector pos, PVector dir, float moveSpeed)
	{
		position = pos;
		direction = dir;
		speed = moveSpeed * 0.8f;
		zombie = true;
	}
	void Display()
	{
		fill(0, 255, 0);
		ellipse(position.x, position.y, 5, 5);
	}
}