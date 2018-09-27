public class LaserShot
{
	PVector position;
	PVector velocity;
	int bulletWidth;
	public LaserShot()
	{
		position = new PVector();
		velocity = new PVector();
	}
	public LaserShot(PVector pos, int offset, int bWidth)
	{
		bulletWidth = bWidth;
		position = new PVector(pos.x + offset/2 - bulletWidth/2, pos.y);
		velocity = new PVector(0, -3);
	}
	void Update()
	{
		position.add(velocity);
		if(position.y < 0)
		{
			velocity.set(0, 0);
			position.set(0, height + 20);
		}
	}
	void Display()
	{
		rect(position.x, position.y, bulletWidth, 10);
	}
}