keyLeft = keyboard_check(ord("A"))
keyRight = keyboard_check(ord("D"))
keyUp = keyboard_check(ord("W"))
keyDown = keyboard_check(ord("S"))

var moveHoriz = keyRight - keyLeft
var moveVert =  keyDown - keyUp 

//x = x + (moveHoriz * wlkSpd)
if place_meeting(x+(moveHoriz * wlkSpd), y, objWall)
{
	while not place_meeting(x+moveHoriz, y, objWall)
	{
		x = x + moveHoriz
	}
}
else 
{
	x = x + (moveHoriz * wlkSpd)
}

//y = y +  (moveVert * wlkSpd)
if place_meeting(x, y+(moveVert * wlkSpd), objWall)
{
	while not place_meeting(x, y+moveVert, objWall)
	{
		y = y + moveVert
	}
}
else 
{
	y = y + (moveVert * wlkSpd)
}

if moveVert != 0 or moveHoriz != 0
{
	image_speed = 1	
}
else
{
	image_speed = 0	
}

if moveVert = -1
{
	sprite_index = sprWizU	
}
else if moveVert = 1
{
	sprite_index = sprWizD	
}
else if moveHoriz = 1
{
	sprite_index = sprWizLR
	image_xscale = 1
}
else if moveHoriz = -1
{
	sprite_index = sprWizLR
	image_xscale = -1
}

if playerHealth <= 0
{
instance_destroy()	
}

if mouse_check_button(mb_left) and cooldown >= 15
{
	instance_create_layer(x,y,"Instances", objWizShot)	
	cooldown = 0
}
cooldown++

