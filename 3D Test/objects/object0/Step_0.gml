var moveHoriz = (keyboard_check(ord("D")) + keyboard_check(vk_right)) - (keyboard_check(ord("A")) + keyboard_check(vk_left))
var moveVert = (keyboard_check(ord("S")) + keyboard_check(vk_down)) - (keyboard_check(ord("W")) + keyboard_check(vk_up))

if vertHeight = 0 and keyboard_check(vk_space)
{
	vertSpd = 21	
}

if vertHeight > 0 or vertSpd > 0
{
	vertHeight+= vertSpd
	y-= vertSpd
	vertSpd--
}
else
{
	y+= vertHeight 	
	vertHeight = 0
	vertSpd = 0
}

if moveHoriz != 0 and !place_meeting(x+moveHoriz*8, groundY, object1)
{
	x+=moveHoriz*8	
}

if moveVert != 0 and groundY + moveVert*8 > 520 and groundY + moveVert*8 <= 768 and !place_meeting(x, groundY+moveVert*8, object1)
{
	y+=moveVert*8
	groundY+=moveVert*8
}