image_angle = direction - 45

if(abs(((direction + 360) % 360) - 270) >= 2)
{
	direction--
}

move_towards_point(lengthdir_x(1, start), lengthdir_y(1,start), 1)