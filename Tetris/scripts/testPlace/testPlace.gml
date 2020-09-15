var shouldPlace = 0
for(var j = 3; j >= 0; j--)
{
	for(var i = 0; i < 4; i++)
	{
		if(fall[i, j] != 0 and (position_meeting(objController.x + (i-2)*16 + 8, objController.y - j*16 + 8, objBlock) or objController.y - j*16 >= 320))
		{
			shouldPlace = 1
		}
	}
}
return shouldPlace
