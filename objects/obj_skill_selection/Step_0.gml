if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && !selected && global.SkillSelection != MaxSkills
{
	selected = true
	global.SkillSelection += 1
	obj_confirm_button.Total += 1
	
	switch(image_index)
	{
		case 0:
		{
			if room = rm_race_selection obj_player.RaceProficiencyAcrobatics = true
		}
		break;
		
		case 1:
		{
			if room = rm_race_selection obj_player.RaceProficiencyAnimalHandling = true
		}
		break;
		
		case 2:
		{
			if room = rm_race_selection obj_player.RaceProficiencyArcana = true
		}
		break;
		
		case 3:
		{
			if room = rm_race_selection obj_player.RaceProficiencyAthletics = true
		}
		break;
		
		case 4:
		{
			if room = rm_race_selection obj_player.RaceProficiencyDeception = true
		}
		break;
		
		case 5:
		{
			if room = rm_race_selection obj_player.RaceProficiencyHistory = true
		}
		break;
		
		case 6:
		{
			if room = rm_race_selection obj_player.RaceProficiencyInsight = true
		}
		break;
		
		case 7:
		{
			if room = rm_race_selection obj_player.RaceProficiencyIntimidation = true
		}
		break;
		
		case 8:
		{
			if room = rm_race_selection obj_player.RaceProficiencyInvestigation = true
		}
		break;
		
		case 9:
		{
			if room = rm_race_selection obj_player.RaceProficiencyMedicine = true
		}
		break;
		
		case 10:
		{
			if room = rm_race_selection obj_player.RaceProficiencyNature = true
		}
		break;
		
		case 11:
		{
			if room = rm_race_selection obj_player.RaceProficiencyPerception = true
		}
		break;
		
		case 12:
		{
			if room = rm_race_selection obj_player.RaceProficiencyPerformance = true
		}
		break;
		
		case 13:
		{
			if room = rm_race_selection obj_player.RaceProficiencyPersuasion = true
		}
		break;
		
		case 14:
		{
			if room = rm_race_selection obj_player.RaceProficiencyReligion = true
		}
		break;
		
		case 15:
		{
			if room = rm_race_selection obj_player.RaceProficiencySleightofHand = true
		}
		break;
		
		case 16:
		{
			if room = rm_race_selection obj_player.RaceProficiencyStealth = true
		}
		break;
		
		case 17:
		{
			if room = rm_race_selection obj_player.RaceProficiencySurvival= true
		}
		break;
	}
}

else if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && selected
{
	selected = false
	global.SkillSelection -= 1
	
	switch(image_index)
	{
		case 0:
		{
			if room = rm_race_selection obj_player.RaceProficiencyAcrobatics = false
		}
		break;
		
		case 1:
		{
			if room = rm_race_selection obj_player.RaceProficiencyAnimalHandling = false
		}
		break;
		
		case 2:
		{
			if room = rm_race_selection obj_player.RaceProficiencyArcana = false
		}
		break;
		
		case 3:
		{
			if room = rm_race_selection obj_player.RaceProficiencyAthletics = false
		}
		break;
		
		case 4:
		{
			if room = rm_race_selection obj_player.RaceProficiencyDeception = false
		}
		break;
		
		case 5:
		{
			if room = rm_race_selection obj_player.RaceProficiencyHistory = false
		}
		break;
		
		case 6:
		{
			if room = rm_race_selection obj_player.RaceProficiencyInsight = false
		}
		break;
		
		case 7:
		{
			if room = rm_race_selection obj_player.RaceProficiencyIntimidation = false
		}
		break;
		
		case 8:
		{
			if room = rm_race_selection obj_player.RaceProficiencyInvestigation = false
		}
		break;
		
		case 9:
		{
			if room = rm_race_selection obj_player.RaceProficiencyMedicine = false
		}
		break;
		
		case 10:
		{
			if room = rm_race_selection obj_player.RaceProficiencyNature = false
		}
		break;
		
		case 11:
		{
			if room = rm_race_selection obj_player.RaceProficiencyPerception = false
		}
		break;
		
		case 12:
		{
			if room = rm_race_selection obj_player.RaceProficiencyPerformance = false
		}
		break;
		
		case 13:
		{
			if room = rm_race_selection obj_player.RaceProficiencyPersuasion = false
		}
		break;
		
		case 14:
		{
			if room = rm_race_selection obj_player.RaceProficiencyReligion = false
		}
		break;
		
		case 15:
		{
			if room = rm_race_selection obj_player.RaceProficiencySleightofHand = false
		}
		break;
		
		case 16:
		{
			if room = rm_race_selection obj_player.RaceProficiencyStealth = false
		}
		break;
		
		case 17:
		{
			if room = rm_race_selection obj_player.RaceProficiencySurvival = false
		}
		break;
	}
}