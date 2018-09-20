boolean Collision(PVector pos1, PVector pos2, int size)
{
	if(abs(pos1.x - pos2.x) > size || abs(pos1.y - pos2.y) > size * 2)
		return false;
	else
		return true;
}