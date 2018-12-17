if audio_is_playing(ds_list_find_value(DefaultPlaylist, Current_Track)) SwitchTracks = false
else SwitchTracks = true

if SwitchTracks = true
{
	audio_stop_all()
	if Current_Track < ds_list_size(DefaultPlaylist) - 1 Current_Track += 1
	else if Current_Track = ds_list_size(DefaultPlaylist) - 1 Current_Track = 0
	TrackPlaying = ds_list_find_value(DefaultPlaylist, Current_Track)
	audio_play_sound(TrackPlaying, 0, false)
	SwitchTracks = false
}


if keyboard_check_released(vk_space)
{
	audio_stop_all()
	if Current_Track < ds_list_size(DefaultPlaylist) - 1 Current_Track += 1
	else if Current_Track = ds_list_size(DefaultPlaylist) - 1 Current_Track = 0
	TrackPlaying = ds_list_find_value(DefaultPlaylist, Current_Track)
	audio_play_sound(TrackPlaying, 0, false)
}