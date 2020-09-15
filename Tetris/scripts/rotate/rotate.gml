for(var i = 0; i < 4; i++)
{
	for(var j = 0; j < 4; j++)
	{
		r[j, i] = fall[i, j]
	}
}
for(var i = 0; i < 4; i++)
{
	for(var j = 0; j < 4; j++)
	{
		fall[i, j] = r[i, 3 - j]
	}
}
