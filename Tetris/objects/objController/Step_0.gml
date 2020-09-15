if(!falling)
{
	if(position_meeting(x, y, objBlock) or position_meeting(x-1, y, objBlock))
	{
		lose = 1	
	}
	else
	{
		blk = nxtBlk
		nxtBlk = irandom_range(0, 6)
		getBlock(blk)
		falling = 1
		didHeld = 0
	}
	
	
}
else
{
	if(keyboard_check_pressed(ord("W")))
	{
		rotate()
		if(testPlace())
		{
			place()	
		}
	}
	if(falling and downC >= downCMax or (keyboard_check(ord("S")) and downC >= downCMax / 4))
	{
		if(testPlace())
		{
			place()	
		}
		else
		{
			downC = 0
			y+=16
		}
	}
	downC++
	
	if(keyboard_check_pressed(vk_space))
	{
		while(falling)
		{
			y+=16
		
			if(testPlace() or y >= 320)
			{
				for(var i = 0; i < 4; i++)
				{
					for(var j = 0; j < 4; j++)
					{
						if(fall[i, j] != 0)
						{
							fall[i, j].x = x + (i-2)*16 + 8
							fall[i, j].y = y - j*16 - 8
						}
					}
				}
				falling = 0
				y = 16
				x = 64
			}
		}
	}
	else if(keyboard_check_pressed(ord("A")) and !testRight())
	{
		x-=16	
	}
	else if(keyboard_check_pressed(ord("D")) and !testLeft())
	{
		x+=16	
	}
	else if(keyboard_check_pressed(ord("C")) and falling and !didHeld)
	{
		if(held != -1)
		{
			getBlock(held)
			blk = held
			held = -1
		}
		else
		{
			held = blk
			while (nxtBlk == blk)
			{
				nxtBlk = irandom_range(0, 6)
			}
			blk = nxtBlk
			nxtBlk = irandom_range(0, 6)
			getBlock(blk)
		}
		
		y = 16
		x = 64
		didHeld = 1
	}
}