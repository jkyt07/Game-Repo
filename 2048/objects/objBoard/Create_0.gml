randomize()
for(var i = 0; i < 4; i++)
{
	for(var j = 0; j < 4; j++)
	{
		board[i, j] = 0	
	}
}
rx = irandom_range(0, 3)
ry = irandom_range(0, 3)
board[rx, ry] = irandom_range(1,2)*2
while(board[rx, ry] != 0)
{
	rx = irandom_range(0, 3)
	ry = irandom_range(0, 3)
}
board[rx, ry] = irandom_range(1,2)*2
c_lttan = make_color_rgb(204, 166, 102)
c_tan = make_color_rgb(178, 138, 71)
fill = 2