if obj_info.height > 0 self.depth = obj_info.depth - 1

if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		case 0:
			{
				obj_player.CharacterRace = ""
				obj_player.WisdomAdded = 0
				obj_player.CharismaAdded = 0
				obj_player.StrengthAdded = 0
				obj_player.IntelligenceAdded = 0
				obj_player.ConstitutionAdded = 0
				obj_player.DexterityAdded = 0
				
				obj_player.Size = ""
				obj_player.Speed = 0
				obj_player.Flight = false
				obj_player.FlightSpeed = 0
				
				if ds_exists(obj_player.TraitsList, ds_type_list) ds_list_destroy(obj_player.TraitsList)
				if ds_exists(obj_player.LanguagesList, ds_type_list) ds_list_destroy(obj_player.LanguagesList)
				if ds_exists(obj_player.WeaponsList, ds_type_list) ds_list_destroy(obj_player.WeaponsList)
				if ds_exists(obj_player.ArmorList, ds_type_list) ds_list_destroy(obj_player.ArmorList)
				
				room_goto(rm_race_selection)
			}
		break;
	
		case 1:
			{
				room_goto(rm_class_selection)
			}
		break;
		
		case 2:
			{
				room_goto(rm_background_selection)
			}
		break;
		
		case 3:
			{
				room_goto(rm_alignment_selection)
			}
		break;
		
		case 4:
			{
				room_goto(rm_stat_selection)
			}
		break;
		
		case 5:
			{
				room_goto(rm_lobby)
			}
		break;
		
		case 6:
		{
			obj_player.CharacterName = get_string("Enter Character Name", "Jimmy")
		}
		
		case 7:
		{
			if (file_exists("CharacterSave1.sav")) file_delete("CharacterSave1.sav");
			ini_open("CharacterSave1.sav")
			ini_write_string("CharacterSave", "Name", obj_player.CharacterName)
			ini_write_string("CharacterSave", "Race", obj_player.CharacterRace)
			ini_write_string("CharacterSave", "Class", obj_player.CharacterClass)
			ini_write_real("CharacterSave", "Level", obj_player.CharacterLevel)
			ini_write_string("CharacterSave", "Background", obj_player.CharacterBackground)
			ini_write_string("CharacterSave", "Alignment", obj_player.CharacterAlignment)
			ini_write_real("CharacterSave", "Experience", obj_player.CharacterExperience)
		
			ini_write_real("CharacterSave", "Character Strength", obj_player.CharacterStrength)
			ini_write_real("CharacterSave", "Strength Modifier", obj_player.StrengthModifier)
			ini_write_real("CharacterSave", "Strength Added", obj_player.StrengthAdded)
		
			ini_write_real("CharacterSave", "Character Dexterity", obj_player.CharacterDexterity)
			ini_write_real("CharacterSave", "Dexterity Modifier", obj_player.DexterityModifier)
			ini_write_real("CharacterSave", "Dexterity Added", obj_player.DexterityAdded)
		
			ini_write_real("CharacterSave", "Character Constitution", obj_player.CharacterConstitution)
			ini_write_real("CharacterSave", "Constitution Modifier", obj_player.ConstitutionModifier)
			ini_write_real("CharacterSave", "Constitution Added", obj_player.ConstitutionAdded)
		
			ini_write_real("CharacterSave", "Character Intelligence", obj_player.CharacterIntelligence)
			ini_write_real("CharacterSave", "Intelligence Modifier", obj_player.IntelligenceModifier)
			ini_write_real("CharacterSave", "Intelligence Added", obj_player.IntelligenceAdded)
		
			ini_write_real("CharacterSave", "Character Wisdom", obj_player.CharacterWisdom)
			ini_write_real("CharacterSave", "Wisdom Modifier", obj_player.WisdomModifier)
			ini_write_real("CharacterSave", "Wisdom Added", obj_player.WisdomAdded)
		
			ini_write_real("CharacterSave", "Character Charisma", obj_player.CharacterIntelligence)
			ini_write_real("CharacterSave", "Charisma Modifier", obj_player.CharismaModifier)
			ini_write_real("CharacterSave", "Charisma Added", obj_player.CharismaAdded)
		
			ini_write_real("CharacterSave", "Character Speed", obj_player.Speed)
			ini_write_real("CharacterSave", "Character Flight", obj_player.Flight)
			ini_write_real("CharacterSave", "Character Flight Speed", obj_player.FlightSpeed)
			ini_write_real("CharacterSave", "Character Swim", obj_player.Swim)
			ini_write_real("CharacterSave", "Character Swim Speed", obj_player.SwimSpeed)
			ini_write_string("CharacterSave", "Charcter Size", obj_player.Size)
		
		
		
			ini_close()
		
		break;
		}
		
		case 8:
		{
			ini_open("CharacterSave1.sav")
			obj_player.CharacterName = ini_read_string("CharacterSave", "Name", 0)
			obj_player.CharacterRace = ini_read_string("CharacterSave", "Race", 0)
			obj_player.CharacterClass = ini_read_string("CharacterSave", "Class", 0)
			obj_player.CharacterLevel = ini_read_real("CharacterSave", "Level", 0)
			obj_player.CharacterBackground = ini_read_string("CharacterSave", "Background", 0)
			obj_player.CharacterAlignment = ini_read_string("CharacterSave", "Alignment", 0)
			obj_player.CharacterExperience = ini_read_real("CharacterSave", "Experience", 0)
		
			obj_player.CharacterStrength = ini_read_real("CharacterSave", "Character Strength", 0)
			obj_player.StrengthModifier = ini_read_real("CharacterSave", "Strength Modifier", 0)
			obj_player.StrengthAdded = ini_read_real("CharacterSave", "Strength Added", 0)
		
			obj_player.CharacterDexterity = ini_read_real("CharacterSave", "Character Dexterity", 0)
			obj_player.DexterityModifier = ini_read_real("CharacterSave", "Dexterity Modifier", 0)
			obj_player.DexterityAdded = ini_read_real("CharacterSave", "Dexterity Added", 0)
		
			obj_player.CharacterConstitution = ini_read_real("CharacterSave", "Character Constitution", 0)
			obj_player.ConstitutionModifer = ini_read_real("CharacterSave", "Constitution Modifier", 0)
			obj_player.ConstitutionAdded = ini_read_real("CharacterSave", "Constitution Added", 0)
		
			obj_player.CharacterIntelligence = ini_read_real("CharacterSave", "Character Intelligence", 0)
			obj_player.IntelligenceModifier = ini_read_real("CharacterSave", "Intelligence Modifier", 0)
			obj_player.IntelligenceAdded = ini_read_real("CharacterSave", "Intelligence Added", 0)
		
			obj_player.CharacterWisdom = ini_read_real("CharacterSave", "Character Wisdom", 0)
			obj_player.WisdomModifier = ini_read_real("CharacterSave", "Wisdom Modifier", 0)
			obj_player.WisdomAdded = ini_read_real("CharacterSave", "Wisdom Added", 0)
		
			obj_player.CharacterIntelligence = ini_read_real("CharacterSave", "Character Charisma", 0)
			obj_player.CharismaModifier = ini_read_real("CharacterSave", "Charisma Modifier", 0)
			obj_player.CharismaAdded = ini_read_real("CharacterSave", "Charisma Added", 0)
		
			obj_player.Speed = ini_read_real("CharacterSave", "Character Speed", 0)
			obj_player.Flight = ini_read_real("CharacterSave", "Character Flight", 0)
			obj_player.FlightSpeed = ini_read_real("CharacterSave", "Character Flight Speed", 0)
			obj_player.Swim = ini_read_real("CharacterSave", "Character Swim", 0)
			obj_player.SwimSpeed = ini_read_real("CharacterSave", "Character Swim Speed", 0)
			obj_player.Size = ini_read_string("CharacterSave", "Charcter Size", 0)
		
			obj_player.Speed = ini_read_real("CharacterSave", "Character Speed", 0)
			obj_player.Flight = ini_read_real("CharacterSave", "Character Flight", 0)
			obj_player.FlightSpeed = ini_read_real("CharacterSave", "Character Flight Speed", 0)
			obj_player.Swim = ini_read_real("CharacterSave", "Character Swim", 0)
		
			ini_close()
		
		break;
		}
	}
}