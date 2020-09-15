for(var j = 3; j >= 0; j--)
{
	for(var i = 0; i < 4; i++)
	{
		if(fall[i, j] != 0 and (x + (i-2)*16 + 24 >= 160 or position_meeting(x + (i-2)*16 + 24, y - j*16 - 8, objBlock)))
		{
			return true
		}
	}
}
return false