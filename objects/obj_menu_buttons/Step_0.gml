if obj_info.height > 0 self.depth = obj_info.depth - 1

if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		case 0:
			{
				
				//Runs the alarm that will create selection based Data Structures if they have been destroyed
				obj_player.alarm[0] = 1
				
				obj_player.CharacterRace = ""
				obj_player.RaceWisdomAdded = 0
				obj_player.RaceCharismaAdded = 0
				obj_player.RaceStrengthAdded = 0
				obj_player.RaceIntelligenceAdded = 0
				obj_player.RaceConstitutionAdded = 0
				obj_player.RaceDexterityAdded = 0
				
				obj_player.Size = ""
				obj_player.Speed = 0
				obj_player.Flight = false
				obj_player.FlightSpeed = 0
				obj_player.Swim = false
				obj_player.SwimSpeed = 0
				
				ds_list_clear(obj_player.RaceTraitsList)
				ds_list_clear(obj_player.RaceLanguagesList)
				ds_list_clear(obj_player.RaceWeaponsList)
				ds_list_clear(obj_player.RaceArmorList)
				ds_list_clear(obj_player.RaceToolsList)
				ds_list_clear(obj_player.RaceAttacks)
				ds_list_clear(obj_player.RaceCantrips)
				
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
			obj_player.CharacterName = get_string("Enter Character Name", "Jimbothyithan")
		}
		break;
		
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
		
			ini_write_real("CharacterSave", "Character Strength", obj_player.InitialStrength)
			ini_write_real("CharacterSave", "Strength Modifier", obj_player.StrengthModifier)
			ini_write_real("CharacterSave", "Strength Added", obj_player.StrengthAdded)
			ini_write_real("CharacterSave", "Actual Strength", obj_player.ActualStrength)
		
			ini_write_real("CharacterSave", "Character Dexterity", obj_player.InitialDexterity)
			ini_write_real("CharacterSave", "Dexterity Modifier", obj_player.DexterityModifier)
			ini_write_real("CharacterSave", "Dexterity Added", obj_player.DexterityAdded)
			ini_write_real("CharacterSave", "Actual Dexterity", obj_player.ActualDexterity)
		
			ini_write_real("CharacterSave", "Character Constitution", obj_player.InitialConstitution)
			ini_write_real("CharacterSave", "Constitution Modifier", obj_player.ConstitutionModifier)
			ini_write_real("CharacterSave", "Constitution Added", obj_player.ConstitutionAdded)
			ini_write_real("CharacterSave", "Actual Constitution", obj_player.ActualConstitution)
		
			ini_write_real("CharacterSave", "Character Intelligence", obj_player.InitialIntelligence)
			ini_write_real("CharacterSave", "Intelligence Modifier", obj_player.IntelligenceModifier)
			ini_write_real("CharacterSave", "Intelligence Added", obj_player.IntelligenceAdded)
			ini_write_real("CharacterSave", "Actual Intelligence", obj_player.ActualIntelligence)
		
			ini_write_real("CharacterSave", "Character Wisdom", obj_player.InitialWisdom)
			ini_write_real("CharacterSave", "Wisdom Modifier", obj_player.WisdomModifier)
			ini_write_real("CharacterSave", "Wisdom Added", obj_player.WisdomAdded)
			ini_write_real("CharacterSave", "Actual Wisdom", obj_player.ActualWisdom)
		
			ini_write_real("CharacterSave", "Character Charisma", obj_player.InitialIntelligence)
			ini_write_real("CharacterSave", "Charisma Modifier", obj_player.CharismaModifier)
			ini_write_real("CharacterSave", "Charisma Added", obj_player.CharismaAdded)
			ini_write_real("CharacterSave", "Actual Charisma", obj_player.ActualCharisma)
		
			ini_write_real("CharacterSave", "Character Speed", obj_player.Speed)
			ini_write_real("CharacterSave", "Character Flight", obj_player.Flight)
			ini_write_real("CharacterSave", "Character Flight Speed", obj_player.FlightSpeed)
			ini_write_real("CharacterSave", "Character Swim", obj_player.Swim)
			ini_write_real("CharacterSave", "Character Swim Speed", obj_player.SwimSpeed)
			ini_write_string("CharacterSave", "Charcter Size", obj_player.Size)
			
			ini_write_real("CharacterSave", "Hit Die", obj_player.HitDie)
			ini_write_real("CharacterSave", "Max HP", obj_player.MaxHP)
			ini_write_real("CharacterSave", "HP Added", obj_player.HPAdded)
			
			ini_write_real("CharacterSave", "Strength Saving Throw", obj_player.StrengthSavingThrow)
			ini_write_real("CharacterSave", "Charisma Saving Throw", obj_player.CharismaSavingThrow)
			ini_write_real("CharacterSave", "Dexterity Saving Throw", obj_player.DexteritySavingThrow)
			ini_write_real("CharacterSave", "Constitution Saving Throw", obj_player.ConstitutionSavingThrow)
			ini_write_real("CharacterSave", "Intelligence Saving Throw", obj_player.IntelligenceSavingThrow)
			ini_write_real("CharacterSave", "Wisdom Saving Throw", obj_player.WisdomSavingThrow)
			
			ini_write_real("CharacterSave", "Acrobatics Proficiency", obj_player.ProficiencyAcrobatics)
			ini_write_real("CharacterSave", "Animal Handling Proficiency", obj_player.ProficiencyAnimalHandling)
			ini_write_real("CharacterSave", "Arcana Proficiency", obj_player.ProficiencyArcana)
			ini_write_real("CharacterSave", "Athletics Proficiency", obj_player.ProficiencyAthletics)
			ini_write_real("CharacterSave", "Deception Proficiency", obj_player.ProficiencyDeception)
			ini_write_real("CharacterSave", "History Proficiency", obj_player.ProficiencyHistory)
			ini_write_real("CharacterSave", "Insight Proficiency", obj_player.ProficiencyInsight)
			ini_write_real("CharacterSave", "Intimidation Proficiency", obj_player.ProficiencyIntimidation)
			ini_write_real("CharacterSave", "Investigation Proficiency", obj_player.ProficiencyInvestigation)
			ini_write_real("CharacterSave", "Nature Proficiency", obj_player.ProficiencyNature)
			ini_write_real("CharacterSave", "Perception Proficiency", obj_player.ProficiencyPerception)
			ini_write_real("CharacterSave", "Performance Proficiency", obj_player.ProficiencyPerformance)
			ini_write_real("CharacterSave", "Persuasion Proficiency", obj_player.ProficiencyPersuasion)
			ini_write_real("CharacterSave", "Religion Proficiency", obj_player.ProficiencyReligion)
			ini_write_real("CharacterSave", "Sleight of Hand Proficiency", obj_player.ProficiencySleightofHand)
			ini_write_real("CharacterSave", "Stealth Proficiency", obj_player.ProficiencyStealth)
			ini_write_real("CharacterSave", "Survival Proficiency", obj_player.ProficiencySurvival)
			
			ini_write_real("CharacterSave", "Armor Class", obj_player.ArmorClass)
			ini_write_real("CharacterSave", "Death Save Successes", obj_player.DeathSaveSuccesses)
			ini_write_real("CharacterSave", "Death Save Failures", obj_player.DeathSaveFailures)
			
			ini_write_string("CharacterSave", "Personality Traits", obj_player.PersonalityTraits)
			ini_write_string("CharacterSave", "Ideals", obj_player.Ideals)
			ini_write_string("CharacterSave", "Bonds", obj_player.Bonds)
			ini_write_string("CharacterSave", "Flaws", obj_player.Flaws)
			
			if ds_exists(obj_player.TraitsList, ds_type_list) 
			{
				str = ds_list_write(obj_player.TraitsList)
				ini_write_string("CharacterSave", "Traits", str)
			}
			else ini_write_real("CharacterSave", "Traits", obj_player.TraitsList)
			
			if ds_exists(obj_player.LanguagesList, ds_type_list) 
			{
				str = ds_list_write(obj_player.LanguagesList)
				ini_write_string("CharacterSave", "Languages", str)
			}
			else ini_write_real("CharacterSave", "Languages", obj_player.LanguagesList)
			
			if ds_exists(obj_player.WeaponsList, ds_type_list) 
			{
				str = ds_list_write(obj_player.WeaponsList)
				ini_write_string("CharacterSave", "Weapon Proficencies", str)
			}
			else ini_write_real("CharacterSave", "Weapon Proficencies", obj_player.WeaponsList)
			
			if ds_exists(obj_player.WeaponsList, ds_type_list) 
			{
				str = ds_list_write(obj_player.ArmorList)
				ini_write_string("CharacterSave", "Armor Proficencies", str)
			}
			else ini_write_real("CharacterSave", "Armor Proficencies", obj_player.ArmorList)
			
			if ds_exists(obj_player.ToolsList, ds_type_list) 
			{
				str = ds_list_write(obj_player.ToolsList)
				ini_write_string("CharacterSave", "Tool Proficencies", str)
			}
			else ini_write_real("CharacterSave", "Tool Proficencies", obj_player.ToolsList)
			
			if ds_exists(obj_player.InventoryList, ds_type_list) 
			{
				str = ds_list_write(obj_player.InventoryList)
				ini_write_string("CharacterSave", "Inventory", str)
			}
			else ini_write_real("CharacterSave", "Inventory", obj_player.InventoryList)
			
			if ds_exists(obj_player.Attacks, ds_type_list) 
			{
				str = ds_list_write(obj_player.Attacks)
				ini_write_string("CharacterSave", "Attacks", str)
			}
			else ini_write_real("CharacterSave", "Attacks", obj_player.Attacks)
			
			if ds_exists(obj_player.Cantrips, ds_type_list) 
			{
				str = ds_list_write(obj_player.Cantrips)
				ini_write_string("CharacterSave", "Cantrips", str)
			}
			else ini_write_real("CharacterSave", "Cantrips", obj_player.Cantrips)
			
			if ds_exists(obj_player.OtherMagic, ds_type_list) 
			{
				str = ds_list_write(obj_player.OtherMagic)
				ini_write_string("CharacterSave", "Other Magic", str)
			}
			else ini_write_real("CharacterSave", "Other Magic", obj_player.OtherMagic)
		
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
		
			obj_player.InitialStrength = ini_read_real("CharacterSave", "Character Strength", 0)
			obj_player.StrengthModifier = ini_read_real("CharacterSave", "Strength Modifier", 0)
			obj_player.StrengthAdded = ini_read_real("CharacterSave", "Strength Added", 0)
		
			obj_player.InitialDexterity = ini_read_real("CharacterSave", "Character Dexterity", 0)
			obj_player.DexterityModifier = ini_read_real("CharacterSave", "Dexterity Modifier", 0)
			obj_player.DexterityAdded = ini_read_real("CharacterSave", "Dexterity Added", 0)
		
			obj_player.InitialConstitution = ini_read_real("CharacterSave", "Character Constitution", 0)
			obj_player.ConstitutionModifer = ini_read_real("CharacterSave", "Constitution Modifier", 0)
			obj_player.ConstitutionAdded = ini_read_real("CharacterSave", "Constitution Added", 0)
		
			obj_player.InitialIntelligence = ini_read_real("CharacterSave", "Character Intelligence", 0)
			obj_player.IntelligenceModifier = ini_read_real("CharacterSave", "Intelligence Modifier", 0)
			obj_player.IntelligenceAdded = ini_read_real("CharacterSave", "Intelligence Added", 0)
		
			obj_player.InitialWisdom = ini_read_real("CharacterSave", "Character Wisdom", 0)
			obj_player.WisdomModifier = ini_read_real("CharacterSave", "Wisdom Modifier", 0)
			obj_player.WisdomAdded = ini_read_real("CharacterSave", "Wisdom Added", 0)
		
			obj_player.InitialIntelligence = ini_read_real("CharacterSave", "Character Charisma", 0)
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
		
		case 9:
		{
			global.BaseSelection = 0
			global.VariantSelection = 0
			
			room_goto(rm_character_creation)
		}
	}
}