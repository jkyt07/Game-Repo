var packet = argument[0]
buffer_seek(packet, buffer_seek_start, 0)
var sender = buffer_read(packet, buffer_u16)
var sendUser = ds_list_find_value(users, sender)

show_debug_message("Buffer Size" + string(buffer_get_size(packet)))
for(var q = 0; q < buffer_get_size(packet)/2 - 1; q+=2)
{
	//show_debug_message("Buff Align: " + string(buffer_get_address(packet)) + "	Buff Size: " + string(buffer_get_size(packet)))
	var messageId = string(buffer_read(packet, buffer_u16))
	var data = string(buffer_read(packet, buffer_u16))
	show_debug_message("RmessageId " + messageId)
	show_debug_message("RecieveHostData " + data)
	switch(messageId)
	{
		case 99:
			sendUser.moveHoriz = data-1
			break;
		case 98:
			sendUser.moveVert = data-1
			break;
		case 97:
			sendUser.space = data
			break;
		case 96:
			sendUser.moveAng = data-1
			break;
	}
}