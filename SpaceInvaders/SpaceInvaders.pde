boolean isLeft = false, isRight = false, isSpace = false;
PVector pDir, pPos;
int shipLength, shipDepth, shipSpeed;
void setup()
{
  size(480, 800);
  pDir = new PVector(0, 0);
  shipSpeed = 5;
  shipLength = 40;
  shipDepth = 40;
  pPos = new PVector((width - shipLength)/2, height - shipDepth - 20);
  fill(255);
}
void draw()
{
  background(0);
  PlayerOne();
  rect(pPos.x, pPos.y, shipLength, shipDepth);
  println(pPos);
}
void PlayerOne()
{
	if(isLeft)
	{
		pDir.x = -1;
		pDir.mult(shipSpeed);
		pPos.add(pDir);
	}
	if(isRight)
	{
		pDir.x = 1;
		pDir.mult(shipSpeed);
		pPos.add(pDir);
	}
	if(!isLeft && !isRight)
	{
		pDir.x = 0;
	}
}
void keyPressed()
{
	keyPress(keyCode, true);
}
void keyReleased()
{
	keyPress(keyCode, false);
}
boolean keyPress(int k, boolean pressed)
{
	switch(k)
	{
		case 32:
			isSpace = pressed;
		case 37:
			isLeft = pressed;
		case 39:
			isRight = pressed;
		default:
			return pressed;	
	}
}
class Alien
{
	PVector alienPos;
	PVector alienDir;
	int id;
	boolean dead = false;
	Alien(int inId, boolean inDead)
	{
		id = inId;
		dead = inDead;
	}
	void Hit()
	{
		;
	}
}