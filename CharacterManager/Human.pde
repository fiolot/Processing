class Human
{
	PVector position;
	PVector direction;
	float speed;
	boolean zombie;
	public Human()
	{

	}
	public Human(float moveSpeed)
	{
		position = new PVector();
		position.x = random(width);
		position.y = random(height);
		direction = new PVector();
		speed = moveSpeed;
		direction.x = random(-1, 1) * speed;
		direction.y = random(-1, 1) * speed;
		zombie = false;
	}
	public Human(PVector pos, PVector dir, float moveSpeed)
	{
		position = pos;
		direction = dir;
		speed = moveSpeed;
		zombie = false;
	}
	void Display()
	{
		fill(128);
		ellipse(position.x, position.y, 5, 5);
	}
	void Move()
	{
		position.add(direction);
		if(position.x > width || position.x < 0)
			position.x = int(width - position.x);
		if(position.y > height || position.y < 0)
			position.y = int(height - position.y);
	}
}