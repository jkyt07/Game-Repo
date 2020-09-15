var type_event = async_load[? "type"];
var socket = async_load[? "socket"];
switch(type_event)
{
	case network_type_connect:
		broadcastPacket("010")
		var newUser = instance_create_layer(nextId *100 + 200,300,"Instances", objSquareHost) //add user obj
		newUser.c = ds_list_find_value(colors, nextId)
		ds_list_add(users, newUser) //add user obj to user list
		ds_list_add(userSockets, socket)
		sendPacket("00" + string(nextId), socket)
		choose_next_id()
		break;
	case network_type_disconnect:
		var userId = ds_list_find_index(userSockets, socket)
		var user = ds_list_find_value(users, userId)
		ds_list_set(users, userId, pointer_null)
		ds_list_set(userSockets, userId, noone)
		instance_destroy(user)
		break;
	case network_type_data:
		decryptPacketHost(async_load[? "buffer"])
		break;
}