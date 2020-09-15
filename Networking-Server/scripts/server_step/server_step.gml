if(PlayerSocket = 999)
{
	port = 35236;
	buffer_seek(buffer, buffer_seek_start, 0);
	buffer_write(buffer, buffer_u8, 0);
	buffer_write(buffer, buffer_string, server_name);
	network_send_broadcast(socket, 32537, buffer, buffer_tell(buffer));
}
