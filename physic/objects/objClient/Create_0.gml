ip = objGame.message //objGame.message
if ip == ""
{
	ip = "127.0.0.1"	
}

socket = network_create_socket(network_socket_tcp);
connection = network_connect(socket, ip, 8000);

isHost = false

//object0.phy_active = false