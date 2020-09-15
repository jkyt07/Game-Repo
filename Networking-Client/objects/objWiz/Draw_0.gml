if clientId = 0
{
	draw_rectangle_color(0,0,window_get_width(),window_get_height(),c_blue,c_blue,c_blue,c_blue,0)
}
else if clientId = 1
{
	draw_rectangle_color(0,0,window_get_width(),window_get_height(),c_red,c_red,c_red,c_red,0)	
}
draw_sprite_ext(player.sprite_index, player.image_index,x,y,imgScale,imgScale,0,c_white,1)