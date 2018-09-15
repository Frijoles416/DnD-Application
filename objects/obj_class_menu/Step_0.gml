if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		case 0:
		{
			obj_player.CharacterClass = "Barbarian"
			room_goto(rm_character_creation)
		}
		break;
		
		case 1:
		{
			obj_player.CharacterClass = "Bard"
			room_goto(rm_character_creation)
		}
		break;
		
		case 2:
		{
			obj_player.CharacterClass = "Cleric"
			room_goto(rm_character_creation)
		}
		break;
		
		case 3:
		{
			obj_player.CharacterClass = "Druid"
			room_goto(rm_character_creation)
		}
		break;
		
		case 4:
		{
			obj_player.CharacterClass = "Fighter"
			room_goto(rm_character_creation)
		}
		break;
		
		case 5:
		{
			obj_player.CharacterClass = "Monk"
			room_goto(rm_character_creation)
		}
		break;
		
		case 6:
		{
			obj_player.CharacterClass = "Paladin"
			room_goto(rm_character_creation)
		}
		break;
		
		case 7:
		{
			obj_player.CharacterClass = "Ranger"
			room_goto(rm_character_creation)
		}
		break;
		
		case 8:
		{
			obj_player.CharacterClass = "Rogue"
			room_goto(rm_character_creation)
		}
		break;
		
		case 9:
		{
			obj_player.CharacterClass = "Sorcerer"
			room_goto(rm_character_creation)
		}
		break;
		
		case 10:
		{
			obj_player.CharacterClass = "Warlock"
			room_goto(rm_character_creation)
		}
		break;
		
		case 11:
		{
			obj_player.CharacterClass = "Wizard"
			room_goto(rm_character_creation)
		}
		break;
		
		case 12:
		{
			obj_player.CharacterClass = "Blood Hunter"
			room_goto(rm_character_creation)
		}
		break;
		
	}
}