if object2.x >= 0
{
	draw_sprite_ext(sprite2, 0, x + vertHeight*(x - object2.x)/300, groundY, (object2.x - x)/300, 1, 0, c_white, 1 - .8*(vertHeight/231))
}
else
{
	draw_sprite_ext(sprite2, 0, x + vertHeight*(x - (object2.x + room_width))/-300, groundY, ((object2.x + room_width) - x)/-300, 1, 0, c_white, 1 - .8*(vertHeight/231))
}
//else
//{
//	draw_sprite_ext(sprite2, 0, x + (x - object2.x)/32, groundY, 1, 1, 0, c_white, 1)
//}

draw_self()

draw_text(0, 750, string(daySpd))