/// @description Create a click and send it to the server
instance_create_layer(mouse_x, mouse_y,"Instances", obj_click);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u8, clientId);
buffer_write(buffer, buffer_u8, 1);  //1
buffer_write(buffer, buffer_u32, mouse_x);  //1,100
buffer_write(buffer, buffer_u32, mouse_y);  //1,100,120
network_send_packet(socket, buffer, buffer_tell(buffer));


