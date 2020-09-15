haxis = gamepad_axis_value(0, gp_axislh);
vaxis = gamepad_axis_value(0, gp_axislv);

if(abs(haxis) >= .2)
{
	image_speed = 2
	if(!place_meeting(x + round(haxis*2), y, objStone) and !crouch)
	{
		speed = haxis*(sprint + 2)
		if(abs(momentum) < 2 or sign(haxis) != sign(momentum))
		{
			momentum+= haxis*(sprint+1)*.15
		}
	}
	else
	{
		image_speed = 0	
		speed = 0
		image_index = 0
		momentum-= momentum * .1
	}

	if(haxis > 0)
	{
		image_xscale = 1
	}
	else
	{
		image_xscale = -1
	}
}
else
{
	image_speed = 0	
	speed = 0
	image_index = 0
	momentum-= momentum *.1 //sign(momentum) * .1
}

if(abs(momentum) <= .1)
{
	momentum = 0	
}
else if(!place_meeting(x + momentum, y, objStone))
{
	x+= momentum
}

if(place_meeting(x, y, objStone))
{
	x+= image_xscale *-1	
}

if(vaxis >= .2 and place_meeting(x, y + 1, objStone) and p > 0)
{
	sprite_index = 5 + p
	crouch = true
}
else if(crouch and !place_meeting(x, y - 2, objStone) and place_meeting(x, y + 1, objStone))
{
	crouch = false	
}

if(gamepad_button_check(0, gp_face1) and !place_meeting(x, y + 2, objStone))
{
	vert-=.2
}

if(!place_meeting(x, y + (vert + .4)*2, objStone))
{
	if(vert < 10)
	{
		vert+= .4
	}
}
else
{
	//while(!place_meeting(x, y + 1, objStone))
	//{
	//	y+=.5	
	//}
	for(var i = 0; i < abs(vert); i++)
	{
		if(!place_meeting(x, y + sign(vert), objStone))
		{
			y+= sign(vert)	
		}
	}
	vert = 0
	if(!crouch)
	{
		sprite_index = p*2
	}
	if(gamepad_button_check_pressed(0, gp_face1))
	{
		if(!place_meeting(x, y - 2, objStone))
		{
			vert=-4
		}
		if(!crouch)
		{
			sprite_index = p*2 + 1
		}
	}
}
y+= vert*2



if(y > 500)
{
	y = 0	
}


if(gamepad_button_check_pressed(0, gp_face3))
{
	if(activeBalls < 2 and p == 2)
	{
		activeBalls++
		var ball = instance_create_layer(x + 8 * image_xscale, y - 14, "Instances", objFire)
		ball.direction = 90 + 90 * image_xscale * -1
	}
}

if(gamepad_button_check(0, gp_face3))
{	
	sprint = true
}
else
{
	sprint = false	
}

