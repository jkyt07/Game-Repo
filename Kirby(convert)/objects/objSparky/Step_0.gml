kirbDir = point_direction(objKirbo.x,objKirbo.y, x, y)

if kill
{
	//if killDir = 1
	//{
	//	direction = 30	
	//}
	//else
	//{
	//	direction = 120	
	//}
	speed = 3
	sprite_index = sprSparkyDie
	
	if alarm[11] <= 0
	{
		alarm[11] = 20	
	}
}
else if suck and point_distance(x,y, objKirbo.x, objKirbo.y) <= 60 and (kirbDir <= 90 or kirbDir >= 270) = (objKirbo.image_xscale+1)/2
{
	direction = point_direction(x,y, objKirbo.x, objKirbo.y)
	speed = 3
	sprite_index = sprSparkyDie
	layer = layer_get_id("InstancesB")
	
	if point_distance(x,y, objKirbo.x, objKirbo.y) <= 3
	{
		mouth = object_get_name(self)
		suck = false
		instance_destroy()	
	}
}
else
{
	if speed != 0
	{
		speed = 0
		while place_meeting(x, y, objSolid)
		{
			x-=lengthdir_x(1, direction)	
			y-=lengthdir_y(1, direction)	
		}
		sprite_index = sprSparky
	}
	
	if vertSpd != 0
	{
		if !place_meeting(x+wlkSpd*image_xscale*-1, y, objSolid)
		{
			x+=wlkSpd*image_xscale*-1
		}
	
		if !place_meeting(x, y-vertSpd, objSolid)
		{
			y-=vertSpd
		}
		else
		{
			while(!place_meeting(x, y-2*sign(vertSpd), objSolid))
			{
				y-=sign(vertSpd)	
			}
			vertSpd = 0
			alarm[1] = 60
		}
	}

	if alarm[0] <= 0 and !place_meeting(x, y+1, objSolid)
	{
		alarm[0] = grv	
	}
}