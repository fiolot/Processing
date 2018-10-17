GameObject cells[][];
float cellSize;
int colums, rows;
float fillPercentage = 15;

void setup()
{
	fullScreen();
	//size(512, 512);
	frameRate(5);
	cellSize = 4 ;
	colums = (int)Math.floor(width/cellSize);
	rows = (int)Math.floor(height/cellSize);
	cells = new GameObject[colums][rows];
	//Create game objects
	for (int x = 0; x < colums; ++x)
	{
		for(int y = 0; y < rows; y++)
		{
			cells[x][y] = new GameObject(x, y, cellSize);
			if(random(0, 100) < fillPercentage)
			{
				cells[x][y].alive = true;
			}
		}
	}
}

void draw()
{
	background(0);
	NeighbourCount();
	for (int x = 0; x < colums; ++x)
	{
		for (int y = 0; y < rows; ++y)
		{
			cells[x][y].Display();
			cells[x][y].Update();
		}
	}
}

void NeighbourCount()
{
	for (int x = 0; x < colums; ++x)
	{
		for (int y = 0; y < rows; ++y)
		{
			cells[x][y].neighbours = 0;
			for (int deltaX = -1; deltaX < 2; ++deltaX)
			{
				int neighbourX = x + deltaX;
				for (int deltaY = -1; deltaY < 2; ++deltaY)
				{
					int neighbourY = y + deltaY;
					//If out of bounds, check from beginning/end
					if(neighbourX >= colums)
						neighbourX = 0;
					else if(neighbourX < 0)
						neighbourX = colums - 1;
					if(neighbourY >= rows)
						neighbourY = 0;
					else if(neighbourY < 0)
						neighbourY = rows - 1;
					if(cells[neighbourX][neighbourY].alive)
					{
						if(neighbourX == x && neighbourY == y)
							continue;
						cells[x][y].neighbours++;
					}
				}
			}
		}
	}
}