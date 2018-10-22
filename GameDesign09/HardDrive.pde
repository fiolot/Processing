public class HardDrive
{
	PVector pos;
	float x, y, objectSize;

	public HardDrive(float xCord, float yCord, float size)
	{
		x = xCord;
		y = yCord;
		pos = new PVector(xCord, yCord);
		objectSize = size;
	}
	void Display(color border)
	{
		fill(96);
		stroke(border);
		rect(x, y, objectSize, objectSize/1.5f);
		//Disk
		ellipseMode(CENTER);
		fill(128);
		stroke(128);
		ellipse(x + objectSize/3.2f, y + objectSize/3, objectSize/2, objectSize/2);
		fill(0);
		stroke(0);
		ellipse(x + objectSize/3.2f, y + objectSize/3, objectSize/12, objectSize/12);
		//Reader
		ellipse(x + objectSize/1.3f, y + objectSize/6, objectSize/5, objectSize/5);
		line(x + objectSize/2.2f, y + objectSize/3, x + objectSize/1.3f, y + objectSize/5);
		line(x + objectSize/2.2f, y + objectSize/3, x + objectSize/1.3f, y + objectSize/16);
	}
}