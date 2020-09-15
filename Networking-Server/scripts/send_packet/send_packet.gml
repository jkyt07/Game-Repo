var buffer = buffer_create(1024,buffer_fixed, 1);
buffer_seek(buffer, buffer_seek_start, 0);
buffer_write(buffer, buffer_u8, argument[0]);
buffer_write(buffer, buffer_u8, argument[1]);

for(i=0;i<ds_list_size(userSockets);i++)
{
network_send_packet(ds_list_find_index(userSockets, i), buffer, buffer_tell(buffer));
}