if(!place_meeting(x, y + (vert + .4)*2, objStone))
{
	if(vert < 10)
	{
		vert+= .4
	}
}
else
{
	vert = -3	
}

y+= vert*1.5

if(y > 500)
{
	instance_destroy()	
}

image_angle-= 30 * (direction / 90 * -1 + 1)

if(place_meeting(x + lengthdir_x(speed, direction), y, objStone))
{
	instance_destroy()	
}