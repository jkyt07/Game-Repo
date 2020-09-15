if async_load[? "type"] == network_type_data
{
	var recievedPacket = async_load[? "buffer"]
	buffer_seek(recievedPacket, buffer_seek_start, 0)
	decryptPacketClient(recievedPacket)
}