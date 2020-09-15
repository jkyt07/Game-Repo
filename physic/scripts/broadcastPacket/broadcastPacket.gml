////message, socket
//var send = buffer_create(2048, buffer_grow, 1)
//buffer_seek(send, buffer_seek_start, 0)
////buffer_write(send, buffer_u16, userId);
//var data = argument[0]
//show_debug_message("BroadcastData " + data) //debug data
////if(!isHost)
////{
////	buffer_write(send, buffer_u16, string_copy(data,1,1))
////	data = string_copy(data, 2, string_length(data)-1)
////}

//while(data != "")
//{
//	show_debug_message("BroadcastData " + data) //debug data
//	var messageId = real(string_copy(data,1,2))
//	show_debug_message("MessageId " + string(messageId)) //debug messageId
//	data = string_copy(data, 3, string_length(data)-2) 
//	show_debug_message("BroadcastData " + data) //debug data
//	buffer_write(send, buffer_u16, messageId)
//	switch(messageId) //Host starts at 0, Clients start at 99
//	{
//		case 0: //UserId
//			buffer_write(send, buffer_u16, real(string_copy(data, 1, 1)))
//			show_debug_message("BroadcastedData " + string_copy(data, 1, 1)) //debug
//			data = string_copy(data, 2, string_length(data)-1)
//			break;
//		case 1: //new user
//			data = string_copy(data, 2, string_length(data)-1)
//			break;
//		case 2: //x
//			buffer_write(send, buffer_u16, real(string_copy(data, 1, 1)))
//			buffer_write(send, buffer_u16, real(string_copy(data, 2, 4)))
//			show_debug_message("BroadcastedData " + string_copy(data, 2, 4)) //debug
//			data = string_copy(data, 6, string_length(data)-5)
//			break;
//		case 3: //y
//			buffer_write(send, buffer_u16, real(string_copy(data, 1, 1)))
//			buffer_write(send, buffer_u16, real(string_copy(data, 2, 4)))
//			show_debug_message("BroadcastedData " + string_copy(data, 2, 4)) //debug
//			data = string_copy(data, 6, string_length(data)-5)
//			break;
//		case 4: //image _angle
//			buffer_write(send, buffer_u16, real(string_copy(data, 1, 1)))
//			buffer_write(send, buffer_u16, real(string_copy(data, 2, 3)))
//			show_debug_message("BroadcastedData " + string_copy(data, 2, 3)) //debug
//			data = string_copy(data, 5, string_length(data)-4)
//			break;
			
			
//		case 99: //moveHoriz
//			buffer_write(send, buffer_u16, real(string_copy(data, 1, 1)))
//			show_debug_message("BroadcastedData " + string_copy(data, 1, 1)) //debug
//			data = string_copy(data, 2, string_length(data)-1)
//			break;
//		case 98: //space
//			buffer_write(send, buffer_u16, real(string_copy(data, 1, 1)))
//			show_debug_message("BroadcastedData " + string_copy(data, 1, 1)) //debug
//			data = string_copy(data, 2, string_length(data)-1)
//			break;
//	}
//}

for(var i = 1; i < ds_list_size(userSockets); i++)
{
	if(ds_list_find_value(userSockets, i) != noone)
	{
		//network_send_packet(ds_list_find_value(userSockets, i), send, buffer_tell(send))
		sendPacket(argument[0], ds_list_find_value(userSockets, i))
	}
}

//buffer_delete(send)