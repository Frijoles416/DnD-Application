if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
{
	case 0:
	{
		with(obj_button) instance_destroy()
		instance_create_depth(0,0,0, obj_server)
	}
	break;
	
	case 1:
	{
		room_goto(rm_player_lobby)
		/*
		with(obj_button) instance_destroy()
		instance_create_depth(0,0,0, obj_client)
		instance_create_depth(100, 100, 0, obj_player_character)
		newChar = instance_create_depth(room_width - 96, room_height - 96, 0, obj_button)
		newChar.image_index = 2
		*/
	}
	break;
	
	case 2:
	{
		if instance_exists(obj_player_character)
		{
			instance_destroy(obj_player_character)
		}
		
		room_goto(rm_character_creation)
	}
	break;
}
}