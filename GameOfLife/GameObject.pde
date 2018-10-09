public class GameObject
{
	float x, y, size;
	int neighbours, counter;
	int r, g, b;
	boolean alive = false;
	public GameObject(float x, float y, float size)
	{
		this.x = x;
		this.y = y;
		this.size = size;
	}
	void Display()
	{
		//if(alive)
		//{
			fill(r, g, b, counter);
			rect(this.x, this.y, this.size, this.size);
		//}
	}
	void Update()
	{
		if(alive)
		{
			counter = 255;
			r = 50;
			g = 50;
			b = 150;
			//Is there too few or too many neighbours, die
			if(neighbours < 2 || neighbours > 3)
			{
				alive = false;
				counter -= 100;
				r = 200;
				g = 50;
				b = 50;
			}
		}
		//Is there just enough neighbours, be alive
		else if(neighbours == 3)
		{
			alive = true;
			counter = 255;
			r = 50;
			g = 255;
			b = 50;
		}
		else
		{
			counter -= 100;
		}
	}
}