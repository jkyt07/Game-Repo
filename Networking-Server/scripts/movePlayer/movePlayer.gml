var clientWiz = ds_list_find_value(users, argument[0])
var sender = argument[0]
keyLeft = argument[1]
keyRight = argument[2]
keyUp = argument[3]
keyDown = argument[4]

clientWiz.moveHoriz = keyRight - keyLeft
clientWiz.moveVert =  keyDown - keyUp 

//clientWiz.x = clientWiz.x + (moveHoriz * clientWiz.wlkSpd)
//clientWiz.y = clientWiz.y + (moveVert * clientWiz.wlkSpd)

//var buffer = buffer_create(1024,buffer_fixed, 1);
//buffer_seek(buffer, buffer_seek_start, 0);
//buffer_write(buffer, buffer_u8, 3);
//buffer_write(buffer, buffer_u8, clientWiz.x);
//buffer_write(buffer, buffer_u8, clientWiz.y);
//network_send_packet(ds_list_find_index(userSockets, sender), buffer, buffer_tell(buffer));
