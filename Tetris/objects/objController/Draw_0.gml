var lowest = 20
for(var i = 0; i < 4; i++)
{
	for(var j = 0; j < 4; j++)
	{
		if(fall[i, j] != 0 and instance_exists(fall[i, j]))
		{
			draw_sprite_ext(fall[i, j].sprite_index, 0, x + (i-2)*16 + 8, y - j*16 - 8, 2, 2, 0, c_white, 1)
			//for(var r = 19; r > 0; r++)
			//{
			//	if(position_meeting(i*16, r*16, objBlock))
			//	{
			//		lowest = r
			//	}
			//}
		}
	}
}

if(lose)
{
	draw_text_transformed(32, 64, "You Lose!", 1.25, 1.25, 0)	
}

if (tetris >= 4)
{
	draw_text_transformed(32, 64, "Tetris!", 1.25, 1.25, 0)
}