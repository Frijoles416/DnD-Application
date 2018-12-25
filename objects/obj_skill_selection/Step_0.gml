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
			if room = rm_race_selection obj_player.RaceProficiencyAcrobatics = false
			if room = rm_background_selection obj_player.BackgroundProficiencyAcrobatics = false
		}
		break;
		
		case 1:
		{
			if room = rm_race_selection obj_player.RaceProficiencyAnimalHandling = false
			if room = rm_background_selection obj_player.BackgroundProficiencyAnimalHandling = false
		}
		break;
		
		case 2:
		{
			if room = rm_race_selection obj_player.RaceProficiencyArcana = false
			if room = rm_background_selection obj_player.BackgroundProficiencyArcana = false
		}
		break;
		
		case 3:
		{
			if room = rm_race_selection obj_player.RaceProficiencyAthletics = false
			if room = rm_background_selection obj_player.BackgroundProficiencyAthletics = false
		}
		break;
		
		case 4:
		{
			if room = rm_race_selection obj_player.RaceProficiencyDeception = false
			if room = rm_background_selection obj_player.BackgroundProficiencyDeception = false
		}
		break;
		
		case 5:
		{
			if room = rm_race_selection obj_player.RaceProficiencyHistory = false
			if room = rm_background_selection obj_player.BackgroundProficiencyHistory = false
		}
		break;
		
		case 6:
		{
			if room = rm_race_selection obj_player.RaceProficiencyInsight = false
			if room = rm_background_selection obj_player.BackgroundProficiencyInsight = false
		}
		break;
		
		case 7:
		{
			if room = rm_race_selection obj_player.RaceProficiencyIntimidation = false
			if room = rm_background_selection obj_player.BackgroundProficiencyIntimidation = false
		}
		break;
		
		case 8:
		{
			if room = rm_race_selection obj_player.RaceProficiencyInvestigation = false
			if room = rm_background_selection obj_player.BackgroundProficiencyInvestigation = false
		}
		break;
		
		case 9:
		{
			if room = rm_race_selection obj_player.RaceProficiencyMedicine = false
			if room = rm_background_selection obj_player.BackgroundProficiencyMedicine = false
		}
		break;
		
		case 10:
		{
			if room = rm_race_selection obj_player.RaceProficiencyNature = false
			if room = rm_background_selection obj_player.BackgroundProficiencyNature = false
		}
		break;
		
		case 11:
		{
			if room = rm_race_selection obj_player.RaceProficiencyPerception = false
			if room = rm_background_selection obj_player.BackgroundProficiencyPerception = false
		}
		break;
		
		case 12:
		{
			if room = rm_race_selection obj_player.RaceProficiencyPerformance = false
			if room = rm_background_selection obj_player.BackgroundProficiencyPerformance = false
		}
		break;
		
		case 13:
		{
			if room = rm_race_selection obj_player.RaceProficiencyPersuasion = false
			if room = rm_background_selection obj_player.BackgroundProficiencyPersuasion = false
		}
		break;
		
		case 14:
		{
			if room = rm_race_selection obj_player.RaceProficiencyReligion = false
			if room = rm_background_selection obj_player.BackgroundProficiencyReligion = false
		}
		break;
		
		case 15:
		{
			if room = rm_race_selection obj_player.RaceProficiencySleightofHand = false
			if room = rm_background_selection obj_player.BackgroundProficiencySleightofHand = false
		}
		break;
		
		case 16:
		{
			if room = rm_race_selection obj_player.RaceProficiencyStealth = false
			if room = rm_background_selection obj_player.BackgroundProficiencyStealth = false
		}
		break;
		
		case 17:
		{
			if room = rm_race_selection obj_player.RaceProficiencySurvival= false
			if room = rm_background_selection obj_player.BackgroundProficiencySurvival= false
		}
		break;
	}
}

else if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && selected
{
	selected = false
	global.SkillSelection -= 1
	obj_confirm_button.Total -= 1
	
	switch(image_index)
	{
		case 0:
		{
			if room = rm_race_selection obj_player.RaceProficiencyAcrobatics = false
			if room = rm_background_selection obj_player.BackgroundProficiencyAcrobatics = false
		}
		break;
		
		case 1:
		{
			if room = rm_race_selection obj_player.RaceProficiencyAnimalHandling = false
			if room = rm_background_selection obj_player.BackgroundProficiencyAnimalHandling = false
		}
		break;
		
		case 2:
		{
			if room = rm_race_selection obj_player.RaceProficiencyArcana = false
			if room = rm_background_selection obj_player.BackgroundProficiencyArcana = false
		}
		break;
		
		case 3:
		{
			if room = rm_race_selection obj_player.RaceProficiencyAthletics = false
			if room = rm_background_selection obj_player.BackgroundProficiencyAthletics = false
		}
		break;
		
		case 4:
		{
			if room = rm_race_selection obj_player.RaceProficiencyDeception = false
			if room = rm_background_selection obj_player.BackgroundProficiencyDeception = false
		}
		break;
		
		case 5:
		{
			if room = rm_race_selection obj_player.RaceProficiencyHistory = false
			if room = rm_background_selection obj_player.BackgroundProficiencyHistory = false
		}
		break;
		
		case 6:
		{
			if room = rm_race_selection obj_player.RaceProficiencyInsight = false
			if room = rm_background_selection obj_player.BackgroundProficiencyInsight = false
		}
		break;
		
		case 7:
		{
			if room = rm_race_selection obj_player.RaceProficiencyIntimidation = false
			if room = rm_background_selection obj_player.BackgroundProficiencyIntimidation = false
		}
		break;
		
		case 8:
		{
			if room = rm_race_selection obj_player.RaceProficiencyInvestigation = false
			if room = rm_background_selection obj_player.BackgroundProficiencyInvestigation = false
		}
		break;
		
		case 9:
		{
			if room = rm_race_selection obj_player.RaceProficiencyMedicine = false
			if room = rm_background_selection obj_player.BackgroundProficiencyMedicine = false
		}
		break;
		
		case 10:
		{
			if room = rm_race_selection obj_player.RaceProficiencyNature = false
			if room = rm_background_selection obj_player.BackgroundProficiencyNature = false
		}
		break;
		
		case 11:
		{
			if room = rm_race_selection obj_player.RaceProficiencyPerception = false
			if room = rm_background_selection obj_player.BackgroundProficiencyPerception = false
		}
		break;
		
		case 12:
		{
			if room = rm_race_selection obj_player.RaceProficiencyPerformance = false
			if room = rm_background_selection obj_player.BackgroundProficiencyPerformance = false
		}
		break;
		
		case 13:
		{
			if room = rm_race_selection obj_player.RaceProficiencyPersuasion = false
			if room = rm_background_selection obj_player.BackgroundProficiencyPersuasion = false
		}
		break;
		
		case 14:
		{
			if room = rm_race_selection obj_player.RaceProficiencyReligion = false
			if room = rm_background_selection obj_player.BackgroundProficiencyReligion = false
		}
		break;
		
		case 15:
		{
			if room = rm_race_selection obj_player.RaceProficiencySleightofHand = false
			if room = rm_background_selection obj_player.BackgroundProficiencySleightofHand = false
		}
		break;
		
		case 16:
		{
			if room = rm_race_selection obj_player.RaceProficiencyStealth = false
			if room = rm_background_selection obj_player.BackgroundProficiencyStealth = false
		}
		break;
		
		case 17:
		{
			if room = rm_race_selection obj_player.RaceProficiencySurvival= false
			if room = rm_background_selection obj_player.BackgroundProficiencySurvival= false
		}
		break;
	}
}