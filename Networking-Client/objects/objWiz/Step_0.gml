//var keyLeft = keyboard_check(ord("A"))
//var keyRight = keyboard_check(ord("D"))
//var keyUp = keyboard_check(ord("W"))
//var keyDown = keyboard_check(ord("S"))

//var cLeft = keyboard_check_pressed(ord("A")) or keyboard_check_released(ord("A"))
//var cRight = keyboard_check_pressed(ord("D")) or keyboard_check_released(ord("D"))
//var cUp = keyboard_check_pressed(ord("W")) or keyboard_check_released(ord("W"))
//var cDown = keyboard_check_pressed(ord("S")) or keyboard_check_released(ord("S"))

//if cLeft or cRight or cUp or cDown
//{
//	buffer_seek(buffer, buffer_seek_start, 0);
//	buffer_write(buffer, buffer_u8, clientId);
//	buffer_write(buffer, buffer_u8, 3);
//	buffer_write(buffer, buffer_bool, keyLeft);
//	buffer_write(buffer, buffer_bool, keyRight);
//	buffer_write(buffer, buffer_bool, keyUp);
//	buffer_write(buffer, buffer_bool, keyDown);
//}

//var moveHoriz = keyRight - keyLeft
//var moveVert =  keyDown - keyUp 

//x = x + (moveHoriz * wlkSpd)
//y = y +  (moveVert * wlkSpd)

if moving
{
	image_speed = 1	
}
else
{
	image_speed = 0	
}

//if keyboard_check_pressed(ord("A")) or keyboard_check_pressed(ord("D")) or keyboard_check_pressed(ord("W")) or keyboard_check_pressed(ord("S"))
//{
//buffer_seek(buffer, buffer_seek_start, 0);
//buffer_write(buffer, buffer_u8, clientId);
//buffer_write(buffer, buffer_u8, 3);
//buffer_write(buffer, buffer_s8, moveHoriz);
//buffer_write(buffer, buffer_s8, moveVert);
//network_send_packet(socket, buffer, buffer_tell(buffer));
//}
//else if keyboard_check_released(ord("A")) or keyboard_check_released(ord("D")) or keyboard_check_released(ord("W")) or keyboard_check_released(ord("S"))
//{
//buffer_seek(buffer, buffer_seek_start, 0);
//buffer_write(buffer, buffer_u8, clientId);
//buffer_write(buffer, buffer_u8, 3);
//buffer_write(buffer, buffer_s8, moveHoriz);
//buffer_write(buffer, buffer_s8, moveVert);
//network_send_packet(socket, buffer, buffer_tell(buffer));
//}

