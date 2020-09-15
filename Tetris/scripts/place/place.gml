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
tetris = 0
for(var j = 19; j >= 0; j--)
{
	var lineTest = 1
	for(var i = 0; i < 10; i++)
	{
		if(!position_meeting(i*16, j*16, objBlock))
		{
			lineTest = 0
			//break
		}
	}
	if(lineTest)
	{
		s += 100
		j++
		tetris++
		for(var i = 0; i < 10; i++)
		{
			instance_destroy(instance_position(i*16, j*16, objBlock))
		}
		for(var i = 0; i < instance_number(objBlock); i++)
		{
			var block = instance_find(objBlock, i)
			if(block.y < j*16)
			{
				block.y+=16
			}
		}
	}
}