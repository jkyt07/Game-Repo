if(keyboard_check_pressed(vk_space))
{
	var arrow = instance_create_layer(x,y,"Instances", objArrow)	
	arrow.direction = point_direction(x,y, mouse_x, mouse_y)
	arrow.start = point_direction(x,y, mouse_x, mouse_y)
}