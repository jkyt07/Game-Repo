moveHoriz = keyboard_check(ord("D")) - keyboard_check(ord("A"))
moveVert = keyboard_check(ord("S")) - keyboard_check(ord("W"))
moveAng = keyboard_check(vk_right) - keyboard_check(vk_left)
space = keyboard_check(vk_space)
if space
{
	space = 1	
}
else
{
	space = 0	
}

var sendString = string(userId)
sendString+="99" + string(moveHoriz +1)
sendString+="98" + string(moveVert +1)
sendString+="97" + string(space)
sendString+="96" + string(moveAng +1)
show_debug_message("sendString" + sendString)
sendPacket(sendString, socket)