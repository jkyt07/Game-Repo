///scr_recevied_packet(buffer)
var buffer = argument[0];  //1, 100, 120
var sender = buffer_read(buffer, buffer_u8);
var message_id = buffer_read(buffer, buffer_u8);
switch(message_id)
{
	case 1:
		
		var mx = buffer_read(buffer, buffer_u32); //120
		var my = buffer_read(buffer, buffer_u32);//1
		dot = instance_create_layer(mx, my, "Instances", obj_click);
		switch (sender)
		{
			case 0:
				dot.color = c_blue;
				break;
			case 1:
				dot.color = c_red;
				break;
		}
		break;
	case 2:
		object3.on = buffer_read(buffer, buffer_bool)
		break;
	case 3:
				//var clientWiz = ds_list_find_value(users, sender)
		var keyLeft = buffer_read(buffer, buffer_u8);
		var keyRight = buffer_read(buffer, buffer_u8);
		var keyUp = buffer_read(buffer, buffer_u8);
		var keyDown = buffer_read(buffer, buffer_u8);
		movePlayer(sender, keyLeft, keyRight, keyUp, keyDown)

		
		//var moveHoriz = keyRight - keyLeft
		//var moveVert =  keyDown - keyUp 

		//clientWiz.moveHoriz = buffer_read(buffer, buffer_s8);
		//clientWiz.moveVert = buffer_read(buffer, buffer_s8);
		break;
	
}
