wlkSpd = 3
imgScale = 8
image_xscale = imgScale
image_yscale = imgScale
dir = 3
moving = false

socket = obj_client.socket
connection = obj_client.connection

var size = 1024;
var type = buffer_fixed;
var alignment = 1;
buffer = buffer_create(size, type, alignment);

userId = pointer_null;