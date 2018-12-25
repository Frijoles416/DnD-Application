if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && !selected && global.LanguageSelection != MaxLang
{
	selected = true
	global.LanguageSelection += 1
	obj_confirm_button.Total += 1
	
	if room = rm_race_selection
	{
		switch(image_index)
		{
			case 0:
			{
				ds_list_add(obj_player.RaceLanguagesList, "Dwarvish")
			}
			break;
		
			case 1:
			{
	
				ds_list_add(obj_player.RaceLanguagesList, "Elvish")
			}
			break;
			
			case 2:
			{
				ds_list_add(obj_player.RaceLanguagesList, "Giant")
			}
			break;
			
			case 3:
			{
				ds_list_add(obj_player.RaceLanguagesList, "Gnomish")
			}
			break;
			
			case 4:
			{
				ds_list_add(obj_player.RaceLanguagesList, "Goblin")
			}
			break;
			
			case 5:
			{
				ds_list_add(obj_player.RaceLanguagesList, "Halfling")
			}
			break;
			
			case 6:
			{
				ds_list_add(obj_player.RaceLanguagesList, "Orc")
			}
			break;
		
			case 7:
			{
				ds_list_add(obj_player.RaceLanguagesList, "Abyssmal")
			}
			break;
			
			case 8:
			{
				ds_list_add(obj_player.RaceLanguagesList, "Celestial")
			}
			break;
			
			case 9:
			{
				ds_list_add(obj_player.RaceLanguagesList, "Draconic")
			}
			break;
			
			case 10:
			{
				ds_list_add(obj_player.RaceLanguagesList, "Deep Speech")
			}
			break;
		
			case 11:
			{
				ds_list_add(obj_player.RaceLanguagesList, "Infernal")
			}
			break;
			
			case 12:
			{
				ds_list_add(obj_player.RaceLanguagesList, "Primordial")
			}
			break;
			
			case 13:
			{
				ds_list_add(obj_player.RaceLanguagesList, "Sylvan")
			}
			break;
		
			case 14:
			{
				ds_list_add(obj_player.RaceLanguagesList, "Undercommon")
			}
			break;
		}	
	}
	
	else if room = rm_background_selection
	{
		switch(image_index)
		{
			case 0:
			{
				ds_list_add(obj_player.BackgroundLanguagesList, "Dwarvish")
			}
			break;
		
			case 1:
			{
	
				ds_list_add(obj_player.BackgroundLanguagesList, "Elvish")
			}
			break;
			
			case 2:
			{
				ds_list_add(obj_player.BackgroundLanguagesList, "Giant")
			}
			break;
			
			case 3:
			{
				ds_list_add(obj_player.BackgroundLanguagesList, "Gnomish")
			}
			break;
			
			case 4:
			{
				ds_list_add(obj_player.BackgroundLanguagesList, "Goblin")
			}
			break;
			
			case 5:
			{
				ds_list_add(obj_player.BackgroundLanguagesList, "Halfling")
			}
			break;
			
			case 6:
			{
				ds_list_add(obj_player.BackgroundLanguagesList, "Orc")
			}
			break;
		
			case 7:
			{
				ds_list_add(obj_player.BackgroundLanguagesList, "Abyssmal")
			}
			break;
			
			case 8:
			{
				ds_list_add(obj_player.BackgroundLanguagesList, "Celestial")
			}
			break;
			
			case 9:
			{
				ds_list_add(obj_player.BackgroundLanguagesList, "Draconic")
			}
			break;
			
			case 10:
			{
				ds_list_add(obj_player.BackgroundLanguagesList, "Deep Speech")
			}
			break;
		
			case 11:
			{
				ds_list_add(obj_player.BackgroundLanguagesList, "Infernal")
			}
			break;
			
			case 12:
			{
				ds_list_add(obj_player.BackgroundLanguagesList, "Primordial")
			}
			break;
			
			case 13:
			{
				ds_list_add(obj_player.BackgroundLanguagesList, "Sylvan")
			}
			break;
		
			case 14:
			{
				ds_list_add(obj_player.BackgroundLanguagesList, "Undercommon")
			}
			break;
		}	
	}
}

else if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && selected
{
	selected = false
	global.LanguageSelection -= 1
	obj_confirm_button.Total -= 1
	
	switch(image_index)
	{
		case 0:
		{
			if room = rm_race_selection
			{
				pos = ds_list_find_index(obj_player.RaceLanguagesList, "Dwarvish");
				ds_list_delete(obj_player.RaceLanguagesList, pos)
				
			}
			
			if room = rm_background_selection
			{
				pos = ds_list_find_index(obj_player.BackgroundLanguagesList, "Dwarvish");
				ds_list_delete(obj_player.BackgroundLanguagesList, pos)
				
			}
		}
		break;
		
		case 1:
		{
			if room = rm_race_selection
			{
				pos = ds_list_find_index(obj_player.RaceLanguagesList, "Elvish");
				ds_list_delete(obj_player.RaceLanguagesList, pos)
			}
			
			if room = rm_background_selection
			{
				pos = ds_list_find_index(obj_player.BackgroundLanguagesList, "Elvish");
				ds_list_delete(obj_player.BackgroundLanguagesList, pos)
			}
		}
		break;
		
		case 2:
		{
			if room = rm_race_selection
			{
				pos = ds_list_find_index(obj_player.RaceLanguagesList, "Giant");
				ds_list_delete(obj_player.RaceLanguagesList, pos)
			}
			
			if room = rm_background_selection
			{
				pos = ds_list_find_index(obj_player.BackgroundLanguagesList, "Giant");
				ds_list_delete(obj_player.BackgroundLanguagesList, pos)
			}
		}
		break;
		
		case 3:
		{
			if room = rm_race_selection
			{
				pos = ds_list_find_index(obj_player.RaceLanguagesList, "Gnomish");
				ds_list_delete(obj_player.RaceLanguagesList, pos)
			}
			
			if room = rm_background_selection
			{
				pos = ds_list_find_index(obj_player.BackgroundLanguagesList, "Gnomish");
				ds_list_delete(obj_player.BackgroundLanguagesList, pos)
			}
		}
		break;
		
		case 4:
		{
			if room = rm_race_selection
			{
				pos = ds_list_find_index(obj_player.RaceLanguagesList, "Goblin");
				ds_list_delete(obj_player.RaceLanguagesList, pos)
			}
			
			if room = rm_background_selection
			{
				pos = ds_list_find_index(obj_player.BackgroundLanguagesList, "Goblin");
				ds_list_delete(obj_player.BackgroundLanguagesList, pos)
			}
		}
		break;
		
		case 5:
		{
			if room = rm_race_selection
			{
				pos = ds_list_find_index(obj_player.RaceLanguagesList, "Halfling");
				ds_list_delete(obj_player.RaceLanguagesList, pos)
			}
			
			if room = rm_background_selection
			{
				pos = ds_list_find_index(obj_player.BackgroundLanguagesList, "Halfling");
				ds_list_delete(obj_player.BackgroundLanguagesList, pos)
			}
		}
		break;
		
		case 6:
		{
			if room = rm_race_selection
			{
				pos = ds_list_find_index(obj_player.RaceLanguagesList, "Orc");
				ds_list_delete(obj_player.RaceLanguagesList, pos)
			}
			
			if room = rm_background_selection
			{
				pos = ds_list_find_index(obj_player.BackgroundLanguagesList, "Orc");
				ds_list_delete(obj_player.BackgroundLanguagesList, pos)
			}
		}
		break;
		
		case 7:
		{
			if room = rm_race_selection
			{
				pos = ds_list_find_index(obj_player.RaceLanguagesList, "Abysmal");
				ds_list_delete(obj_player.RaceLanguagesList, pos)
			}
			
			if room = rm_background_selection
			{
				pos = ds_list_find_index(obj_player.BackgroundLanguagesList, "Abysmal");
				ds_list_delete(obj_player.BackgroundLanguagesList, pos)
			}
		}
		break;
		
		case 8:
		{
			if room = rm_race_selection
			{
				pos = ds_list_find_index(obj_player.RaceLanguagesList, "Celestial");
				ds_list_delete(obj_player.RaceLanguagesList, pos)
			}
			
			if room = rm_background_selection
			{
				pos = ds_list_find_index(obj_player.BackgroundLanguagesList, "Celestial");
				ds_list_delete(obj_player.BackgroundLanguagesList, pos)
			}
		}
		break;
		
		case 9:
		{
			if room = rm_race_selection
			{
				pos = ds_list_find_index(obj_player.RaceLanguagesList, "Draconic");
				ds_list_delete(obj_player.RaceLanguagesList, pos)
			}
			
			if room = rm_background_selection
			{
				pos = ds_list_find_index(obj_player.BackgroundLanguagesList, "Draconic");
				ds_list_delete(obj_player.BackgroundLanguagesList, pos)
			}
		}
		break;
		
		case 10:
		{
			if room = rm_race_selection
			{
				pos = ds_list_find_index(obj_player.RaceLanguagesList, "Deep Speech");
				ds_list_delete(obj_player.RaceLanguagesList, pos)
			}
			
			if room = rm_background_selection
			{
				pos = ds_list_find_index(obj_player.BackgroundLanguagesList, "Deep Speech");
				ds_list_delete(obj_player.BackgroundLanguagesList, pos)
			}
		}
		break;
		
		case 11:
		{
			if room = rm_race_selection
			{
				pos = ds_list_find_index(obj_player.RaceLanguagesList, "Infernal");
				ds_list_delete(obj_player.RaceLanguagesList, pos)
			}
			
			if room = rm_background_selection
			{
				pos = ds_list_find_index(obj_player.BackgroundLanguagesList, "Infernal");
				ds_list_delete(obj_player.BackgroundLanguagesList, pos)
			}
		}
		break;
		
		case 12:
		{
			if room = rm_race_selection
			{
				pos = ds_list_find_index(obj_player.RaceLanguagesList, "Primordial");
				ds_list_delete(obj_player.RaceLanguagesList, pos)
			}
			
			if room = rm_background_selection
			{
				pos = ds_list_find_index(obj_player.BackgroundLanguagesList, "Primordial");
				ds_list_delete(obj_player.BackgroundLanguagesList, pos)
			}
		}
		break;
		
		case 13:
		{
			if room = rm_race_selection
			{
				pos = ds_list_find_index(obj_player.RaceLanguagesList, "Sylvan");
				ds_list_delete(obj_player.RaceLanguagesList, pos)
			}
			
			if room = rm_background_selection
			{
				pos = ds_list_find_index(obj_player.BackgroundLanguagesList, "Sylvan");
				ds_list_delete(obj_player.BackgroundLanguagesList, pos)
			}
		}
		break;
		
		case 14:
		{
			if room = rm_race_selection
			{
				pos = ds_list_find_index(obj_player.RaceLanguagesList, "Undercommon");
				ds_list_delete(obj_player.RaceLanguagesList, pos)
			}
			
			if room = rm_background_selection
			{
				pos = ds_list_find_index(obj_player.BackgroundLanguagesList, "Undercommon");
				ds_list_delete(obj_player.BackgroundLanguagesList, pos)
			}
		}
		break;
		
	}
	
}