if global.pause exit

depth = -100

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && !selected
{
	selected = true
	obj_backgrounds_menu.LanguagesChosen += 1
	if obj_backgrounds_menu.LanguagesChosen = obj_backgrounds_menu.MaxLanguages 
	{
		if !instance_exists(obj_tool_selection)
		{
			room_goto(rm_character_creation)
		}
		else instance_destroy(obj_language_selection)
	}
		
		
	switch(image_index)
	{
		case 0:
		{
			ds_list_add(obj_player.LanguagesList, "Dwarvish")
		}
		break;
		
		case 1:
		{
			ds_list_add(obj_player.LanguagesList, "Elvish")
		}
		break;
		
		case 2:
		{
			ds_list_add(obj_player.LanguagesList, "Giant")
		}
		break;
		
		case 3:
		{
			ds_list_add(obj_player.LanguagesList, "Gnomish")
		}
		break;
		
		case 4:
		{
			ds_list_add(obj_player.LanguagesList, "Goblin")
		}
		break;
		
		case 5:
		{
			ds_list_add(obj_player.LanguagesList, "Halfling")
		}
		break;
		
		case 6:
		{
			ds_list_add(obj_player.LanguagesList, "Orc")
		}
		break;
		
		case 7:
		{
			ds_list_add(obj_player.LanguagesList, "Abyssmal")
		}
		break;
		
		case 8:
		{
			ds_list_add(obj_player.LanguagesList, "Celestial")
		}
		break;
		
		case 9:
		{
			ds_list_add(obj_player.LanguagesList, "Draconic")
		}
		break;
		
		case 10:
		{
			ds_list_add(obj_player.LanguagesList, "Deep Speech")
		}
		break;
		
		case 11:
		{
			ds_list_add(obj_player.LanguagesList, "Infernal")
		}
		break;
		
		case 12:
		{
			ds_list_add(obj_player.LanguagesList, "Primordial")
		}
		break;
		
		case 13:
		{
			ds_list_add(obj_player.LanguagesList, "Sylvan")
		}
		break;
		
		case 14:
		ds_list_add(obj_player.LanguagesList, "Undercommon")
		break;
		
		
	}
}