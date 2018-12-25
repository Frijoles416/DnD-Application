if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
{
	case 0:
	{
		
	}
	break;
	
	case 1:
	{
		room_goto(rm_player_connect)
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
		
		room_goto(rm_character_creation)
	}
	break;
	
	case 3:
	{
		room_goto(rm_dungeon1)
	}
	break;
	
	
}
}