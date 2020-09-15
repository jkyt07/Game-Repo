server = network_create_server(network_socket_tcp, 8000, 3)
socket = noone

globalvar userSockets, nextId;
userSockets = ds_list_create()
userId = 0
nextId = 1
isHost = true

var me = instance_create_layer(200,300, "Instances", objSquareHost)
ds_list_add(users, me)
ds_list_add(userSockets, socket)
