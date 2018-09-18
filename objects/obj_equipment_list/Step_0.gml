if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		case 0:
		{
			obj_player.CharacterAlignment = "Lawful Good"
			room_goto(rm_character_creation)
		}
		break;
		
		case 1:
		{
			obj_player.CharacterAlignment = "Neutral Good"
			room_goto(rm_character_creation)
		}
		break;
		
		case 2:
		{
			obj_player.CharacterAlignment = "Chaotic Good"
			room_goto(rm_character_creation)
		}
		break;
		
		case 3:
		{
			obj_player.CharacterAlignment = "Lawful Neutral"
			room_goto(rm_character_creation)
		}
		break;
		
		case 4:
		{
			obj_player.CharacterAlignment = "True Neutral"
			room_goto(rm_character_creation)
		}
		break;
		
		case 5:
		{
			obj_player.CharacterAlignment = "Chaotic Neutral"
			room_goto(rm_character_creation)
		}
		break;
		
		case 6:
		{
			obj_player.CharacterAlignment = "Lawful Evil"
			room_goto(rm_character_creation)
		}
		break;
		
		case 7:
		{
			obj_player.CharacterAlignment = "Neutral Evil"
			room_goto(rm_character_creation)
		}
		break;
		
		case 8:
		{
			obj_player.CharacterAlignment = "Chaotic Evil"
			room_goto(rm_character_creation)
		}
		break;
		
	}
}