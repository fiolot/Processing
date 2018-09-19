PVector lineGuess = new PVector(0, 0), mouseGuess = new PVector(0, 0);
boolean guessed = false;
void setup()
{
	size(480, 480);
	stroke(0);
	lineGuess.set(int(random(0, width)), int(random(0, height)));
	println(lineGuess);
}
void draw()
{
	if(mousePressed && !guessed)
	{
		guessed = true;
		mouseGuess.set(mouseX, mouseY);
		line(0, 0, mouseGuess.x, mouseGuess.y);
	}
}