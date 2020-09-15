/// @description Insert description here
// You can write your code in this editor
		var buffer = async_load[? "buffer"];  //buffers hold data sent
		buffer_seek(buffer, buffer_seek_start, 0);//start at beginning with 0 offset
		scr_received_packet(buffer); //send data into this script
