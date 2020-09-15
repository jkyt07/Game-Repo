var buffer = buffer_create(32,buffer_fixed, 1);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u8, 3);

if moveHoriz != 0 or moveVert != 0
{
	x = x + (moveHoriz * wlkSpd)	
	y = y +  (moveVert * wlkSpd)

	buffer_write(buffer, buffer_bool, true);
	buffer_write(buffer, buffer_u8, x);
	buffer_write(buffer, buffer_u8, y);
}
else
{
	buffer_write(buffer, buffer_bool, false);
}
network_send_packet(user, buffer, buffer_tell(buffer));
//if !dead
//{

//if place_meeting(x+(moveHoriz * wlkSpd), y, objWall)
//{
//	while not place_meeting(x+moveHoriz, y, objWall)
//	{
//		x = x + moveHoriz
//	}
//}
//else 
//{
//	x = x + (moveHoriz * wlkSpd)
//}


//if place_meeting(x, y+(moveVert * wlkSpd), objWall)
//{
//	while not place_meeting(x, y+moveVert, objWall)
//	{
//		y = y + moveVert
//	}
//}
//else 
//{
//	y = y + (moveVert * wlkSpd)
//}

if moveVert != 0 or moveHoriz != 0
{
	image_speed = 1	
}
else
{
	image_speed = 0	
}
//}