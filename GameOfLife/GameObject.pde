public class GameObject
{
	float x, y, size;
	int neighbours, fadeCounter;
	int red, green, blue;
	boolean alive = false;

	public GameObject(float x, float y, float size)
	{
		this.x = x * size;
		this.y = y * size;
		this.size = size;
	}

	void Display()
	{
		fill(red, green, blue, fadeCounter);
		rect(this.x, this.y, this.size, this.size);
	}

	void Update()
	{
		if(alive)
		{
			fadeCounter = 255;
			red = 50;
			green = 50;
			blue = 150;
			if(neighbours < 2 || neighbours > 3)
			{
				alive = false;
				fadeCounter -= 100;
				red = 200;
				green = 50;
				blue = 50;
			}
		}
		else if(neighbours == 3)
		{
			alive = true;
			fadeCounter = 255;
			red = 50;
			green = 255;
			blue = 50;
		}
		else
		{
			fadeCounter -= 100;
		}
	}
	
}