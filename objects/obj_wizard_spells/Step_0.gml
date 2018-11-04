if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && !selected && global.SpellSelection != MaxSpells
{
	selected = true
	global.SpellSelection += 1
	obj_confirm_button.Total += 1
	
	switch(image_index)
	{
		case 0:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceCantrips, "Acid Splash")
		}
		break;
		
		case 1:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceCantrips, "Chill Touch")
		}
		break;
		
		case 2:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceCantrips, "Dancing Lights")
		}
		break;
		
		case 3:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceCantrips, "Fire Bolt")
		}
		break;
		
		case 4:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceCantrips, "Light")
		}
		break;
		
		case 5:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceCantrips, "Mage Hand")
		}
		break;
		
		case 6:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceCantrips, "Mending")
		}
		break;
		
		case 7:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceCantrips, "Message")
		}
		break;
		
		case 8:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceCantrips, "Minor Illusion")
		}
		break;
		
		case 9:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceCantrips, "Poison Spray")
		}
		break;
		
		case 10:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceCantrips, "Prestidigitation")
		}
		break;
		
		case 11:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceCantrips, "Ray of Frost")
		}
		break;
		
		case 12:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceCantrips, "Shocking Grasp")
		}
		break;
		
		case 13:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceCantrips, "True Strike")
		}
		break;
		
	}
}

else if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && selected
{
	selected = false
	global.SpellSelection -= 1
	obj_confirm_button.Total -= 1
	
	switch(image_index)
	{
		case 0:
		{
			if room = rm_race_selection 
			{
				pos = ds_list_find_index(obj_player.RaceCantrips, "Acid Splash")
				ds_list_delete(obj_player.RaceCantrips, pos)
			}
		}
		break;
		
		case 1:
		{
			if room = rm_race_selection 
			{
				pos = ds_list_find_index(obj_player.RaceCantrips, "Chill Touch")
				ds_list_delete(obj_player.RaceCantrips, pos)
			}
		}
		break;
		
		case 2:
		{
			if room = rm_race_selection 
			{
				pos = ds_list_find_index(obj_player.RaceCantrips, "Dancing Lights")
				ds_list_delete(obj_player.RaceCantrips, pos)
			}
		}
		break;
		
		case 3:
		{
			if room = rm_race_selection 
			{
				pos = ds_list_find_index(obj_player.RaceCantrips, "Fire Bolt")
				ds_list_delete(obj_player.RaceCantrips, pos)
			}
		}
		break;
		
		case 4:
		{
			if room = rm_race_selection 
			{
				pos = ds_list_find_index(obj_player.RaceCantrips, "Light")
				ds_list_delete(obj_player.RaceCantrips, pos)
			}
		}
		break;
		
		case 5:
		{
			if room = rm_race_selection 
			{
				pos = ds_list_find_index(obj_player.RaceCantrips, "Mage Hand")
				ds_list_delete(obj_player.RaceCantrips, pos)
			}
		}
		break;
		
		case 6:
		{
			if room = rm_race_selection 
			{
				pos = ds_list_find_index(obj_player.RaceCantrips, "Mending")
				ds_list_delete(obj_player.RaceCantrips, pos)
			}
		}
		break;
		
		case 7:
		{
			if room = rm_race_selection 
			{
				pos = ds_list_find_index(obj_player.RaceCantrips, "Message")
				ds_list_delete(obj_player.RaceCantrips, pos)
			}
		}
		break;
		
		case 8:
		{
			if room = rm_race_selection 
			{
				pos = ds_list_find_index(obj_player.RaceCantrips, "Minor Illusion")
				ds_list_delete(obj_player.RaceCantrips, pos)
			}
		}
		break;
		
		case 9:
		{
			if room = rm_race_selection 
			{
				pos = ds_list_find_index(obj_player.RaceCantrips, "Poison Spray")
				ds_list_delete(obj_player.RaceCantrips, pos)
			}
		}
		break;
		
		case 10:
		{
			if room = rm_race_selection 
			{
				pos = ds_list_find_index(obj_player.RaceCantrips, "Presidigitation")
				ds_list_delete(obj_player.RaceCantrips, pos)
			}
		}
		break;
		
		case 11:
		{
			if room = rm_race_selection 
			{
				pos = ds_list_find_index(obj_player.RaceCantrips, "Ray of Frost")
				ds_list_delete(obj_player.RaceCantrips, pos)
			}
		}
		break;
		
		case 12:
		{
			if room = rm_race_selection 
			{
				pos = ds_list_find_index(obj_player.RaceCantrips, "Shocking Grasp")
				ds_list_delete(obj_player.RaceCantrips, pos)
			}
		}
		break;
		
		case 13:
		{
			if room = rm_race_selection 
			{
				pos = ds_list_find_index(obj_player.RaceCantrips, "True Strike")
				ds_list_delete(obj_player.RaceCantrips, pos)
			}
		}
		break;
	}
}

