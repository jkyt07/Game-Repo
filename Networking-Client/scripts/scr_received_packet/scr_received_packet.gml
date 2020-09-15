///scr_recevied_packet(buffer)
var buffer = argument[0];  //1, 100, 120
var message_id = buffer_read(buffer, buffer_u8);
switch(message_id)
{
	case 1:
		clientId = buffer_read(buffer, buffer_u8);
		break;
	case 2:
		object3.on = buffer_read(buffer, buffer_bool)
		break;
	case 3:
		var move = buffer_read(buffer, buffer_bool);
		player.moving = move
		if move
		{
			player.x = buffer_read(buffer, buffer_u8);
			player.y = buffer_read(buffer, buffer_u8);
		}
		break;
	case 4:
			var inputId = buffer_read(buffer, buffer_u8)
			if clientId = inputId
			{
				ds_list_insert(users, inputId, player)
			}
			else
			{
			var wiz = instance_create_layer(32,32, "Instances", objWiz);
			ds_list_insert(users, inputId, wiz);
			wiz.userId = inputId;
			}
			break;
}
