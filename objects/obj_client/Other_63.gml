if !connected
{
	connected = true
	client_connect("72.182.145.231", 9000, async_load[? "result"])
	alarm[0] = UPDATE_SPEED
}