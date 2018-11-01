if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && !selected
{
	selected = true
	
	/*
	obj_backgrounds_menu.LanguagesChosen += 1
	if obj_backgrounds_menu.LanguagesChosen = obj_backgrounds_menu.MaxLanguages 
	{
		if !instance_exists(obj_tool_selection)
		{
			room_goto(rm_character_creation)
		}
		else instance_destroy(obj_language_selection)
	}
	*/
		
	switch(image_index)
	{
		case 0:
		{
			if room = rm_race_selection
			{
				ds_list_add(obj_player.RaceLanguagesList, "Dwarvish")
			}
		}
		break;
		
		case 1:
		{
			if room = rm_race_selection
			{
				ds_list_add(obj_player.RaceLanguagesList, "Elvish")
			}
		}
		break;
		
		case 2:
		{
			if room = rm_race_selection
			{
				ds_list_add(obj_player.RaceLanguagesList, "Giant")
			}
		}
		break;
		
		case 3:
		{
			ds_list_add(obj_player.RaceLanguagesList, "Gnomish")
		}
		break;
		
		case 4:
		{
			if room = rm_race_selection
			{
				ds_list_add(obj_player.RaceLanguagesList, "Goblin")
			}
		}
		break;
		
		case 5:
		{
			if room = rm_race_selection
			{
				ds_list_add(obj_player.RaceLanguagesList, "Halfling")
			}
		}
		break;
		
		case 6:
		{
			if room = rm_race_selection
			{
				ds_list_add(obj_player.RaceLanguagesList, "Orc")
			}
		}
		break;
		
		case 7:
		{
			if room = rm_race_selection
			{
				ds_list_add(obj_player.RaceLanguagesList, "Abyssmal")
			}
		}
		break;
		
		case 8:
		{
			if room = rm_race_selection
			{
				ds_list_add(obj_player.RaceLanguagesList, "Celestial")
			}
		}
		break;
		
		case 9:
		{
			if room = rm_race_selection
			{
				ds_list_add(obj_player.RaceLanguagesList, "Draconic")
			}
		}
		break;
		
		case 10:
		{
			if room = rm_race_selection
			{
				ds_list_add(obj_player.RaceLanguagesList, "Deep Speech")
			}
		}
		break;
		
		case 11:
		{
			if room = rm_race_selection
			{
				ds_list_add(obj_player.RaceLanguagesList, "Infernal")
			}
		}
		break;
		
		case 12:
		{
			if room = rm_race_selection
			{
				ds_list_add(obj_player.RaceLanguagesList, "Primordial")
			}
		}
		break;
		
		case 13:
		{
			if room = rm_race_selection
			{
				ds_list_add(obj_player.RaceLanguagesList, "Sylvan")
			}
		}
		break;
		
		case 14:
		{
			if room = rm_race_selection
			{
				ds_list_add(obj_player.RaceLanguagesList, "Undercommon")
			}
		}
		break;
		
		
	}
}