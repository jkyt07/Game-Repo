object2.on = !object2.on
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u8, clientId);
buffer_write(buffer, buffer_u8, 2);
buffer_write(buffer, buffer_bool, object2.on);
network_send_packet(socket, buffer, buffer_tell(buffer));