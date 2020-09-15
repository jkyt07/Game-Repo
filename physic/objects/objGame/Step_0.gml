if mouse_check_button_pressed(mb_left) and sprite_index != sprIpReq
{
	if point_in_rectangle(mouse_x - x,mouse_y - y, -275, -30, -20, 100)
	{
		instance_create_layer(0,0, "Instances", objServer)
		instance_destroy()
	}
	else if point_in_rectangle(mouse_x - x,mouse_y - y, 40, -40, 300, 100)
	{
		sprite_index = sprIpReq
		keyboard_string = ""
	}
}

if sprite_index == sprIpReq
{
	message = keyboard_string
	if keyboard_check_pressed(vk_enter) and (string_count(".", message) == 3 or message == "")
	{
		var client = instance_create_layer(0,0, "Instances", objClient)
		//client.ip = message
		instance_destroy()	
	}
}