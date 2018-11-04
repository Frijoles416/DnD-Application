if global.pause exit

var space = 32

//Clicking event
if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && !selected && global.VariantSelection = 0
{
	selected = true
	global.VariantSelection += 1
	obj_confirm_button.Total += 1
	
	switch(image_index)
	{
		//Aasimar - 3 variants
		case 0:
		{
			obj_player.CharacterRace = "Protector Aasimiar"
			obj_player.RaceWisdomAdded = 1
			
		}
		break;
		
		case 1:
		{
			obj_player.CharacterRace = "Scourge Aasimiar"
			obj_player.RaceConstitutionAdded = 1
			
		}
		break;
		
		case 2:
		{
			obj_player.CharacterRace = "Fallen Aasimiar"
			obj_player.RaceStrengthAdded = 1
			
		}
		break;
		
		//Dwarf - 2 variants
		case 3:
		{
			obj_player.CharacterRace = "Hill Dwarf"
			obj_player.RaceWisdomAdded = 1
			
			ds_list_add(obj_player.RaceTraitsList, "Dwarven Toughness")
		}
		break;
		
		case 4:
		{
			obj_player.CharacterRace = "Mountain Dwarf"
			obj_player.RaceStrengthAdded = 2
			
			ds_list_add(obj_player.RaceArmorList, "Light", "Medium")
		}
		break;
		
		//Elf - 11 variants
		case 5:
		{
			obj_player.CharacterRace = "High Elf"
			obj_player.RaceIntelligenceAdded = 1
			obj_player.Speed = 30
			
			global.TotalSelection = 3
			
			spell1 = instance_create_depth(room_width - 256 - 96, 32, 0,  obj_wizard_spells)
			spell1.image_index = 0
			spell2 = instance_create_depth(room_width - 256 - 96 + 128, 32, 0,  obj_wizard_spells)
			spell2.image_index = 1
			spell3 = instance_create_depth(room_width - 256 - 96, 64, 0,  obj_wizard_spells)
			spell3.image_index = 2
			spell4 = instance_create_depth(room_width - 256 - 96 + 128, 64, 0,  obj_wizard_spells)
			spell4.image_index = 3
			spell5 = instance_create_depth(room_width - 256 - 96, 96, 0,  obj_wizard_spells)
			spell5.image_index = 4
			spell6 = instance_create_depth(room_width - 256 - 96 + 128, 96, 0,  obj_wizard_spells)
			spell6.image_index = 5
			spell7 = instance_create_depth(room_width - 256 - 96, 128, 0,  obj_wizard_spells)
			spell7.image_index = 6
			spell8 = instance_create_depth(room_width - 256 - 96 + 128, 128, 0,  obj_wizard_spells)
			spell8.image_index = 7
			spell9 = instance_create_depth(room_width - 256 - 96, 160, 0,  obj_wizard_spells)
			spell9.image_index = 8
			spell10 = instance_create_depth(room_width - 256 - 96 + 128, 160, 0,  obj_wizard_spells)
			spell10.image_index = 9
			spell11 = instance_create_depth(room_width - 256 - 96, 192, 0,  obj_wizard_spells)
			spell11.image_index = 10
			spell12 = instance_create_depth(room_width - 256 - 96 + 128, 192, 0,  obj_wizard_spells)
			spell12.image_index = 11
			spell13 = instance_create_depth(room_width - 256 - 96, 224, 0,  obj_wizard_spells)
			spell13.image_index = 12
			spell14 = instance_create_depth(room_width - 256 - 96 + 128, 224, 0,  obj_wizard_spells)
			spell14.image_index = 13
			obj_wizard_spells.MaxSpells = 1
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Trance", "Elf Weapon Training", "Cantrip")
			
			lang1 = instance_create_depth(room_width - 192 - 32, space*12, 0,  obj_language_selection)
			lang1.image_index = 1
			lang2 = instance_create_depth(room_width - 192 - 32, space*13, 0,  obj_language_selection)
			lang2.image_index = 3
			lang3 = instance_create_depth(room_width - 192 - 32, space*14, 0,  obj_language_selection)
			lang3.image_index = 5
			lang4 = instance_create_depth(room_width - 192 - 32, space*15, 0,  obj_language_selection)
			lang4.image_index = 7
			lang5 = instance_create_depth(room_width - 192 - 32, space*16, 0,  obj_language_selection)
			lang5.image_index = 9
			lang6 = instance_create_depth(room_width - 192 - 32, space*17, 0,  obj_language_selection)
			lang6.image_index = 11
			lang7 = instance_create_depth(room_width - 192 - 32, space*18, 0,  obj_language_selection)
			lang7.image_index = 13
			lang8 = instance_create_depth(room_width - 192 - 160, space*12, 0, obj_language_selection)
			lang8.image_index = 2
			lang9 = instance_create_depth(room_width - 192 - 160, space*13, 0,  obj_language_selection)
			lang9.image_index = 4
			lang10 = instance_create_depth(room_width - 192 - 160, space*14, 0,  obj_language_selection)
			lang10.image_index = 6
			lang11 = instance_create_depth(room_width - 192 - 160, space*15, 0, obj_language_selection)
			lang11.image_index = 8
			lang12 = instance_create_depth(room_width - 192 - 160, space*16, 0, obj_language_selection)
			lang12.image_index = 10
			lang13= instance_create_depth(room_width - 192 - 160, space*17, 0,  obj_language_selection)
			lang13.image_index = 12
			lang14 = instance_create_depth(room_width - 192 - 160, space*18, 0,  obj_language_selection)
			lang14.image_index = 14
			lang15 = instance_create_depth(room_width - 192 - 96, space*19, 0, obj_language_selection)
			lang15.image_index = 15
			obj_language_selection.MaxLang = 1
			
			ds_list_add(obj_player.RaceWeaponsList, "Shortbow", "Longbow", "Shortswords", "Longswords")
			
			instance_destroy(obj_variant_menu)
		}
		break;
		
		case 6:
		{
			obj_player.CharacterRace = "Wood Elf"
			obj_player.RaceWisdomAdded = 1
			obj_player.Speed = 35
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Trance", "Elf Weapon Training", "Fleet of Foot", "Mask of the Wild")
			
			ds_list_add(obj_player.RaceWeaponsList, "Shortbow", "Longbow", "Shortswords", "Longswords")
			
		}
		break;
		
		case 7:
		{
			obj_player.CharacterRace = "Eladrin"
			obj_player.RaceIntelligenceAdded = 1
			obj_player.Speed = 30
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Trance", "Fey Step")
			
			ds_list_add(obj_player.RaceWeaponsList, "Shortbow", "Longbow", "Shortswords", "Longswords")
			
			ds_list_add(obj_player.Race2ndMagic, "Misty Step")
			

		}
		break;
		
		case 8:
		{
			obj_player.CharacterRace = "Shadow Elf"
			obj_player.RaceCharismaAdded = 1
			obj_player.Speed = 30
			
			global.TotalSelection = 2
			
			ds_list_add(obj_player.RaceCantrips, "Minor Illusion")
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Trance", "Natural Talent", "Gift of the Shadows", "Shape Shadows", "Slip into Shadow")
			
			ds_list_add(obj_player.RaceWeaponsList, "Shortbow", "Longbow", "Shortswords", "Longswords")
			
			tool1 = instance_create_depth(room_width - 192 - 64, space, 0,  obj_tool_selection)
			tool1.image_index = 25
			tool2 = instance_create_depth(room_width - 192 - 64, space*2, 0,  obj_tool_selection)
			tool2.image_index = 26
			tool3 = instance_create_depth(room_width - 192 - 64, space*3, 0,  obj_tool_selection)
			tool3.image_index = 27
			tool4 = instance_create_depth(room_width - 192 - 64, space*4, 0,  obj_tool_selection)
			tool4.image_index = 28
			tool5 = instance_create_depth(room_width - 192 - 64, space*5, 0,  obj_tool_selection)
			tool5.image_index = 29
			tool6 = instance_create_depth(room_width - 192 - 64, space*6, 0,  obj_tool_selection)
			tool6.image_index = 30
			tool7 = instance_create_depth(room_width - 192 - 64, space*7, 0,  obj_tool_selection)
			tool7.image_index = 31
			tool8 = instance_create_depth(room_width - 192 - 64, space*8, 0, obj_tool_selection)
			tool8.image_index = 32
			tool9 = instance_create_depth(room_width - 192 - 64, space*9, 0,  obj_tool_selection)
			tool9.image_index = 33
			tool10 = instance_create_depth(room_width - 192 - 64, space*10, 0,  obj_tool_selection)
			tool10.image_index = 34
			obj_tool_selection.MaxTools = 1
			
			skill1 = instance_create_depth(room_width - 192 - 64, space*12, 0,  obj_skill_selection)
			skill1.image_index = 12
			obj_skill_selection.MaxSkills = 1
			
			instance_destroy(obj_variant_menu)
			
		}
		break;
		
		case 9:
		{
			obj_player.CharacterRace = "Aerenal Elf"
			obj_player.RaceIntelligenceAdded = 1
			obj_player.Speed = 30
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Trance", "Cantrip", "Aereni Elf")
			
			global.TotalSelection = 4
			
			spell1 = instance_create_depth(room_width - 256 - 96, 32, 0,  obj_wizard_spells)
			spell1.image_index = 0
			spell2 = instance_create_depth(room_width - 256 - 96 + 128, 32, 0,  obj_wizard_spells)
			spell2.image_index = 1
			spell3 = instance_create_depth(room_width - 256 - 96, 64, 0,  obj_wizard_spells)
			spell3.image_index = 2
			spell4 = instance_create_depth(room_width - 256 - 96 + 128, 64, 0,  obj_wizard_spells)
			spell4.image_index = 3
			spell5 = instance_create_depth(room_width - 256 - 96, 96, 0,  obj_wizard_spells)
			spell5.image_index = 4
			spell6 = instance_create_depth(room_width - 256 - 96 + 128, 96, 0,  obj_wizard_spells)
			spell6.image_index = 5
			spell7 = instance_create_depth(room_width - 256 - 96, 128, 0,  obj_wizard_spells)
			spell7.image_index = 6
			spell8 = instance_create_depth(room_width - 256 - 96 + 128, 128, 0,  obj_wizard_spells)
			spell8.image_index = 7
			spell9 = instance_create_depth(room_width - 256 - 96, 160, 0,  obj_wizard_spells)
			spell9.image_index = 8
			spell10 = instance_create_depth(room_width - 256 - 96 + 128, 160, 0,  obj_wizard_spells)
			spell10.image_index = 9
			spell11 = instance_create_depth(room_width - 256 - 96, 192, 0,  obj_wizard_spells)
			spell11.image_index = 10
			spell12 = instance_create_depth(room_width - 256 - 96 + 128, 192, 0,  obj_wizard_spells)
			spell12.image_index = 11
			spell13 = instance_create_depth(room_width - 256 - 96, 224, 0,  obj_wizard_spells)
			spell13.image_index = 12
			spell14 = instance_create_depth(room_width - 256 - 96 + 128, 224, 0,  obj_wizard_spells)
			spell14.image_index = 13
			obj_wizard_spells.MaxSpells = 1
			
			lang1 = instance_create_depth(room_width - 192 - 32, space*8, 0,  obj_language_selection)
			lang1.image_index = 1
			lang2 = instance_create_depth(room_width - 192 - 32, space*9, 0,  obj_language_selection)
			lang2.image_index = 3
			lang3 = instance_create_depth(room_width - 192 - 32, space*10, 0,  obj_language_selection)
			lang3.image_index = 5
			lang4 = instance_create_depth(room_width - 192 - 32, space*11, 0,  obj_language_selection)
			lang4.image_index = 7
			lang5 = instance_create_depth(room_width - 192 - 32, space*12, 0,  obj_language_selection)
			lang5.image_index = 9
			lang6 = instance_create_depth(room_width - 192 - 32, space*13, 0,  obj_language_selection)
			lang6.image_index = 11
			lang7 = instance_create_depth(room_width - 192 - 32, space*14, 0,  obj_language_selection)
			lang7.image_index = 13
			lang8 = instance_create_depth(room_width - 192 - 160, space*8, 0, obj_language_selection)
			lang8.image_index = 2
			lang9 = instance_create_depth(room_width - 192 - 160, space*9, 0,  obj_language_selection)
			lang9.image_index = 4
			lang10 = instance_create_depth(room_width - 192 - 160, space*10, 0,  obj_language_selection)
			lang10.image_index = 6
			lang11 = instance_create_depth(room_width - 192 - 160, space*11, 0, obj_language_selection)
			lang11.image_index = 8
			lang12 = instance_create_depth(room_width - 192 - 160, space*12, 0, obj_language_selection)
			lang12.image_index = 10
			lang13= instance_create_depth(room_width - 192 - 160, space*13, 0,  obj_language_selection)
			lang13.image_index = 12
			lang14 = instance_create_depth(room_width - 192 - 160, space*14, 0,  obj_language_selection)
			lang14.image_index = 14
			lang15 = instance_create_depth(room_width - 192 - 96, space*15, 0, obj_language_selection)
			lang15.image_index = 15
			obj_language_selection.MaxLang = 1
			
			tool1 = instance_create_depth(room_width - 192 - 32, space*16, 0,  obj_tool_selection)
			tool1.image_index = 1
			tool2 = instance_create_depth(room_width - 192 - 32, space*17, 0,  obj_tool_selection)
			tool2.image_index = 3
			tool3 = instance_create_depth(room_width - 192 - 32, space*18, 0,  obj_tool_selection)
			tool3.image_index = 5
			tool4 = instance_create_depth(room_width - 192 - 32, space*19, 0,  obj_tool_selection)
			tool4.image_index = 7
			tool5 = instance_create_depth(room_width - 192 - 32, space*20, 0,  obj_tool_selection)
			tool5.image_index = 9
			tool6 = instance_create_depth(room_width - 192 - 32, space*21, 0,  obj_tool_selection)
			tool6.image_index = 11
			tool7 = instance_create_depth(room_width - 192 - 32, space*22, 0,  obj_tool_selection)
			tool7.image_index = 13
			tool8 = instance_create_depth(room_width - 192 - 160, space*16, 0, obj_tool_selection)
			tool8.image_index = 2
			tool9 = instance_create_depth(room_width - 192 - 160, space*17, 0,  obj_tool_selection)
			tool9.image_index = 4
			tool10 = instance_create_depth(room_width - 192 - 160, space*18, 0,  obj_tool_selection)
			tool10.image_index = 6
			tool11 = instance_create_depth(room_width - 192 - 160, space*19, 0, obj_tool_selection)
			tool11.image_index = 8
			tool12 = instance_create_depth(room_width - 192 - 160, space*20, 0, obj_tool_selection)
			tool12.image_index = 10
			tool13= instance_create_depth(room_width - 192 - 160, space*21, 0,  obj_tool_selection)
			tool13.image_index = 12
			tool14 = instance_create_depth(room_width - 192 - 160, space*22, 0,  obj_tool_selection)
			tool14.image_index = 14
			tool15 = instance_create_depth(room_width - 192 - 96, space*23, 0, obj_tool_selection)
			tool15.image_index = 15
			obj_tool_selection.MaxTools = 1

			instance_destroy(obj_variant_menu)
		}
		break;
		
		case 10:
		{
			obj_player.CharacterRace = "Valenar Elf"
			obj_player.RaceIntelligenceAdded = 1
			obj_player.Speed = 30
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Trance", "Cantrip", "Valenar Elf")
			
			ds_list_add(obj_player.RaceWeaponsList, "Scimitar", "Double Scimitar", "Shortbow", "Longbow")
			
			global.TotalSelection = 3
			
			spell1 = instance_create_depth(room_width - 256 - 96, 32, 0,  obj_wizard_spells)
			spell1.image_index = 0
			spell2 = instance_create_depth(room_width - 256 - 96 + 128, 32, 0,  obj_wizard_spells)
			spell2.image_index = 1
			spell3 = instance_create_depth(room_width - 256 - 96, 64, 0,  obj_wizard_spells)
			spell3.image_index = 2
			spell4 = instance_create_depth(room_width - 256 - 96 + 128, 64, 0,  obj_wizard_spells)
			spell4.image_index = 3
			spell5 = instance_create_depth(room_width - 256 - 96, 96, 0,  obj_wizard_spells)
			spell5.image_index = 4
			spell6 = instance_create_depth(room_width - 256 - 96 + 128, 96, 0,  obj_wizard_spells)
			spell6.image_index = 5
			spell7 = instance_create_depth(room_width - 256 - 96, 128, 0,  obj_wizard_spells)
			spell7.image_index = 6
			spell8 = instance_create_depth(room_width - 256 - 96 + 128, 128, 0,  obj_wizard_spells)
			spell8.image_index = 7
			spell9 = instance_create_depth(room_width - 256 - 96, 160, 0,  obj_wizard_spells)
			spell9.image_index = 8
			spell10 = instance_create_depth(room_width - 256 - 96 + 128, 160, 0,  obj_wizard_spells)
			spell10.image_index = 9
			spell11 = instance_create_depth(room_width - 256 - 96, 192, 0,  obj_wizard_spells)
			spell11.image_index = 10
			spell12 = instance_create_depth(room_width - 256 - 96 + 128, 192, 0,  obj_wizard_spells)
			spell12.image_index = 11
			spell13 = instance_create_depth(room_width - 256 - 96, 224, 0,  obj_wizard_spells)
			spell13.image_index = 12
			spell14 = instance_create_depth(room_width - 256 - 96 + 128, 224, 0,  obj_wizard_spells)
			spell14.image_index = 13
			obj_wizard_spells.MaxSpells = 1
			
			lang1 = instance_create_depth(room_width - 192 - 32, space*12, 0,  obj_language_selection)
			lang1.image_index = 1
			lang2 = instance_create_depth(room_width - 192 - 32, space*13, 0,  obj_language_selection)
			lang2.image_index = 3
			lang3 = instance_create_depth(room_width - 192 - 32, space*14, 0,  obj_language_selection)
			lang3.image_index = 5
			lang4 = instance_create_depth(room_width - 192 - 32, space*15, 0,  obj_language_selection)
			lang4.image_index = 7
			lang5 = instance_create_depth(room_width - 192 - 32, space*16, 0,  obj_language_selection)
			lang5.image_index = 9
			lang6 = instance_create_depth(room_width - 192 - 32, space*17, 0,  obj_language_selection)
			lang6.image_index = 11
			lang7 = instance_create_depth(room_width - 192 - 32, space*18, 0,  obj_language_selection)
			lang7.image_index = 13
			lang8 = instance_create_depth(room_width - 192 - 160, space*12, 0, obj_language_selection)
			lang8.image_index = 2
			lang9 = instance_create_depth(room_width - 192 - 160, space*13, 0,  obj_language_selection)
			lang9.image_index = 4
			lang10 = instance_create_depth(room_width - 192 - 160, space*14, 0,  obj_language_selection)
			lang10.image_index = 6
			lang11 = instance_create_depth(room_width - 192 - 160, space*15, 0, obj_language_selection)
			lang11.image_index = 8
			lang12 = instance_create_depth(room_width - 192 - 160, space*16, 0, obj_language_selection)
			lang12.image_index = 10
			lang13= instance_create_depth(room_width - 192 - 160, space*17, 0,  obj_language_selection)
			lang13.image_index = 12
			lang14 = instance_create_depth(room_width - 192 - 160, space*18, 0,  obj_language_selection)
			lang14.image_index = 14
			lang15 = instance_create_depth(room_width - 192 - 96, space*19, 0, obj_language_selection)
			lang15.image_index = 15
			obj_language_selection.MaxLang = 1
			
			instance_destroy(obj_variant_menu)
		}
		break;
		
		case 11:
		{
			obj_player.CharacterRace = "Aereni Wood Elf"
			obj_player.RaceWisdomAdded = 1
			obj_player.Speed = 35
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Trance", "Aereni Elf", "Fleet of Foot", "Mask of the Wild")
			
			global.TotalSelection = 2
			
			tool1 = instance_create_depth(room_width - 256 - 96, 32, 0,  obj_tool_selection)
			tool1.image_index = 0
			tool2 = instance_create_depth(room_width - 256 - 96 + 128, 32, 0,  obj_tool_selection)
			tool2.image_index = 1
			tool3 = instance_create_depth(room_width - 256 - 96, 64, 0,  obj_tool_selection)
			tool3.image_index = 2
			tool4 = instance_create_depth(room_width - 256 - 96 + 128, 64, 0,  obj_tool_selection)
			tool4.image_index = 3
			tool5 = instance_create_depth(room_width - 256 - 96, 96, 0,  obj_tool_selection)
			tool5.image_index = 4
			tool6 = instance_create_depth(room_width - 256 - 96 + 128, 96, 0,  obj_tool_selection)
			tool6.image_index = 5
			tool7 = instance_create_depth(room_width - 256 - 96, 128, 0,  obj_tool_selection)
			tool7.image_index = 6
			tool8 = instance_create_depth(room_width - 256 - 96 + 128, 128, 0,  obj_tool_selection)
			tool8.image_index = 7
			tool9 = instance_create_depth(room_width - 256 - 96, 160, 0,  obj_tool_selection)
			tool9.image_index = 8
			tool10 = instance_create_depth(room_width - 256 - 96 + 128, 160, 0, obj_tool_selection)
			tool10.image_index = 9
			tool11 = instance_create_depth(room_width - 256 - 96, 192, 0, obj_tool_selection)
			tool11.image_index = 10
			tool12 = instance_create_depth(room_width - 256 - 96 + 128, 192, 0, obj_tool_selection)
			tool12.image_index = 11
			tool13 = instance_create_depth(room_width - 256 - 96, 224, 0, obj_tool_selection)
			tool13.image_index = 12
			tool14 = instance_create_depth(room_width - 256 - 96 + 128, 224, 0, obj_tool_selection)
			tool14.image_index = 13
			tool15 = instance_create_depth(room_width - 256 - 96, 256, 0, obj_tool_selection)
			tool15.image_index = 14
			tool16 = instance_create_depth(room_width - 256 - 96 + 128, 256, 0, obj_tool_selection)
			tool16.image_index = 15
			tool17 = instance_create_depth(room_width - 256 - 96, 288, 0, obj_tool_selection)
			tool17.image_index = 16
			tool18 = instance_create_depth(room_width - 256 - 96 + 128, 288, 0, obj_tool_selection)
			tool18.image_index = 17
			obj_tool_selection.MaxTools = 1
			
			skill1 = instance_create_depth(room_width - 192 - 32, space*12, 0,  obj_skill_selection)
			skill1.image_index = 1
			skill2 = instance_create_depth(room_width - 192 - 32, space*13, 0,  obj_skill_selection)
			skill2.image_index = 3
			skill3 = instance_create_depth(room_width - 192 - 32, space*14, 0, obj_skill_selection)
			skill3.image_index = 5
			skill4 = instance_create_depth(room_width - 192 - 32, space*15, 0, obj_skill_selection)
			skill4.image_index = 7
			skill5 = instance_create_depth(room_width - 192 - 32, space*16, 0, obj_skill_selection)
			skill5.image_index = 9
			skill6 = instance_create_depth(room_width - 192 - 32, space*17, 0, obj_skill_selection)
			skill6.image_index = 11
			skill7 = instance_create_depth(room_width - 192 - 32, space*18, 0, obj_skill_selection)
			skill7.image_index = 13
			skill8 = instance_create_depth(room_width - 192 - 160, space*12, 0, obj_skill_selection)
			skill8.image_index = 2
			skill9 = instance_create_depth(room_width - 192 - 160, space*13, 0, obj_skill_selection)
			skill9.image_index = 4
			skill10 = instance_create_depth(room_width - 192 - 160, space*14, 0, obj_skill_selection)
			skill10.image_index = 6
			skill11 = instance_create_depth(room_width - 192 - 160, space*15, 0, obj_skill_selection)
			skill11.image_index = 8
			skill12 = instance_create_depth(room_width - 192 - 160, space*16, 0, obj_skill_selection)
			skill12.image_index = 10
			skill13= instance_create_depth(room_width - 192 - 160, space*17, 0,  obj_skill_selection)
			skill13.image_index = 12
			skill14 = instance_create_depth(room_width - 192 - 160, space*18, 0,  obj_skill_selection)
			skill14.image_index = 14
			skill15 = instance_create_depth(room_width - 192 - 160, space*19, 0, obj_skill_selection)
			skill15.image_index = 15
			skill16 = instance_create_depth(room_width - 192 - 32, space*19, 0,  obj_skill_selection)
			skill16.image_index = 16
			skill17 = instance_create_depth(room_width - 192 - 96, space*20, 0, obj_skill_selection)
			skill17.image_index = 17
			obj_skill_selection.MaxSkills = 1
			
			instance_destroy(obj_variant_menu)
		}
		break;
		
		case 12:
		{
			obj_player.CharacterRace = "Valenar Wood Elf"
			obj_player.RaceWisdomAdded = 1
			obj_player.Speed = 35
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Trance", "Valenar Elf", "Fleet of Foot", "Mask of the Wild")
			
			ds_list_add(obj_player.RaceWeaponsList, "Scimitar", "Double Scimitar", "Longbow", "Shortbow")
		}
		break;
		
		case 13:
		{
			obj_player.CharacterRace = "Sea Elf"
			obj_player.RaceConstitutionAdded = 1
			obj_player.Speed = 30
			obj_player.Swim = true
			obj_player.SwimSpeed = 30
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Trance", "Sea Elf Training", "Child of the Sea", "Friend of the Sea")
			
			ds_list_add(obj_player.RaceLanguagesList, "Aquan")
			
			ds_list_add(obj_player.RaceWeaponsList, "Spear", "Trident", "Light Crossbow", "Net")
		}
		break;
		
		case 14:
		{
			obj_player.CharacterRace = "Shadar-Kai Elf"
			obj_player.RaceConstitutionAdded = 1
			obj_player.Speed = 30
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Trance", "Necrotic Resistance", "Blessings of the Raven Queen")
		}
		break;
		
		case 15:
		{
			obj_player.CharacterRace = "Dark Elf"
			obj_player.RaceCharismaAdded = 1
			obj_player.Speed = 30
			
			ds_list_add(obj_player.RaceCantrips, "Dancing Lights")
			
			ds_list_add(obj_player.RaceTraitsList, "Superior Darkvision", "Trance", "Sunlight Sensitivity", "Drow Magic", "Drow Weapon Training")
			
			ds_list_add(obj_player.RaceWeaponsList, "Rapiers", "Shortswords", "Hand Crossbow")
		}
		break;
		
		//Genasi - 4 variants
		case 16:
		{
			obj_player.CharacterRace = "Air Genasi"
			obj_player.RaceDexterityAdded = 1
			
			ds_list_add(obj_player.Race2ndMagic, "Levitate")
			
			ds_list_add(obj_player.RaceTraitsList, "Unending Breath", "Mingle with the Wind")
			
		}
		break;
		
		case 17:
		{
			obj_player.CharacterRace = "Earth Genasi"
			obj_player.RaceStrengthAdded = 1		
			
			ds_list_add(obj_player.Race2ndMagic, "Pass Without Trace")
			
			ds_list_add(obj_player.RaceTraitsList, "Earth Walk", "Merge with Stone")
			
		}
		break;
		
		case 18:
		{
			obj_player.CharacterRace = "Fire Genasi"
			obj_player.RaceIntelligenceAdded = 1
			
			ds_list_add(obj_player.RaceCantrips, "Produce Flame")
			
			ds_list_add(obj_player.RaceTraitsList, "Fire Resistance", "Reach to the Blaze")
		}
		break;
		
		case 19:
		{
			obj_player.CharacterRace = "Water Genasi"
			obj_player.RaceWisdomAdded = 1
			
			ds_list_add(obj_player.RaceCantrips, "Shape Water")
			
			ds_list_add(obj_player.RaceTraitsList, "Amphibious", "Call to the Wave", "Acid Resistance")
		}
		break;
		
		//Gith - 2 variants
		case 20:
		{
			obj_player.CharacterRace = "Githyanki"
			obj_player.RaceStrengthAdded = 2
			
			ds_list_add(obj_player.RaceTraitsList, "Decadent Mastery", "Martial Prodigy", "Githyanki Psionics")
			
			ds_list_add(obj_player.RaceWeaponsList, "Shortswords", "Longswords", "Greatswords")
			
			ds_list_add(obj_player.RaceArmorList, "Light Armor", "Medium Armor")
			
			ds_list_add(obj_player.RaceCantrips, "Mage Hand")
			
			global.TotalSelection = 3
			
			tool1 = instance_create_depth(room_width - 400, space, 0,  obj_tool_selection)
			tool1.image_index = 0
			tool2 = instance_create_depth(room_width - 400 + 128, space, 0,  obj_tool_selection)
			tool2.image_index = 1
			tool3 = instance_create_depth(room_width - 400 + 128 + 128, space, 0,  obj_tool_selection)
			tool3.image_index = 2
			tool4 = instance_create_depth(room_width - 400, space*2, 0,  obj_tool_selection)
			tool4.image_index = 3
			tool5 = instance_create_depth(room_width - 400 + 128, space*2, 0,  obj_tool_selection)
			tool5.image_index = 4
			tool6 = instance_create_depth(room_width - 400 + 128 + 128, space*2, 0,  obj_tool_selection)
			tool6.image_index = 5
			tool7 = instance_create_depth(room_width - 400, space*3, 0,  obj_tool_selection)
			tool7.image_index = 6
			tool8 = instance_create_depth(room_width - 400 + 128, space*3, 0,  obj_tool_selection)
			tool8.image_index = 7
			tool9 = instance_create_depth(room_width - 400 + 128 + 128, space*3, 0,  obj_tool_selection)
			tool9.image_index = 8
			tool10 = instance_create_depth(room_width - 400, space*4, 0, obj_tool_selection)
			tool10.image_index = 9
			tool11 = instance_create_depth(room_width - 400 + 128, space*4, 0, obj_tool_selection)
			tool11.image_index = 10
			tool12 = instance_create_depth(room_width - 400 + 128 + 128, space*4, 0, obj_tool_selection)
			tool12.image_index = 11
			tool13 = instance_create_depth(room_width - 400, space*5, 0, obj_tool_selection)
			tool13.image_index = 12
			tool14 = instance_create_depth(room_width - 400 + 128, space*5, 0, obj_tool_selection)
			tool14.image_index = 13
			tool15 = instance_create_depth(room_width - 400 + 128 + 128, space*5, 0, obj_tool_selection)
			tool15.image_index = 14
			tool16 = instance_create_depth(room_width - 400, space*6, 0, obj_tool_selection)
			tool16.image_index = 15
			tool17 = instance_create_depth(room_width - 400 + 128, space*6, 0, obj_tool_selection)
			tool17.image_index = 16
			tool18 = instance_create_depth(room_width - 400 + 128 + 128, space*6, 0, obj_tool_selection)
			tool18.image_index = 17
			obj_tool_selection.MaxTools = 1
			
			skill1 = instance_create_depth(room_width - 192 - 32, space*7, 0,  obj_skill_selection)
			skill1.image_index = 1
			skill2 = instance_create_depth(room_width - 192 - 32, space*8, 0,  obj_skill_selection)
			skill2.image_index = 3
			skill3 = instance_create_depth(room_width - 192 - 32, space*9, 0, obj_skill_selection)
			skill3.image_index = 5
			skill4 = instance_create_depth(room_width - 192 - 32, space*10, 0, obj_skill_selection)
			skill4.image_index = 7
			skill5 = instance_create_depth(room_width - 192 - 32, space*11, 0, obj_skill_selection)
			skill5.image_index = 9
			skill6 = instance_create_depth(room_width - 192 - 32, space*12, 0, obj_skill_selection)
			skill6.image_index = 11
			skill7 = instance_create_depth(room_width - 192 - 32, space*13, 0, obj_skill_selection)
			skill7.image_index = 13
			skill8 = instance_create_depth(room_width - 192 - 160, space*7, 0, obj_skill_selection)
			skill8.image_index = 2
			skill9 = instance_create_depth(room_width - 192 - 160, space*8, 0, obj_skill_selection)
			skill9.image_index = 4
			skill10 = instance_create_depth(room_width - 192 - 160, space*9, 0, obj_skill_selection)
			skill10.image_index = 6
			skill11 = instance_create_depth(room_width - 192 - 160, space*10, 0, obj_skill_selection)
			skill11.image_index = 8
			skill12 = instance_create_depth(room_width - 192 - 160, space*11, 0, obj_skill_selection)
			skill12.image_index = 10
			skill13= instance_create_depth(room_width - 192 - 160, space*12, 0,  obj_skill_selection)
			skill13.image_index = 12
			skill14 = instance_create_depth(room_width - 192 - 160, space*13, 0,  obj_skill_selection)
			skill14.image_index = 14
			skill15 = instance_create_depth(room_width - 192 - 160, space*14, 0, obj_skill_selection)
			skill15.image_index = 15
			skill16 = instance_create_depth(room_width - 192 - 32, space*14, 0,  obj_skill_selection)
			skill16.image_index = 16
			skill17 = instance_create_depth(room_width - 192 - 96, space*15, 0, obj_skill_selection)
			skill17.image_index = 17
			obj_skill_selection.MaxSkills = 1
			
			lang1 = instance_create_depth(room_width - 192 - 32, space*16, 0,  obj_language_selection)
			lang1.image_index = 1
			lang2 = instance_create_depth(room_width - 192 - 32, space*17, 0,  obj_language_selection)
			lang2.image_index = 3
			lang3 = instance_create_depth(room_width - 192 - 32, space*18, 0,  obj_language_selection)
			lang3.image_index = 5
			lang4 = instance_create_depth(room_width - 192 - 32, space*19, 0,  obj_language_selection)
			lang4.image_index = 7
			lang5 = instance_create_depth(room_width - 192 - 32, space*20, 0,  obj_language_selection)
			lang5.image_index = 9
			lang6 = instance_create_depth(room_width - 192 - 32, space*21, 0,  obj_language_selection)
			lang6.image_index = 11
			lang7 = instance_create_depth(room_width - 192 - 32, space*22, 0,  obj_language_selection)
			lang7.image_index = 13
			lang8 = instance_create_depth(room_width - 192 - 160, space*16, 0, obj_language_selection)
			lang8.image_index = 2
			lang9 = instance_create_depth(room_width - 192 - 160, space*17, 0,  obj_language_selection)
			lang9.image_index = 4
			lang10 = instance_create_depth(room_width - 192 - 160, space*18, 0,  obj_language_selection)
			lang10.image_index = 6
			lang11 = instance_create_depth(room_width - 192 - 160, space*19, 0, obj_language_selection)
			lang11.image_index = 8
			lang12 = instance_create_depth(room_width - 192 - 160, space*20, 0, obj_language_selection)
			lang12.image_index = 10
			lang13= instance_create_depth(room_width - 192 - 160, space*21, 0,  obj_language_selection)
			lang13.image_index = 12
			lang14 = instance_create_depth(room_width - 192 - 160, space*22, 0,  obj_language_selection)
			lang14.image_index = 14
			lang15 = instance_create_depth(room_width - 192 - 96, space*23, 0, obj_language_selection)
			lang15.image_index = 15
			obj_language_selection.MaxLang = 1
			
			instance_destroy(obj_variant_menu)
		}
		break;
		
		case 21:
		{
			obj_player.CharacterRace = "Githzerai"
			obj_player.RaceWisdomAdded = 2
			
			ds_list_add(obj_player.RaceTraitsList, "Mental Discipline", "Githzerai Psionics")
			
			ds_list_add(obj_player.RaceCantrips, "Mage Hand")
			
		}
		break;
		
		//Gnome - 4 variants
		case 22:
		{
			obj_player.CharacterRace = "Forest Gnome"
			obj_player.RaceDexterityAdded = 1
			
			ds_list_add(obj_player.RaceCantrips, "Minor Illusion")
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Natural Illusionist", "Speak with Small Beast")
			
		}
		break;
		
		case 23:
		{
			obj_player.CharacterRace = "Rock Gnome"
			obj_player.RaceConstitutionAdded = 1
			
			ds_list_add(obj_player.RaceToolsList, "Tinker's Tools")
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Artificier's Lore", "Tinker")
			
		}
		break;
		
		case 24:
		{
			obj_player.CharacterRace = "Deep Gnome"
			obj_player.RaceDexterityAdded = 1
			
			ds_list_add(obj_player.RaceTraitsList, "Superior Darkvision", "Stone Camouflage")
			
			ds_list_add(obj_player.RaceLanguagesList, "Undercommon")
			
		}
		break;
		
		case 25:
		{
			obj_player.CharacterRace = "Scribing Gnome"
			obj_player.RaceCharismaAdded = 1
			
			global.TotalSelection = 2
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Gifted Scribe", "Whispering Wind", "Scribe's Insight")
			
			lang1 = instance_create_depth(room_width - 192 - 32, space*12, 0,  obj_language_selection)
			lang1.image_index = 1
			lang2 = instance_create_depth(room_width - 192 - 32, space*13, 0,  obj_language_selection)
			lang2.image_index = 3
			lang3 = instance_create_depth(room_width - 192 - 32, space*14, 0,  obj_language_selection)
			lang3.image_index = 5
			lang4 = instance_create_depth(room_width - 192 - 32, space*15, 0,  obj_language_selection)
			lang4.image_index = 7
			lang5 = instance_create_depth(room_width - 192 - 32, space*16, 0,  obj_language_selection)
			lang5.image_index = 9
			lang6 = instance_create_depth(room_width - 192 - 32, space*17, 0,  obj_language_selection)
			lang6.image_index = 11
			lang7 = instance_create_depth(room_width - 192 - 32, space*18, 0,  obj_language_selection)
			lang7.image_index = 13
			lang8 = instance_create_depth(room_width - 192 - 160, space*12, 0, obj_language_selection)
			lang8.image_index = 2
			lang9 = instance_create_depth(room_width - 192 - 160, space*13, 0,  obj_language_selection)
			lang9.image_index = 4
			lang10 = instance_create_depth(room_width - 192 - 160, space*14, 0,  obj_language_selection)
			lang10.image_index = 6
			lang11 = instance_create_depth(room_width - 192 - 160, space*15, 0, obj_language_selection)
			lang11.image_index = 8
			lang12 = instance_create_depth(room_width - 192 - 160, space*16, 0, obj_language_selection)
			lang12.image_index = 10
			lang13= instance_create_depth(room_width - 192 - 160, space*17, 0,  obj_language_selection)
			lang13.image_index = 12
			lang14 = instance_create_depth(room_width - 192 - 160, space*18, 0,  obj_language_selection)
			lang14.image_index = 14
			lang15 = instance_create_depth(room_width - 192 - 96, space*19, 0, obj_language_selection)
			lang15.image_index = 15
			obj_language_selection.MaxLang = 1
			
			ds_list_add(obj_player.RaceToolsList, "Calligrapher's Supplies", "Forgery Kit")
			
			ds_list_add(obj_player.RaceCantrips, "Message")
			
			ds_list_add(obj_player.Race1stMagic, "Comprehend Languages")
			
		}
		break;
		
		//Half-Elf - 7 variants
		case 26:
		{
			ds_list_add(obj_player.RaceTraitsList, "Skill Versatility")
			
			global.TotalSelection = 5
			
			skill1 = instance_create_depth(room_width - 192 - 32, space*12, 0,  obj_skill_selection)
			skill1.image_index = 1
			skill2 = instance_create_depth(room_width - 192 - 32, space*13, 0,  obj_skill_selection)
			skill2.image_index = 3
			skill3 = instance_create_depth(room_width - 192 - 32, space*14, 0, obj_skill_selection)
			skill3.image_index = 5
			skill4 = instance_create_depth(room_width - 192 - 32, space*15, 0, obj_skill_selection)
			skill4.image_index = 7
			skill5 = instance_create_depth(room_width - 192 - 32, space*16, 0, obj_skill_selection)
			skill5.image_index = 9
			skill6 = instance_create_depth(room_width - 192 - 32, space*17, 0, obj_skill_selection)
			skill6.image_index = 11
			skill7 = instance_create_depth(room_width - 192 - 32, space*18, 0, obj_skill_selection)
			skill7.image_index = 13
			skill8 = instance_create_depth(room_width - 192 - 160, space*12, 0, obj_skill_selection)
			skill8.image_index = 2
			skill9 = instance_create_depth(room_width - 192 - 160, space*13, 0, obj_skill_selection)
			skill9.image_index = 4
			skill10 = instance_create_depth(room_width - 192 - 160, space*14, 0, obj_skill_selection)
			skill10.image_index = 6
			skill11 = instance_create_depth(room_width - 192 - 160, space*15, 0, obj_skill_selection)
			skill11.image_index = 8
			skill12 = instance_create_depth(room_width - 192 - 160, space*16, 0, obj_skill_selection)
			skill12.image_index = 10
			skill13= instance_create_depth(room_width - 192 - 160, space*17, 0,  obj_skill_selection)
			skill13.image_index = 12
			skill14 = instance_create_depth(room_width - 192 - 160, space*18, 0,  obj_skill_selection)
			skill14.image_index = 14
			skill15 = instance_create_depth(room_width - 192 - 160, space*19, 0, obj_skill_selection)
			skill15.image_index = 15
			skill16 = instance_create_depth(room_width - 192 - 32, space*19, 0,  obj_skill_selection)
			skill16.image_index = 16
			skill17 = instance_create_depth(room_width - 192 - 96, space*20, 0, obj_skill_selection)
			skill17.image_index = 17
			obj_skill_selection.MaxSkills = 2
			
			instance_destroy(obj_variant_menu)
		}
		break;
		
		case 27:
		{
			ds_list_add(obj_player.RaceTraitsList, "Elf Weapon Training")
			
			ds_list_add(obj_player.RaceWeaponsList, "Longswords", "Shortswords", "Longbow", "Shortbow")
			
		}
		break;
		
		case 28:
		{
			
			ds_list_add(obj_player.RaceTraitsList, "Cantrip")
			
			global.TotalSelection = 4
			
			spell1 = instance_create_depth(room_width - 192 - 32, space*12, 0,  obj_wizard_spells)
			spell1.image_index = 1
			spell2 = instance_create_depth(room_width - 192 - 32, space*13, 0,  obj_wizard_spells)
			spell2.image_index = 3
			spell3 = instance_create_depth(room_width - 192 - 32, space*14, 0, obj_wizard_spells)
			spell3.image_index = 5
			spell4 = instance_create_depth(room_width - 192 - 32, space*15, 0, obj_wizard_spells)
			spell4.image_index = 7
			spell5 = instance_create_depth(room_width - 192 - 32, space*16, 0, obj_wizard_spells)
			spell5.image_index = 9
			spell6 = instance_create_depth(room_width - 192 - 32, space*17, 0, obj_wizard_spells)
			spell6.image_index = 11
			spell7 = instance_create_depth(room_width - 192 - 32, space*18, 0, obj_wizard_spells)
			spell7.image_index = 13
			spell8 = instance_create_depth(room_width - 192 - 160, space*12, 0, obj_wizard_spells)
			spell8.image_index = 2
			spell9 = instance_create_depth(room_width - 192 - 160, space*13, 0, obj_wizard_spells)
			spell9.image_index = 4
			spell10 = instance_create_depth(room_width - 192 - 160, space*14, 0, obj_wizard_spells)
			spell10.image_index = 6
			spell11 = instance_create_depth(room_width - 192 - 160, space*15, 0, obj_wizard_spells)
			spell11.image_index = 8
			spell12 = instance_create_depth(room_width - 192 - 160, space*16, 0, obj_wizard_spells)
			spell12.image_index = 10
			spell13= instance_create_depth(room_width - 192 - 160, space*17, 0,  obj_wizard_spells)
			spell13.image_index = 12
			spell14 = instance_create_depth(room_width - 192 - 160, space*18, 0,  obj_wizard_spells)
			spell14.image_index = 0
			obj_wizard_spells.MaxSpells = 1
			
			instance_destroy(obj_variant_menu)
			
		}
		break;
		
		case 29:
		{
			obj_player.Speed = 35
			
			ds_list_add(obj_player.RaceTraitsList, "Fleet of Foot")
			
		}
		break;
		
		case 30:
		{
			
			ds_list_add(obj_player.RaceTraitsList, "Mask of the Wild")
			
		}
		break;
		
		case 31:
		{
			ds_list_add(obj_player.RaceCantrips, "Dancing Lights")
			
			ds_list_add(obj_player.RaceTraitsList, "Drow Magic")
			
		}
		break;
		
		case 32:
		{
			obj_player.Swim = true
			obj_player.SwimSpeed = 30
			
			ds_list_add(obj_player.RaceTraitsList, "Swim Speed")
			
		}
		break;
		
		//Halfling - 4 variants
		case 33:
		{
			obj_player.CharacterRace = "Lightfoot Halfling"
			obj_player.RaceCharismaAdded = 1
			
			ds_list_add(obj_player.RaceTraitsList, "Naturally Stealthy")
			
		}
		break;
		
		case 34:
		{
			obj_player.CharacterRace = "Stout Halfling"
			obj_player.RaceConstitutionAdded = 1
			
			ds_list_add(obj_player.RaceTraitsList, "Stout Resilience")
		}
		break;
		
		case 35:
		{
			obj_player.CharacterRace = "Ghallanda Halfling"
			obj_player.RaceCharismaAdded = 1
			
			ds_list_add(obj_player.RaceTraitsList, "Innkeeper's Charm", "Ever Hospitable")
			
			ds_list_add(obj_player.RaceCantrips, "Friends", "Prestidigitation")
			
		}
		break;
		
		case 36:
		{
			obj_player.CharacterRace = "Jorasco Halfling"
			obj_player.RaceWisdomAdded = 1
			
			ds_list_add(obj_player.RaceTraitsList, "Medical Intuition", "Healing Touch", "Jorasco's Blessing")
			
			ds_list_add(obj_player.RaceCantrips, "Spare the Dying")
			
		}
		break;
		
		//Half-Orc - 2 variants
		case 37:
		{
			obj_player.CharacterRace = "Half-Orc"
			
			ds_list_add(obj_player.RaceTraitsList, "Relentless Endurance", "Savage Attacks")
			
		}
		break;
		
		case 38:
		{
			obj_player.CharacterRace = "Dragonmarked Half-Orc"
			
			ds_list_add(obj_player.TraitsList, "Hunter's Intuition", "Imprint Prey", "Nature's Voice")
			
		}
		break;
		
		//Human - 6 variants
		case 39:
		{
			obj_player.CharacterRace = "Human"
			obj_player.RaceStrengthAdded = 1
			obj_player.RaceDexterityAdded = 1
			obj_player.RaceIntelligenceAdded = 1
			obj_player.RaceConstitutionAdded = 1
			obj_player.RaceWisdomAdded = 1
			obj_player.RaceCharismaAdded = 1
			
		}
		break;
		
		case 40:
		{
			obj_player.CharacterRace = "Cannith Human"
			
			global.TotalSelection = 3
			
			stat1 = instance_create_depth(room_width - 256 - 64, space*9, 0, obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(room_width - 256 - 64 + 128, space*9, 0, obj_stat_menu)
			stat2.image_index = 3
			obj_stat_menu.MaxStats = 1
			
			obj_player.RaceDexterityAdded += 1
			obj_player.RaceIntelligenceAdded += 1
			
			ds_list_add(obj_player.RaceCantrips, "Mending")
			
			ds_list_add(obj_player.RaceTraitsList, "Artisan's Intuition", "Maker's Gift", "Magecraft", "Spellsmith")
			
			instance_destroy(obj_variant_menu)
			
		}
		break;
		
		case 41:
		{
			obj_player.CharacterRace = "Vadalis Human"
			
			global.TotalSelection = 3
			
			stat1 = instance_create_depth(room_width - 256 - 64, space*9, 0, obj_stat_menu)
			stat1.image_index = 0
			stat2 = instance_create_depth(room_width - 256 - 64 + 128, space*9, 0, obj_stat_menu)
			stat2.image_index = 1
			stat3 = instance_create_depth(room_width - 256 - 64, space*10, 0, obj_stat_menu)
			stat3.image_index = 2
			stat4 = instance_create_depth(room_width - 256 - 64 + 128, space*10, 0, obj_stat_menu)
			stat4.image_index = 3
			stat5 = instance_create_depth(room_width - 256 - 64, space*11, 0, obj_stat_menu)
			stat5.image_index = 4
			stat6 = instance_create_depth(room_width - 256 - 64 + 128, space*11, 0, obj_stat_menu)
			stat6.image_index = 5
			obj_stat_menu.MaxStats = 1
			
			obj_player.RaceDexterityAdded += 1
			obj_player.RaceWisdomAdded += 1
			
			ds_list_add(obj_player.Race1stMagic, "Animal Friendship")
			
			ds_list_add(obj_player.RaceTraitsList, "Wild Intuition", "Expert Handling", "Primal Connection", "The Bigger They Are")
			
			instance_destroy(obj_variant_menu)
		}
		break;
		
		case 42:
		{
			obj_player.CharacterRace = "Orien Human"
			obj_player.RaceDexterityAdded += 2
			obj_player.Speed = 40
			
			global.TotalSelection = 3
			
			stat1 = instance_create_depth(room_width - 256 - 64, space*9, 0, obj_stat_menu)
			stat1.image_index = 0
			stat2 = instance_create_depth(room_width - 256 - 64 + 128, space*9, 0, obj_stat_menu)
			stat2.image_index = 1
			stat3 = instance_create_depth(room_width - 256 - 64, space*10, 0, obj_stat_menu)
			stat3.image_index = 2
			stat4 = instance_create_depth(room_width - 256 - 64 + 128, space*10, 0, obj_stat_menu)
			stat4.image_index = 3
			stat5 = instance_create_depth(room_width - 256 - 64, space*11, 0, obj_stat_menu)
			stat5.image_index = 4
			stat6 = instance_create_depth(room_width - 256 - 64 + 128, space*11, 0, obj_stat_menu)
			stat6.image_index = 5
			obj_stat_menu.MaxStats = 1
			
			ds_list_add(obj_player.TraitsList, "Courier's Speed", "Intuitive Motion", "Orien's Grace", "Shared Passage")
			
			instance_destroy(obj_variant_menu)
		}
		break;
		
		case 43:
		{
			obj_player.CharacterRace = "Deneith Human"
			
			global.TotalSelection = 3
			
			stat1 = instance_create_depth(room_width - 256 - 64, space*9, 0, obj_stat_menu)
			stat1.image_index = 0
			stat2 = instance_create_depth(room_width - 256 - 64 + 128, space*9, 0, obj_stat_menu)
			stat2.image_index = 1
			stat3 = instance_create_depth(room_width - 256 - 64, space*10, 0, obj_stat_menu)
			stat3.image_index = 2
			stat4 = instance_create_depth(room_width - 256 - 64 + 128, space*10, 0, obj_stat_menu)
			stat4.image_index = 3
			stat5 = instance_create_depth(room_width - 256 - 64, space*11, 0, obj_stat_menu)
			stat5.image_index = 4
			stat6 = instance_create_depth(room_width - 256 - 64 + 128, space*11, 0, obj_stat_menu)
			stat6.image_index = 5
			obj_stat_menu.MaxStats = 1
			
			obj_player.RaceStrengthAdded += 1
			obj_player.RaceWisdomAdded += 1
			
			ds_list_add(obj_player.RaceCantrips, "Blade Ward")
			
			ds_list_add(obj_player.Race1stMagic, "Shield")
			
			ds_list_add(obj_player.RaceTraitsList, "Sentinel's Intuition", "Sentinel's Shield", "Vigilant Guardian")
			
			instance_destroy(obj_variant_menu)
		}
		break;
		
		case 44:
		{
			obj_player.CharacterRace = "Dragonmarked Human"
			
			global.TotalSelection = 3
			
			stat1 = instance_create_depth(room_width - 256 - 64, space*9, 0, obj_stat_menu)
			stat1.image_index = 0
			stat2 = instance_create_depth(room_width - 256 - 64 + 128, space*9, 0, obj_stat_menu)
			stat2.image_index = 1
			stat3 = instance_create_depth(room_width - 256 - 64, space*10, 0, obj_stat_menu)
			stat3.image_index = 2
			stat4 = instance_create_depth(room_width - 256 - 64 + 128, space*10, 0, obj_stat_menu)
			stat4.image_index = 3
			stat5 = instance_create_depth(room_width - 256 - 64, space*11, 0, obj_stat_menu)
			stat5.image_index = 4
			stat6 = instance_create_depth(room_width - 256 - 64 + 128, space*11, 0, obj_stat_menu)
			stat6.image_index = 5
			obj_stat_menu.MaxStats = 1
			
			obj_player.RaceDexterityAdded += 1
			obj_player.RaceWisdomAdded += 1
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Hunter's Intuition", "Imprint Prey", "Nature's Voice")
			
			ds_list_add(obj_player.RaceLanguagesList, "Goblin")
			
			instance_destroy(obj_variant_menu)
		}
		break;
		
		//Shifter - 4 variants Add Shifting features eventually
		case 45:
		{
			obj_player.CharacterRace = "Beasthide Shifter"
			obj_player.RaceConstitutionAdded = 2
			obj_player.Speed = 30
			
			obj_player.RaceProficiencyAthletics = true
			
			ds_list_add(obj_player.RaceTraitsList, "Tough")
			
		}
		break;
		
		case 46:
		{
			obj_player.CharacterRace = "Longtooth Shifter"
			obj_player.RaceStrengthAdded = 2
			obj_player.Speed = 30
			
			obj_player.RaceProficiencyIntimidation = true
			
			ds_list_add(obj_player.RaceTraitsList, "Fierce")
			
		}
		break;
		
		case 47:
		{
			obj_player.CharacterRace = "Swiftstride Shifter"
			obj_player.RaceCharismaAdded = 1
			obj_player.Speed = 35
			
			obj_player.RaceProficiencyAcrobatics = true
			
			ds_list_add(obj_player.RaceTraitsList, "Graceful")
			
		}
		break;
		
		case 48:
		{
			obj_player.CharacterRace = "Wildhunt Shifter"
			obj_player.RaceWisdomAdded = 2
			obj_player.Speed = 30
			
			obj_player.RaceProficiencySurvival = true
			
			ds_list_add(obj_player.RaceTraitsList, "Natural Tracker", "Mark of the Scent")
			
		}
		break;
		
		//Warforged - 3 variants
		case 49:
		{
			obj_player.CharacterRace = "Warforged Envoy"
			
			global.TotalSelection = 4
			
			stat1 = instance_create_depth(room_width - 256 - 64, space*8, 0, obj_stat_menu)
			stat1.image_index = 0
			stat2 = instance_create_depth(room_width - 256 - 64 + 128, space*8, 0, obj_stat_menu)
			stat2.image_index = 1
			stat3 = instance_create_depth(room_width - 256 - 64, space*9, 0, obj_stat_menu)
			stat3.image_index = 2
			stat4 = instance_create_depth(room_width - 256 - 64 + 128, space*9, 0, obj_stat_menu)
			stat4.image_index = 3
			stat5 = instance_create_depth(room_width - 256 - 64, space*10, 0, obj_stat_menu)
			stat5.image_index = 4
			stat6 = instance_create_depth(room_width - 256 - 64 + 128, space*10, 0, obj_stat_menu)
			stat6.image_index = 5
			obj_stat_menu.MaxStats = 1
			
			obj_player.Speed = 30
			
			ds_list_add(obj_player.RaceTraitsList, "Specialized Design", "Integrated Tool")
			
			lang1 = instance_create_depth(room_width - 192 - 32, space*12, 0,  obj_language_selection)
			lang1.image_index = 1
			lang2 = instance_create_depth(room_width - 192 - 32, space*13, 0,  obj_language_selection)
			lang2.image_index = 3
			lang3 = instance_create_depth(room_width - 192 - 32, space*14, 0,  obj_language_selection)
			lang3.image_index = 5
			lang4 = instance_create_depth(room_width - 192 - 32, space*15, 0,  obj_language_selection)
			lang4.image_index = 7
			lang5 = instance_create_depth(room_width - 192 - 32, space*16, 0,  obj_language_selection)
			lang5.image_index = 9
			lang6 = instance_create_depth(room_width - 192 - 32, space*17, 0,  obj_language_selection)
			lang6.image_index = 11
			lang7 = instance_create_depth(room_width - 192 - 32, space*18, 0,  obj_language_selection)
			lang7.image_index = 13
			lang8 = instance_create_depth(room_width - 192 - 160, space*12, 0, obj_language_selection)
			lang8.image_index = 2
			lang9 = instance_create_depth(room_width - 192 - 160, space*13, 0,  obj_language_selection)
			lang9.image_index = 4
			lang10 = instance_create_depth(room_width - 192 - 160, space*14, 0,  obj_language_selection)
			lang10.image_index = 6
			lang11 = instance_create_depth(room_width - 192 - 160, space*15, 0, obj_language_selection)
			lang11.image_index = 8
			lang12 = instance_create_depth(room_width - 192 - 160, space*16, 0, obj_language_selection)
			lang12.image_index = 10
			lang13= instance_create_depth(room_width - 192 - 160, space*17, 0,  obj_language_selection)
			lang13.image_index = 12
			lang14 = instance_create_depth(room_width - 192 - 160, space*18, 0,  obj_language_selection)
			lang14.image_index = 14
			lang15 = instance_create_depth(room_width - 192 - 96, space*19, 0, obj_language_selection)
			lang15.image_index = 15
			obj_language_selection.MaxLang = 1
			
			tool1 = instance_create_depth(room_width - 400, space, 0,  obj_tool_selection)
			tool1.image_index = 0
			tool2 = instance_create_depth(room_width - 400 + 128, space, 0,  obj_tool_selection)
			tool2.image_index = 1
			tool3 = instance_create_depth(room_width - 400 + 128 + 128, space, 0,  obj_tool_selection)
			tool3.image_index = 2
			tool4 = instance_create_depth(room_width - 400, space*2, 0,  obj_tool_selection)
			tool4.image_index = 3
			tool5 = instance_create_depth(room_width - 400 + 128, space*2, 0,  obj_tool_selection)
			tool5.image_index = 4
			tool6 = instance_create_depth(room_width - 400 + 128 + 128, space*2, 0,  obj_tool_selection)
			tool6.image_index = 5
			tool7 = instance_create_depth(room_width - 400, space*3, 0,  obj_tool_selection)
			tool7.image_index = 6
			tool8 = instance_create_depth(room_width - 400 + 128, space*3, 0,  obj_tool_selection)
			tool8.image_index = 7
			tool9 = instance_create_depth(room_width - 400 + 128 + 128, space*3, 0,  obj_tool_selection)
			tool9.image_index = 8
			tool10 = instance_create_depth(room_width - 400, space*4, 0, obj_tool_selection)
			tool10.image_index = 9
			tool11 = instance_create_depth(room_width - 400 + 128, space*4, 0, obj_tool_selection)
			tool11.image_index = 10
			tool12 = instance_create_depth(room_width - 400 + 128 + 128, space*4, 0, obj_tool_selection)
			tool12.image_index = 11
			tool13 = instance_create_depth(room_width - 400, space*5, 0, obj_tool_selection)
			tool13.image_index = 12
			tool14 = instance_create_depth(room_width - 400 + 128, space*5, 0, obj_tool_selection)
			tool14.image_index = 13
			tool15 = instance_create_depth(room_width - 400 + 128 + 128, space*5, 0, obj_tool_selection)
			tool15.image_index = 14
			tool16 = instance_create_depth(room_width - 400, space*6, 0, obj_tool_selection)
			tool16.image_index = 15
			tool17 = instance_create_depth(room_width - 400 + 128, space*6, 0, obj_tool_selection)
			tool17.image_index = 16
			tool18 = instance_create_depth(room_width - 400 + 128 + 128, space*6, 0, obj_tool_selection)
			tool18.image_index = 17
			obj_tool_selection.MaxTools = 1
			
			instance_destroy(obj_variant_menu)
			
			//Integrated too needs to be added later
		}
		break;
		
		case 50:
		{
			obj_player.CharacterRace = "Warforged Juggernaut"
			obj_player.RaceStrengthAdded = 2
			obj_player.Speed = 30
			
			ds_list_add(obj_player.RaceTraitsList, "Iron Fists", "Powerful Build")
		}
		break;
		
		case 51:
		{
			obj_player.CharacterRace = "Warforged Skirmisher"
			obj_player.RaceDexterityAdded = 2
			obj_player.Speed = 35
			
			ds_list_add(obj_player.RaceTraitsList, "Swift", "Light Step")
		}
		break;
	
	case 52:
		{
			obj_player.CharacterRace = "Dragonborn (Black)"
			ds_list_add(obj_player.RaceAttacks, "Breath Weapon (Acid)")
		}
		break;
		
		case 53:
		{
			obj_player.CharacterRace = "Dragonborn (Blue)"
			ds_list_add(obj_player.RaceAttacks, "Breath Weapon (Lightning)")
		}
		break;
		
		case 54:
		{
			obj_player.CharacterRace = "Dragonborn (Brass)"
			ds_list_add(obj_player.RaceAttacks, "Breath Weapon (Fire)")
		}
		break;
		
		case 55:
		{
			obj_player.CharacterRace = "Dragonborn (Bronze)"
			ds_list_add(obj_player.RaceAttacks, "Breath Weapon (Lightning)")
		}
		break;
		
		case 56:
		{
			obj_player.CharacterRace = "Dragonborn (Copper)"
			ds_list_add(obj_player.RaceAttacks, "Breath Weapon (Acid)")
		}
		break;
		
		case 57:
		{
			obj_player.CharacterRace = "Dragonborn (Gold)"
			ds_list_add(obj_player.RaceAttacks, "Breath Weapon (Fire)")
		}
		break;
		
		case 58:
		{
			obj_player.CharacterRace = "Dragonborn (Green)"
			ds_list_add(obj_player.RaceAttacks, "Breath Weapon (Poison)")
		}
		break;
		
		case 59:
		{
			obj_player.CharacterRace = "Dragonborn (Red)"
			ds_list_add(obj_player.RaceAttacks, "Breath Weapon (Fire)")
		}
		break;
		
		case 60:
		{
			obj_player.CharacterRace = "Dragonborn (Silver)"
			ds_list_add(obj_player.RaceAttacks, "Breath Weapon (Cold)")
		}
		break;
		
		case 61:
		{
			obj_player.CharacterRace = "Dragonborn (White)"
			ds_list_add(obj_player.RaceAttacks, "Breath Weapon (Cold)")
		}
		break;
		
		case 62:
		{
			ds_list_add(obj_player.RaceTraitsList, "Manta Glide")
		}
		break;
		
		case 63:
		{
			ds_list_add(obj_player.RaceTraitsList, "Nimble Climber")
		}
		break;
		
		case 64:
		{
			ds_list_add(obj_player.RaceTraitsList, "Underwater Adaptation")
		}
		break;
		
		case 65:
		{
			ds_list_add(obj_player.RaceCantrips, "Thaumaturgy")
		}
		break;
		
		case 66:
		{
			ds_list_add(obj_player.RaceCantrips, "Vicious Mockery")
		}
		break;
		
		case 67:
		{
			ds_list_add(obj_player.RaceCantrips, "Thaumaturgy")
		}
		break;
		
		case 68:
		{
			obj_player.Flight = true
			obj_player.FlightSpeed = 30
		}
		break;
		
	}
}

//
//
//
//
//
//

//deselecting
else if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && selected
{
	selected = false
	global.VariantSelection -= 1
	obj_confirm_button.Total -= 1
	
	switch(image_index)
	{
		//Aasimar - 3 variants
		case 0:
		{
			obj_player.CharacterRace = ""
			obj_player.RaceWisdomAdded = 0
			
		}
		break;
		
		case 1:
		{
			obj_player.CharacterRace = ""
			obj_player.RaceConstitutionAdded = 0
			
		}
		break;
		
		case 2:
		{
			obj_player.CharacterRace = ""
			obj_player.RaceStrengthAdded = 0
			
		}
		break;
		
		//Dwarf - 2 variants
		case 3:
		{
			obj_player.CharacterRace = ""
			obj_player.RaceWisdomAdded = 0
			
			pos = ds_list_find_index(obj_player.RaceTraitsList, "Dwarven Toughness")
			ds_list_delete(obj_player.RaceTraitsList, pos)
		}
		break;
		
		case 4:
		{
			obj_player.CharacterRace = ""
			obj_player.RaceStrengthAdded = 0
			
			pos = ds_list_find_index(obj_player.RaceArmorList, "Light")
			ds_list_delete(obj_player.RaceArmorList, pos)
			pos1 = ds_list_find_index(obj_player.RaceArmorList, "Medium")
			ds_list_delete(obj_player.RaceArmorList, pos1)
		}
		break;
		
	}
}