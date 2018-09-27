
void PlayerController()
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
	if(pPos.x > width - shipLength || pPos.x < 0)
	{
		pPos.x = width * int(pPos.x/(width - shipLength)) - shipLength * int(pPos.x/(width - shipLength));
	}
	if(isSpace && once)
	{
		once = false;
		//shot = new LaserShot(pPos, shipLength, bulletWidth);
		switch(bulletIndex)
		{
			case 0:
				shots[bulletIndex] = new LaserShot(pPos, shipLength, bulletWidth);
				bulletIndex += 1;
				break;
			case 1:
				shots[bulletIndex] = new LaserShot(pPos, shipLength, bulletWidth);
				bulletIndex += 1;
				break;
			case 2:
				shots[bulletIndex] = new LaserShot(pPos, shipLength, bulletWidth);
				bulletIndex += 1;
				break;
			case 3:
				shots[bulletIndex] = new LaserShot(pPos, shipLength, bulletWidth);
				bulletIndex += 1;
				break;
			case 4:
				shots[bulletIndex] = new LaserShot(pPos, shipLength, bulletWidth);
				bulletIndex = 0;
				break;
		}
	}
}
void keyPressed()
{
	keyPress(keyCode, true);
	println("Pressed");
}
void keyReleased()
{
	keyPress(keyCode, false);
	println("Not pressed");
}
boolean keyPress(int k, boolean pressed)
{
	switch(k)
	{
		case 32:
			if(!pressed)
				once = true;
			return isSpace = pressed;
		case 37:
			return isLeft = pressed;
		case 39:
			return isRight = pressed;
		default:
			return pressed;	
	}
}