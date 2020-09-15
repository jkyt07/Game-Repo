/// @description Insert description here
// You can write your code in this editor
var type = network_socket_tcp;
var port = 8000;
max_clients = 3;
server = network_create_server(type, port, max_clients); //udp is alternative
socket = noone;

globalvar users; 
users = ds_list_create();
globalvar userSockets;
userSockets = ds_list_create();

globalvar nextId;
nextId = 0;