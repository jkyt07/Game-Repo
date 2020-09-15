/// @description Check for clients and data
var type_event = async_load[? "type"];  //which of 3 event types:  connect, disconnect, data
//3 types using a switch
switch(type_event)
{
	case network_type_connect:
		//add client to socket variable - use list data structure if server clients
		//if socket= noone //if socket is open/available
		//{
		socket = async_load[? "socket"]
		//}
		//ds_list_add(userSockets, socket); //socket becomes the socket of client attempting to connect	
		
		//I have no idea what I'm doing
		var wiz = instance_create_layer(32, 32, "Instances", objWiz)
		ds_list_add(users, wiz)
		wiz.user = socket;
		var buffer = buffer_create(128,buffer_fixed, 1);
		buffer_seek(buffer, buffer_seek_start, 0);
		buffer_write(buffer, buffer_u8, 1);
		buffer_write(buffer, buffer_u8, nextId);
		network_send_packet(socket, buffer, buffer_tell(buffer));
		send_packet(4,nextId);
		choose_next_id();
		break;
	case network_type_disconnect:
		socket = async_load[? "socket"];
		var userId = ds_list_find_index(userSockets, socket);
		var wiz = ds_list_find_value(users, userId);
		wiz.visible = false;
		ds_list_set(users, userId, pointer_null);
		ds_list_set(userSockets, userId, pointer_null);
		break;
	case network_type_data:
		//Handle the data
		var buffer = async_load[? "buffer"];  //buffers hold data sent
		buffer_seek(buffer, buffer_seek_start, 0);//start at beginning with 0 offset
		scr_received_packet(buffer); //send data into this script
		break;
}
	
	



