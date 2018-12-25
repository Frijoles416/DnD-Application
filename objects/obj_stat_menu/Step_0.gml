if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && !selected && global.StatSelection != MaxStats
{
	selected = true
	global.StatSelection += 1
	obj_confirm_button.Total += 1
	
	switch(image_index)
	{
		case 0:
		{
			if room = rm_race_selection obj_player.RaceStrengthAdded += 1
		}
		break;
		
		case 1:
		{
			if room = rm_race_selection obj_player.RaceDexterityAdded += 1
		}
		break;
		
		case 2:
		{
			if room = rm_race_selection obj_player.RaceConstitutionAdded += 1
		}
		break;
		
		case 3:
		{
			if room = rm_race_selection obj_player.RaceIntelligenceAdded += 1
		}
		break;
		
		case 4:
		{
			if room = rm_race_selection obj_player.RaceWisdomAdded += 1
		}
		break;
		
		case 5:
		{
			if room = rm_race_selection obj_player.RaceCharismaAdded += 1
		}
		break;
	}
}

else if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && selected
{
	selected = false
	global.StatSelection -= 1
	obj_confirm_button.Total -= 1
	
	switch(image_index)
	{
		case 0:
		{
			if room = rm_race_selection obj_player.RaceStrengthAdded -= 1
		}
		break;
		
		case 1:
		{
			if room = rm_race_selection obj_player.RaceDexterityAdded -= 1
		}
		break;
		
		case 2:
		{
			if room = rm_race_selection obj_player.RaceConstitutionAdded -= 1
		}
		break;
		
		case 3:
		{
			if room = rm_race_selection obj_player.RaceIntelligenceAdded -= 1
		}
		break;
		
		case 4:
		{
			if room = rm_race_selection obj_player.RaceWisdomAdded -= 1
		}
		break;
		
		case 5:
		{
			if room = rm_race_selection obj_player.RaceCharismaAdded -= 1
		}
		break;
	}
}