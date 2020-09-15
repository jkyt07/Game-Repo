//self
var me = ds_list_find_value(users, 0)
me.moveHoriz = keyboard_check(ord("D")) - keyboard_check(ord("A"))
me.moveVert = keyboard_check(ord("S")) - keyboard_check(ord("W"))
me.moveAng = keyboard_check(vk_right) - keyboard_check(vk_left)
me.space = keyboard_check(vk_space)

//clients
var usersPos = ""
for(var i = 0; i < ds_list_size(users); i++)
{
	var user = ds_list_find_value(users, i)
	if user != pointer_null
	{
		var sendX = string(round(user.x))
		var sendY = string(round(user.y))
		var sendAngle = round(user.image_angle)
		while(sendAngle < 0)
		{
			sendAngle+=360	
		}
		sendAngle = string(sendAngle)
		show_debug_message("sendX " + sendX + " sendY " + sendY + " sendAngle " + sendAngle)
		while(string_length(sendX) < 4)
		{
			sendX = "0" + sendX	
		}
		while(string_length(sendY) < 4)
		{
			sendY = "0" + sendY	
		}
		while(string_length(sendAngle) < 3)
		{
			sendAngle = "0" + sendAngle	
		}
	
		usersPos = usersPos + "02" + string(i) + sendX
		usersPos =  usersPos + "03" + string(i) + sendY
		usersPos =  usersPos + "04" + string(i) + sendAngle
		show_debug_message("usersPos " + usersPos)
	}
}
broadcastPacket(usersPos)