if global.pause exit

depth = -100

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		case 0:
		{
			obj_player.ProficiencyAcrobatics = true
			obj_class_menu.SkillsChosen +=1
			if obj_class_menu.SkillsChosen = obj_class_menu.MaxSkills
			{
				room_goto(rm_equipment_selection)
			}
		}
		break;
		
		case 1:
		{
			obj_player.ProficiencyAnimalHandling = true
			obj_class_menu.SkillsChosen +=1
			if obj_class_menu.SkillsChosen = obj_class_menu.MaxSkills
			{
				room_goto(rm_equipment_selection)
			}
		}
		break;
		
		case 2:
		{
			obj_player.ProficiencyArcana = true
			obj_class_menu.SkillsChosen +=1
			if obj_class_menu.SkillsChosen = obj_class_menu.MaxSkills
			{
				room_goto(rm_equipment_selection)
			}
		}
		break;
		
		case 3:
		{
			obj_player.ProficiencyAthletics = true
			obj_class_menu.SkillsChosen +=1
			if obj_class_menu.SkillsChosen = obj_class_menu.MaxSkills
			{
				room_goto(rm_equipment_selection)
			}
		}
		break;
		
		case 4:
		{
			obj_player.ProficiencyDeception = true
			obj_class_menu.SkillsChosen +=1
			if obj_class_menu.SkillsChosen = obj_class_menu.MaxSkills
			{
				room_goto(rm_equipment_selection)
			}
		}
		break;
		
		case 5:
		{
			obj_player.ProficiencyHistory = true
			obj_class_menu.SkillsChosen +=1
			if obj_class_menu.SkillsChosen = obj_class_menu.MaxSkills
			{
				room_goto(rm_equipment_selection)
			}
		}
		break;
		
		case 6:
		{
			obj_player.ProficiencyInsight = true
			obj_class_menu.SkillsChosen +=1
			if obj_class_menu.SkillsChosen = obj_class_menu.MaxSkills
			{
				room_goto(rm_equipment_selection)
			}
		}
		break;
		
		case 7:
		{
			obj_player.ProficiencyIntimidation = true
			obj_class_menu.SkillsChosen +=1
			if obj_class_menu.SkillsChosen = obj_class_menu.MaxSkills
			{
				room_goto(rm_equipment_selection)
			}
		}
		break;
		
		case 8:
		{
			obj_player.ProficiencyInvestigation = true
			obj_class_menu.SkillsChosen +=1
			if obj_class_menu.SkillsChosen = obj_class_menu.MaxSkills
			{
				room_goto(rm_equipment_selection)
			}
		}
		break;
		
		case 9:
		{
			obj_player.ProficiencyMedicine = true
			obj_class_menu.SkillsChosen +=1
			if obj_class_menu.SkillsChosen = obj_class_menu.MaxSkills
			{
				room_goto(rm_equipment_selection)
			}
		}
		break;
		
		case 10:
		{
			obj_player.ProficiencyNature = true
			obj_class_menu.SkillsChosen +=1
			if obj_class_menu.SkillsChosen = obj_class_menu.MaxSkills
			{
				room_goto(rm_equipment_selection)
			}
		}
		break;
		
		case 11:
		{
			obj_player.ProficiencyPerception = true
			obj_class_menu.SkillsChosen +=1
			if obj_class_menu.SkillsChosen = obj_class_menu.MaxSkills
			{
				room_goto(rm_equipment_selection)
			}
		}
		break;
		
		case 12:
		{
			obj_player.ProficiencyPerformance = true
			obj_class_menu.SkillsChosen +=1
			if obj_class_menu.SkillsChosen = obj_class_menu.MaxSkills
			{
				room_goto(rm_equipment_selection)
			}
		}
		break;
		
		case 13:
		{
			obj_player.ProficiencyPersuasion = true
			obj_class_menu.SkillsChosen +=1
			if obj_class_menu.SkillsChosen = obj_class_menu.MaxSkills
			{
				room_goto(rm_equipment_selection)
			}
		}
		break;
		
		case 14:
		{
			obj_player.ProficiencyReligion = true
			obj_class_menu.SkillsChosen +=1
			if obj_class_menu.SkillsChosen = obj_class_menu.MaxSkills
			{
				room_goto(rm_equipment_selection)
			}
		}
		break;
		
		case 15:
		{
			obj_player.ProficiencySleightofHand = true
			obj_class_menu.SkillsChosen +=1
			if obj_class_menu.SkillsChosen = obj_class_menu.MaxSkills
			{
				room_goto(rm_equipment_selection)
			}
		}
		break;
		
		case 16:
		{
			obj_player.ProficiencyStealth = true
			obj_class_menu.SkillsChosen +=1
			if obj_class_menu.SkillsChosen = obj_class_menu.MaxSkills
			{
				room_goto(rm_equipment_selection)
			}
		}
		break;
		
		case 17:
		{
			obj_player.ProficiencySurvival= true
			obj_class_menu.SkillsChosen +=1
			if obj_class_menu.SkillsChosen = obj_class_menu.MaxSkills
			{
				room_goto(rm_equipment_selection)
			}
		}
		break;
	}
}