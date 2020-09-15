for(var i = 0; i < 4; i++)
{
	for(var j = 0; j < 4; j++)
	{
		str = string(board[i, j])
		switch(board[i, j])
		{
			case 2:
				draw_rectangle_color(i*138 + 10, j*138 + 10, i*138 + 138, j*138 + 138, c_lttan, c_lttan, c_lttan, c_lttan, 0)
				break
			case 4:
				draw_rectangle_color(i*138 + 10, j*138 + 10, i*138 + 138, j*138 + 138, c_tan, c_tan, c_tan, c_tan, 0)
				break
			case 8:
				draw_rectangle_color(i*138 + 10, j*138 + 10, i*138 + 138, j*138 + 138, c_orange, c_orange, c_orange, c_orange, 0)
				break
			case 16:
				draw_rectangle_color(i*138 + 10, j*138 + 10, i*138 + 138, j*138 + 138, c_orange, c_orange, c_orange, c_orange, 0)
				break
			case 32:
				draw_rectangle_color(i*138 + 10, j*138 + 10, i*138 + 138, j*138 + 138, c_red, c_red, c_red, c_red, 0)
				break
			case 64:
				draw_rectangle_color(i*138 + 10, j*138 + 10, i*138 + 138, j*138 + 138, c_red, c_red, c_red, c_red, 0)
				break
			case 128:
				draw_rectangle_color(i*138 + 10, j*138 + 10, i*138 + 138, j*138 + 138, c_black, c_black, c_black, c_black, 0)
				break
			case 256:
				draw_rectangle_color(i*138 + 10, j*138 + 10, i*138 + 138, j*138 + 138, c_black, c_black, c_black, c_black, 0)
				break
			case 512:
				draw_rectangle_color(i*138 + 10, j*138 + 10, i*138 + 138, j*138 + 138, c_black, c_black, c_black, c_black, 0)
				break
			case 1024:
				draw_rectangle_color(i*138 + 10, j*138 + 10, i*138 + 138, j*138 + 138, c_black, c_black, c_black, c_black, 0)
				break
			case 2048:
				draw_rectangle_color(i*138 + 10, j*138 + 10, i*138 + 138, j*138 + 138, c_black, c_black, c_black, c_black, 0)
				draw_rectangle_color(200,200, 300, 300, c_black, c_black, c_black, c_black, 0)	
				draw_text_transformed(220, 240, "You Win!", 3, 3, 0)
				break
		}
		if(board[i, j] > 2048)
		{
			draw_rectangle_color(i*138 + 10, j*138 + 10, i*138 + 138, j*138 + 138, c_black, c_black, c_black, c_black, 0)
		}
		if(board[i, j] != 0)
		{
			draw_text_transformed(i*138 + 64 - (string_length(str)-1)*8, j*138 + 54, str,2, 2, 0)
		}
	}
}

if(fill >= 16)
{
	draw_rectangle_color(0,0,1000,1000, c_black, c_black, c_black, c_black, 0)	
	draw_text_transformed(220, 240, "You Lose!", 3, 3, 0)
}