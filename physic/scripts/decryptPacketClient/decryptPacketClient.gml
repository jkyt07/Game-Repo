var packet = argument[0]
buffer_seek(packet, buffer_seek_start, 0)
show_debug_message("Buffer Size" + string(buffer_get_size(packet)))
for(var q = 0; q < buffer_get_size(packet)/2 - 1; q+=2)
{
	show_debug_message("Buff Size: " + string(buffer_get_size(packet)))
	var messageId = string(buffer_read(packet, buffer_u16))
	var data = string(buffer_read(packet, buffer_u16))
	show_debug_message("RmessageId " + messageId)
	show_debug_message("RecieveData " + data)
	switch(messageId)
	{
		case 0:
			userId = data
			show_debug_message("User ID " + string(userId))
			for(var i = 0; i <= userId; i++)
			{
				var newUser = instance_create_layer(200 + i*100,300, "Instances", objSquareClient)
				newUser.c = ds_list_find_value(colors, i)
				//newUser.phy_active = false
				//newUser.phy_fixed_rotation = true
				ds_list_add(users, newUser)
			}
			//data = string_delete(data, 2, 1)
			break;
		case 1:
			var newUser = instance_create_layer(300,300, "Instances", objSquareClient)
			newUser.c = ds_list_find_value(colors, ds_list_size(users))
			//newUser.phy_active = false
			//newUser.phy_fixed_rotation = true
			ds_list_add(users, newUser)
			show_debug_message("New User")
			break;
		case 2:
			var user = ds_list_find_value(users, data)
			//user.phy_position_x = buffer_read(packet, buffer_u16)
			user.x = buffer_read(packet, buffer_u16)
			q+=2
			break;
		case 3:
			var user = ds_list_find_value(users, data)
			//user.phy_position_y = buffer_read(packet, buffer_u16)
			user.y = buffer_read(packet, buffer_u16)
			q+=2
			break;
		case 4:
			var user = ds_list_find_value(users, data)
			//user.phy_rotation = buffer_read(packet, buffer_u16)
			var angle = buffer_read(packet, buffer_u16)
			user.image_angle = angle //buffer_read(packet, buffer_u16)
			show_debug_message("RAngle " + string(angle) + " UserAngle " + string(user.image_angle) + "AngleId" + data)
			q+=2
			break;
	}
}