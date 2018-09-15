///client_handle_message(buffer)

var
buffer = argument0

while(true)
{
	var
	message_id = buffer_read(buffer, buffer_u8)
	
	switch(message_id)
	{
		case MESSAGE_MOVE:
		{
			var
			client = buffer_read(buffer, buffer_u16),
			xx = buffer_read(buffer, buffer_u16),
			yy = buffer_read(buffer, buffer_u16)
			clientObject = client_get_object(client)
			
			clientObject.time = 0
			clientObject.prx = clientObject.x
			clientObject.pry = clientObject.y
			clientObject.tox = xx
			clientObject.toy = yy
			
			with(obj_serverClient)
			{
				if(client_id != client_id_current)
				{
					network_send_raw(self.socket_id, other.send_buffer, buffer_tell(other.send_buffer))
				}
			}
			
			break;
		}
		
		case MESSAGE_JOIN:
		{
			var
			client = buffer_read(buffer, buffer_u16)
			username = buffer_read(buffer, buffer_string)
			clientObject = client_get_object(client)
			
			clientObject.name = username
			
		}
		
		break;
	}
	
	if buffer_tell(buffer) == buffer_get_size(buffer)
	{
		break;
	}
	
}