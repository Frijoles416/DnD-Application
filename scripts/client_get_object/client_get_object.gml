///client_get_object(client_id)

var
client_id = argument0

//if we see a message from this client before
if(ds_map_exists(clientmap, string(client_id)))
{
	return clientmap[? string(client_id)]
}
else 
{
	var l = instance_create_depth(0, 0, 0,  obj_otherClient)
	clientmap[? string(client_id)] = l
	return l
}