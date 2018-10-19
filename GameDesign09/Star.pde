public class Star
{
	float x, y, size, fade, increment;
	Star(float xCord, float yCord, float starSize)
	{
		x = xCord;
		y = yCord;
		size = starSize;
		fade = random(50, 256);
		increment = 5;
	}
	void Display(color border)
	{
		if(fade >= 255 || fade <= 50)
			increment = -increment;
		fade += increment;
		stroke(border);
		fill(255, fade);
		rect(x, y, size, size);
	}

}