var moveHoriz = (keyboard_check(ord("D")) + keyboard_check(vk_right)) - (keyboard_check(ord("A")) + keyboard_check(vk_left))
var moveVert = -sign((keyboard_check(ord("S")) + keyboard_check(vk_down)) - (keyboard_check(ord("W")) + keyboard_check(vk_up)))
var moveVertPressed = -sign((keyboard_check_pressed(ord("S")) + keyboard_check_pressed(vk_down)) - (keyboard_check_pressed(ord("W")) + keyboard_check_pressed(vk_up)))


if moveHoriz != 0 and sprIndex != sprKirbySuckStart and sprIndex != sprKirbySuck and sprIndex != sprKirbyDuck and sprIndex != sprKirbyFullSwallow
{
	if !place_meeting(x+moveHoriz*wlkSpd, y, objSolid)
	{
		x+=moveHoriz*wlkSpd
	}
	else
	{
		while !place_meeting(x+2*sign(moveHoriz), y, objSolid)
		{
			x+=sign(moveHoriz)
			show_debug_message("Stuck horiz")
		}
	}
	if sprIndex = sprKirbyDef or sprIndex = sprKirbyFull
	{
		sprite_index = sprIndex + 1
	}
		
	image_speed = 1
	image_xscale = sign(moveHoriz)*imageScale
}

if (moveHoriz = 0 or place_meeting(x+sign(moveHoriz), y, objSolid)) and (sprIndex < sprKirbyFullSwallow or sprIndex = sprKirbyFlyDef)
{
	sprite_index = sprIndex
	image_speed = 0	
}


if moveVertPressed > 0 and sprIndex != sprKirbyFullSwallow
{
	if place_meeting(x, y+1, objSolid) and sprIndex < sprKirbyFlyDef
	{
		vertSpd = 5	
		if mouth = 0
		{
			sprIndex = sprKirbyJump
		}
		else
		{
			sprIndex = sprKirbyFullJump
			image_speed = 1
			image_index = 0
		}
		sprite_index = sprIndex
	}
	else if mouth = 0
	{
		//if vertSpd < 0 then vertSpd = 0
		vertSpd = 4 - (sprIndex >= sprKirbyFlyDef)
		grvSpd = 10
		sprIndex = sprKirbyFly
		sprite_index = sprIndex
		image_speed = 1
	}
}

vertSpd = clamp(vertSpd, -8, 8)
if !place_meeting(x, y-vertSpd, objSolid)
{
	y-=vertSpd
}
else if sprIndex < sprKirbyFlyDef and sprIndex != sprKirbyFullSwallow
{
	while(!place_meeting(x, y-sign(vertSpd)+1, objSolid))
	{
		y-=sign(vertSpd)
		show_debug_message("Stuck vert")
	}
	//y-=vertSpd
	if vertSpd < -5 and mouth = 0
	{
		vertSpd = -.5*vertSpd
	}
	else
	{
		vertSpd = 0	
	}
	grvSpd = 3
	grv = 1
	
	if mouth = 0
	{
		sprIndex = sprKirbyDef
	}
	else
	{
		sprIndex = sprKirbyFull
	}
	sprite_index = sprIndex
}
else
{
	vertSpd = 0	
}

if !place_meeting(x, y+1, objSolid)
{
	if alarm[0] <= 0
	{
		alarm[0] = grvSpd
	}
}
else if keyboard_check(vk_space) and sprIndex != sprKirbyFly and mouth = 0
{
	if !noSuck
		suck = true
	image_speed = 1
	if sprIndex != sprKirbySuck
	{
		if sprIndex != sprKirbySuckStart
		{
			sprIndex = sprKirbySuckStart
			sprite_index = sprIndex
		}
		else if image_index > 0 and image_index >= image_number - 1
		{
			sprIndex = sprKirbySuck
			sprite_index = sprIndex
		}
	}
	
}
else if keyboard_check(ord("S"))
{
	if mouth = 0
	{
		sprIndex = sprKirbyDuck
		sprite_index = sprIndex	
	}
	else if sprIndex != sprKirbyFullSwallow
	{
		sprIndex = sprKirbyFullSwallow
		sprite_index = sprIndex
		image_speed = 1
	}
}
else
{
	if sprIndex = sprKirbySuck
	{
		if mouth != 0
		{
			sprIndex = sprKirbyFull
			sprite_index = sprIndex
		}
		else
		{
			sprIndex = sprKirbySuckStart
			sprite_index = sprIndex	
			image_speed = -1
		}
	}
	else if sprIndex = sprKirbySuckStart //and image_number >= 0
	{
		suck = false
		
		if mouth = 0
		{
			sprIndex = sprKirbyDef
		}
		else
		{
			sprIndex = sprKirbyFull
		}
		sprite_index = sprIndex	
		//image_speed = 0
	}
}

if keyboard_check_pressed(vk_space) and mouth != 0
{
	mouth = 0
	sprIndex = sprKirbySuckStart
	sprite_index = sprIndex	
	image_speed = -1
		
	instance_create_layer(x + 5*image_xscale, y, "InstancesA", objStar)
		
	noSuck = true
}

if sprIndex >= sprKirbyFlyDef
{
	if image_index > 0 and image_index > image_number - 1
	{
		if sprIndex = sprKirbyFlyBlow
		{
			sprIndex = sprKirbyFall
			sprite_index = sprIndex
			image_index = 0
		}
		else
		{
			sprIndex = sprKirbyFlyDef
			sprite_index = sprIndex
		}
	}
	
	if keyboard_check_pressed(vk_space)
	{
		sprIndex = sprKirbyFlyBlow
		sprite_index = sprIndex
		image_index = 0
		image_speed = 1
		if vertSpd > 0 then vertSpd = 0
		grvSpd = 3
		grv = 1
	}
}
//else
//{
//	vertSpd = 0
//	alarm[0] = 0
//}

if sprIndex = sprKirbyFullSwallow and image_index > image_number - 1
{
	
	mouth = 0
	sprIndex = sprKirbyDef
	sprite_index = sprIndex
	
}

if vertSpd < 0 and sprIndex < sprKirbyFlyDef and sprIndex != sprKirbyFullSwallow
{
	//if  //or vertSpd <= -7
	{
		if mouth = 0
		{
			sprIndex = sprKirbyFall
		}
		else if sprIndex != sprKirbyFullFall
		{
			sprIndex = sprKirbyFullFall
			image_speed = 1
			image_index = 0
		}
		sprite_index = sprIndex	
	
		if vertSpd <= -7
		{
			image_index = 1	
		}
	}
}

if place_meeting(x, y, objSolid)
{
	show_debug_message("Cur Pos: " + string(x) + " " + string(y) + "\nPev Pos: " + string(prevPos[0]) + " " + string(prevPos[1]))
	x = prevPos[0]
	y = prevPos[1]
	
}

if keyboard_check_released(vk_space)
noSuck = false

prevPos[0] = x
prevPos[1] = y

if(keyboard_check_pressed(ord("K")))
    current_pal++;
if(keyboard_check_pressed(ord("J")))
    current_pal--;

current_pal=wrap(current_pal,0,pal_swap_get_pal_count(sprKirbPal)-1);