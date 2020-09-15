/// @description Innitialize the client
var type = network_socket_tcp;
var ip = "10.3.17.34";
var port = 8000; //needs to match the server's port
socket = network_create_socket(type);//tcp in this case
connection = network_connect(socket, ip, port);

//28:00 in video
var size = 1024;
var type = buffer_fixed;
var alignment = 1;
buffer = buffer_create(size, type, alignment);

globalvar clientId;

globalvar users;
users = ds_list_create();
globalvar nextId;
nextId = 0;