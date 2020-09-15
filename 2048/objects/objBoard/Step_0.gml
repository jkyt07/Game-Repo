var maxE = -1
var stop = 0
if(keyboard_check_pressed(ord("S")))
{
	for(var j = 2; j >= 0; j--)
	{
		for(var i = 0; i < 4; i++)
		{
			if(board[i, j] != 0)
			{
				maxE = -1
				stop = 0
				for(var n = j+1; n < 4; n++)
				{
					if(board[i, n] == 0 and !stop)
					{
						maxE = n
					}
					else if(!stop)
					{
						stop = 1
						if(board[i, j] == board[i, n])
						{
							maxE = -1
							board[i, n]*= 2
							board[i, j] = 0
							fill--
						}
					}
				}
				if(maxE != -1)
				{
					board[i, maxE] = board[i, j]
					board[i, j] = 0
				}
			}
		}
	}
	if(fill < 16)
	{
		fill++
		rx = irandom_range(0, 3)
		ry = irandom_range(0, 3)
		while(board[rx, ry] != 0)
		{
			rx = irandom_range(0, 3)
			ry = irandom_range(0, 3)
		}
		board[rx, ry] = irandom_range(1,2)*2
	}
}
else if(keyboard_check_pressed(ord("W")))
{
	for(var j = 1; j < 4; j++)
	{
		for(var i = 0; i < 4; i++)
		{
			if(board[i, j] != 0)
			{
				maxE = -1
				stop = 0
				for(var n = j-1; n >= 0; n--)
				{
					if(board[i, n] == 0 and !stop)
					{
						maxE = n
					}
					else if(!stop)
					{
						stop = 1
						if(board[i, j] == board[i, n])
						{
							maxE = -1
							board[i, n]*= 2
							board[i, j] = 0
							fill--
						}
					}
				}
				if(maxE != -1)
				{
					board[i, maxE] = board[i, j]
					board[i, j] = 0
				}
			}
		}
	}
	if(fill < 16)
	{
		fill++
		rx = irandom_range(0, 3)
		ry = irandom_range(0, 3)
		while(board[rx, ry] != 0)
		{
			rx = irandom_range(0, 3)
			ry = irandom_range(0, 3)
		}
		board[rx, ry] = irandom_range(1,2)*2
	}
}
else if(keyboard_check_pressed(ord("D")))
{
	for(var i = 2; i >= 0; i--)
	{
		for(var j = 0; j < 4; j++)
		{
			if(board[i, j] != 0)
			{
				maxE = -1
				stop = 0
				for(var n = i+1; n < 4; n++)
				{
					if(board[n, j] == 0 and !stop)
					{
						maxE = n
					}
					else if(!stop)
					{
						stop = 1
						if(board[i, j] == board[n, j])
						{
							maxE = -1
							board[n, j]*= 2
							board[i, j] = 0
							fill--
						}
					}
				}
				if(maxE != -1)
				{
					board[maxE, j] = board[i, j]
					board[i, j] = 0
				}
			}
		}
	}
	if(fill < 16)
	{
		fill++
		rx = irandom_range(0, 3)
		ry = irandom_range(0, 3)
		while(board[rx, ry] != 0)
		{
			rx = irandom_range(0, 3)
			ry = irandom_range(0, 3)
		}
		board[rx, ry] = irandom_range(1,2)*2
	}
}
else if(keyboard_check_pressed(ord("A")))
{
	for(var i = 1; i < 4; i++)
	{
		for(var j = 0; j < 4; j++)
		{
			if(board[i, j] != 0)
			{
				maxE = -1
				stop = 0
				for(var n = i-1; n >= 0; n--)
				{
					if(board[n, j] == 0 and !stop)
					{
						maxE = n
					}
					else if(!stop)
					{
						stop = 1
						if(board[i, j] == board[n, j])
						{
							maxE = -1
							board[n, j]*= 2
							board[i, j] = 0
							fill--
						}
					}
				}
				if(maxE != -1)
				{
					board[maxE, j] = board[i, j]
					board[i, j] = 0
				}
			}
		}
	}
	if(fill < 16)
	{
		fill++
		rx = irandom_range(0, 3)
		ry = irandom_range(0, 3)
		while(board[rx, ry] != 0)
		{
			rx = irandom_range(0, 3)
			ry = irandom_range(0, 3)
		}
		board[rx, ry] = irandom_range(1,2)*2
	}
}