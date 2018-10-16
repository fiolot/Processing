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
	//Display first and update game objects afterwards
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
			//Scan surrounding for neighbours
			for (int i = -1; i < 2; ++i)
			{
				int tempX = x + i;
				for (int j = -1; j < 2; ++j)
				{
					int tempY = y + j;
					//If out of bounds, check from beginning/end
					if(tempX >= colums)
						tempX = 0;
					else if(tempX < 0)
						tempX = colums - 1;
					if(tempY >= rows)
						tempY = 0;
					else if(tempY < 0)
						tempY = rows - 1;
					if(cells[tempX][tempY].alive)
					{
						//Skip counting neighbour if it's itself
						if(x+i == x && y+j == y)
							continue;
						cells[x][y].neighbours++;
					}
				}
			}
		}
	}
}