PVector lineGuess = new PVector(0, 0), mouseGuess = new PVector(0, 0), difference = new PVector(0, 0);
boolean guessed = false;
PFont f;
void setup()
{
	f = createFont("Arial", 16, true);
	textFont(f, 16);
	size(480, 480);
	stroke(0);
	fill(0);
	background(255);
	lineGuess.set(int(random(0, width)), int(random(0, height)));
	text("X: " + lineGuess.x + " Y: " + lineGuess.y, 10, 16);
	println(lineGuess);
}
void draw()
{

	if(mousePressed && !guessed)
	{
		guessed = true;
		mouseGuess.set(mouseX, mouseY);
		stroke(255, 0, 0);
		fill(255, 0, 0);
		line(0, 0, mouseGuess.x, mouseGuess.y);
		ellipse(mouseGuess.x, mouseGuess.y, 4, 4);
		stroke(0, 255, 0);
		fill(0, 255, 0);
		line(0, 0, lineGuess.x, lineGuess.y);
		ellipse(lineGuess.x, lineGuess.y, 4, 4);
		stroke(0);
		line(lineGuess.x, lineGuess.y, mouseGuess.x, mouseGuess.y);
		mouseGuess.sub(lineGuess);
		println(mouseGuess.mag());
		fill(0);
		text("Score: " + int(1000/log(mouseGuess.mag())), 10, height - 16);
	}
	if(keyPressed && guessed)
	{
		guessed = false;
		background(255);
		lineGuess.set(int(random(0, width)), int(random(0, height)));
		fill(0);
		text("X: " + lineGuess.x + " Y: " + lineGuess.y, 10, 16);

	}
}