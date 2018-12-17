audio_stop_all()
audio_play_sound(snd_title, 0, true)
if !instance_exists(obj_player)
{
	instance_create_depth(0, 0, -10, obj_player)
}
if !instance_exists(obj_info)
{
	instance_create_depth(0, 0, -10, obj_info)
}
