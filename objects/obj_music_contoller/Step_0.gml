if !audio_is_playing(ds_list_find_value(DefaultPlaylist, Current_Track))
{
	TrackPlaying = ds_list_find_value(DefaultPlaylist, Current_Track + 1)
	audio_play_sound(TrackPlaying, 0, false)
}


if keyboard_check_released(vk_space)
{
	audio_stop_all()
	Current_Track += 1
	TrackPlaying = ds_list_find_value(DefaultPlaylist, Current_Track)
	audio_play_sound(TrackPlaying, 0, false)
}