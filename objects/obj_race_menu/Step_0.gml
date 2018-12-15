//Will not need if there isn't a popup selection
/*
if place_meeting(x, y, obj_player) && !place_meeting(x, y, obj_variant_menu) self.depth = -1
else if place_meeting(x, y, obj_variant_menu) depth = obj_variant_menu.depth + 1
else if place_meeting(x, y, obj_stat_menu) depth = obj_stat_menu.depth + 1
else if place_meeting(x, y, obj_tool_selection) depth = obj_tool_selection.depth + 1
else self.depth = 0
*/
var space = 32
//if instance_exists(obj_variant_menu) exit

//Clicking event

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && !selected && global.BaseSelection = 0
{
	//Information display stuff
	obj_info.x = 0
	obj_info.y = room_height - 194
	obj_info.cooldown = 150
	obj_info.scroll = false
	
	selected = true
	global.BaseSelection += 1
	//pre-initialization
	
	ds_list_add(obj_player.RaceLanguagesList, "Common")
	
	switch(image_index)
	{
		case 0: //Aarakocra
		{
			obj_player.CharacterRace = "Aarakocra"
			obj_player.RaceDexterityAdded = 2
			obj_player.RaceWisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 25
			obj_player.Flight = true
			obj_player.FlightSpeed = 50
			
			global.TotalSelection = 0
			
			ds_list_add(obj_player.RaceAttacks, "Talons")
			
			ds_list_add(obj_player.RaceTraitsList, "Flight", "Talons")
			
			ds_list_add(obj_player.RaceLanguagesList, "Aarakocra", "Auran")
			
			ds_list_add(obj_player.RaceWeaponsList, "Unarmed Strikes")
			
			scr_information(Aarakocra)
		}
		break;
		
		case 1: //Aasimar - 3 variants
		{
			obj_player.RaceCharismaAdded = 2
			obj_player.Speed = 30
			obj_player.Size = "Medium"
			obj_player.Flight = false
			
			global.TotalSelection = 1
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Celestial Resistance", "Healing Hands", "Light Bearer")
			
			ds_list_add(obj_player.RaceLanguagesList, "Celestial")
			
			ds_list_add(obj_player.RaceCantrips, "Light")
			
			variant1 = instance_create_depth(room_width - 256 - 64, 32, 0,  obj_variant_menu)
			variant1.image_index = 0
			variant2 = instance_create_depth(room_width - 256 - 64, 96, 0,  obj_variant_menu)
			variant2.image_index = 1
			variant3 = instance_create_depth(room_width - 256 - 64, 160, 0,  obj_variant_menu)
			variant3.image_index = 2
			
			scr_information(Aasimar)
		}
		break;
		
		case 2: //Bugbear
		{
			obj_player.CharacterRace = "Bugbear"
			obj_player.RaceStrengthAdded = 2
			obj_player.RaceDexterityAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			global.TotalSelection = 0
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Long Limbed", "Powerful Build", "Sneaky", "Surprise Attack")
			
			ds_list_add(obj_player.RaceLanguagesList, "Goblin")
			
			scr_information(Bugbear)
			
		}
		break;
		
		case 3: //Centaur
		{
			obj_player.CharacterRace = "Centaur"
			obj_player.RaceStrengthAdded = 2
			obj_player.RaceWisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 40
			
			global.TotalSelection = 0
			
			obj_player.RaceProficiencySurvival = true
			
			ds_list_add(obj_player.RaceTraitsList, "Charge", "Hooves", "Equine Build", "Survivor", "Hybrid Nature - Humanoid/ Monstrosity")
			
			ds_list_add(obj_player.RaceLanguagesList, "Sylvan")
			
			ds_list_add(obj_player.RaceWeaponsList, "Hooves")
			
			ds_list_add(obj_player.RaceAttacks, "Hooves")
			
			scr_information(Centaur)
			
		}
		break;
		
		case 4: //Changeling - 19 variants
		{
			obj_player.CharacterRace = "Changeling"
			obj_player.RaceCharismaAdded = 2
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			global.TotalSelection = 5
			
			ds_list_add(obj_player.RaceTraitsList, "Change Appearance", "Changeling Instincts", "Unsettling Visage", "Divergent Persona")
			
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
			obj_language_selection.MaxLang = 2
			
			variant1 = instance_create_depth(room_width - 192 - 32, space, 0,  obj_tool_selection)
			variant1.image_index = 1
			variant2 = instance_create_depth(room_width - 192 - 32, space*2, 0,  obj_tool_selection)
			variant2.image_index = 2
			variant3 = instance_create_depth(room_width - 192 - 32, space*3, 0,  obj_tool_selection)
			variant3.image_index = 3
			variant4 = instance_create_depth(room_width - 192 - 32, space*4, 0,  obj_tool_selection)
			variant4.image_index = 4
			variant5 = instance_create_depth(room_width - 192 - 32, space*5, 0,  obj_tool_selection)
			variant5.image_index = 5
			variant6 = instance_create_depth(room_width - 192 - 32, space*6, 0,  obj_tool_selection)
			variant6.image_index = 6
			variant7 = instance_create_depth(room_width - 192 - 32, space*7, 0,  obj_tool_selection)
			variant7.image_index = 7
			variant8 = instance_create_depth(room_width - 192 - 32, space*8, 0, obj_tool_selection)
			variant8.image_index = 8
			variant9 = instance_create_depth(room_width - 192 - 32, space*9, 0,  obj_tool_selection)
			variant9.image_index = 9
			variant10 = instance_create_depth(room_width - 192 - 160, space, 0,  obj_tool_selection)
			variant10.image_index = 10
			variant11 = instance_create_depth(room_width - 192 - 160, space*2, 0, obj_tool_selection)
			variant11.image_index = 11
			variant12 = instance_create_depth(room_width - 192 - 160, space*3, 0, obj_tool_selection)
			variant12.image_index = 12
			variant13= instance_create_depth(room_width - 192 - 160, space*4, 0,  obj_tool_selection)
			variant13.image_index = 13
			variant14 = instance_create_depth(room_width - 192 - 160, space*5, 0,  obj_tool_selection)
			variant14.image_index = 14
			variant15 = instance_create_depth(room_width - 192 - 160, space*6, 0,  obj_tool_selection)
			variant15.image_index = 15
			variant16 = instance_create_depth(room_width - 192 - 160, space*7, 0,  obj_tool_selection)
			variant16.image_index = 16
			variant17 = instance_create_depth(room_width - 192 - 160, space*8, 0,  obj_tool_selection)
			variant17.image_index = 17
			variant18 = instance_create_depth(room_width - 192 - 160, space*9, 0,  obj_tool_selection)
			variant18.image_index = 0
			variant19 = instance_create_depth(room_width - 192 - 96, space*10, 0,  obj_tool_selection)
			variant19.image_index = 18
			obj_tool_selection.MaxTools = 1
			
			skill1 = instance_create_depth(room_width - 192 - 32, space*21, 0, obj_skill_selection)
			skill1.image_index = 4
			skill2 = instance_create_depth(room_width - 192 - 160, space*21, 0, obj_skill_selection)
			skill2.image_index = 6
			skill3 = instance_create_depth(room_width - 192 - 32, space*22, 0, obj_skill_selection)
			skill3.image_index = 7
			skill4 = instance_create_depth(room_width - 192 - 160, space*22, 0, obj_skill_selection)
			skill4.image_index = 13
			obj_skill_selection.MaxSkills = 2
			
			scr_information(Changeling)
		}
		break;
		
		case 5: //Dragonborn
		{
			obj_player.CharacterRace = "Dragonborn"
			obj_player.RaceStrengthAdded = 2
			obj_player.RaceCharismaAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			global.TotalSelection = 1
			
			ds_list_add(obj_player.RaceTraitsList, "Damage Resistance")
			
			ds_list_add(obj_player.RaceLanguagesList, "Draconic")
			
			variant1 = instance_create_depth(room_width - 256 - 64, 32, 0,  obj_variant_menu)
			variant1.image_index = 52
			variant2 = instance_create_depth(room_width - 256 - 64, 96, 0,  obj_variant_menu)
			variant2.image_index = 53
			variant3 = instance_create_depth(room_width - 256 - 64, 160, 0,  obj_variant_menu)
			variant3.image_index = 54
			variant4 = instance_create_depth(room_width - 256 - 64, 224, 0,  obj_variant_menu)
			variant4.image_index = 55
			variant5 = instance_create_depth(room_width - 256 - 64, 288, 0,  obj_variant_menu)
			variant5.image_index = 56
			variant6 = instance_create_depth(room_width - 256 - 64, 352, 0,  obj_variant_menu)
			variant6.image_index = 57
			variant7 = instance_create_depth(room_width - 256 - 64, 416, 0,  obj_variant_menu)
			variant7.image_index = 58
			variant8 = instance_create_depth(room_width - 256 - 64, 480, 0,  obj_variant_menu)
			variant8.image_index = 59
			variant9 = instance_create_depth(room_width - 256 - 64, 544, 0,  obj_variant_menu)
			variant9.image_index = 60
			variant10 = instance_create_depth(room_width - 256 - 64, 608, 0,  obj_variant_menu)
			variant10.image_index = 61
			
			scr_information(Dragonborn)
			
		}
		break;
		
		case 6: //Dwarf - 2 variants
		{
			obj_player.RaceConstitutionAdded = 2
			obj_player.Size = "Medium"
			obj_player.Speed = 25
			
			global.TotalSelection = 1
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Dwarven Resilience", "Stonecunning")

			ds_list_add(obj_player.RaceLanguagesList, "Dwarvish")
			
			ds_list_add(obj_player.RaceWeaponsList, "Battleaxe", "Handaxe", "Throwing Hammer", "Warhammer")
			
			variant1 = instance_create_depth(room_width - 256 - 64, 32, 0,  obj_variant_menu)
			variant1.image_index = 3
			variant2 = instance_create_depth(room_width - 256 - 64, 96, 0,  obj_variant_menu)
			variant2.image_index = 4
			
			scr_information(Dwarf)
			
		}
		break;
		
		case 7: //Elf - 11 variants
		{
			obj_player.RaceDexterityAdded = 2
			obj_player.Size = "Medium"
			
			obj_player.ProficiencyPerception = true
			
			ds_list_add(obj_player.RaceTraitsList, "Keen Senses", "Fey Ancestry")
			
			ds_list_add(obj_player.RaceLanguagesList, "Elvish")
			
			global.TotalSelection = 1
			
			variant1 = instance_create_depth(room_width - 256 - 64, 32, 0,  obj_variant_menu)
			variant1.image_index = 5
			variant2 = instance_create_depth(room_width - 256 - 64, 96, 0,  obj_variant_menu)
			variant2.image_index = 6
			variant3 = instance_create_depth(room_width - 256 - 64, 160, 0,  obj_variant_menu)
			variant3.image_index = 7
			variant4 = instance_create_depth(room_width - 256 - 64, 224, 0,  obj_variant_menu)
			variant4.image_index = 8
			variant5 = instance_create_depth(room_width - 256 - 64, 288, 0,  obj_variant_menu)
			variant5.image_index = 9
			variant6 = instance_create_depth(room_width - 256 - 64, 352, 0,  obj_variant_menu)
			variant6.image_index = 10
			variant7 = instance_create_depth(room_width - 256 - 64, 416, 0,  obj_variant_menu)
			variant7.image_index = 11
			variant8 = instance_create_depth(room_width - 256 - 64, 480, 0,  obj_variant_menu)
			variant8.image_index = 12
			variant9 = instance_create_depth(room_width - 256 - 64, 544, 0,  obj_variant_menu)
			variant9.image_index = 13
			variant10 = instance_create_depth(room_width - 256 - 64, 608, 0,  obj_variant_menu)
			variant10.image_index = 14
			variant10 = instance_create_depth(room_width - 256 - 64, 672, 0,  obj_variant_menu)
			variant10.image_index = 15
			
			scr_information(Elf)
		}
		break;
		
		case 8: //Yuan-ti Pureblood
		{
			obj_player.CharacterRace = "Yuan-ti Pureblood"
			obj_player.RaceCharismaAdded = 2
			obj_player.RaceIntelligenceAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			ds_list_add(obj_player.RaceCantrips, "Poison Spray", "Animal Friendship (Snakes Only)")
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Innate Spellcasting", "Magic Resistance", "Poison Immunity")

			ds_list_add(obj_player.RaceLanguagesList, "Abyssmal", "Draconic")
			
			scr_information(YuanTi)
		}
		break;
		
		case 9: //Firbolg
		{
			obj_player.CharacterRace = "Firbolg"
			obj_player.RaceWisdomAdded = 2
			obj_player.RaceStrengthAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			ds_list_add(obj_player.RaceTraitsList, "Firbolg Magic", "Hidden Step", "Powerful Build", "Speech of Beast and Leaf")

			ds_list_add(obj_player.RaceLanguagesList, "Elvish", "Giant")
			
			ds_list_add(obj_player.Race1stMagic, "Dectect Magic", "Disguise Self")//Can only be used to make yourself look like a human
			
			scr_information(Firbolg)
		}
		break;
		
		case 10: //Genasi - 4 variants
		{
			obj_player.RaceConstitutionAdded = 2
			obj_player.Speed = 30
			obj_player.Size = "Medium"
			
			ds_list_add(obj_player.RaceLanguagesList, "Primordial")

			global.TotalSelection = 1
			
			variant1 = instance_create_depth(room_width - 256 - 64, 32, 0,  obj_variant_menu)
			variant1.image_index = 16
			variant2 = instance_create_depth(room_width - 256 - 64, 96, 0,  obj_variant_menu)
			variant2.image_index = 17
			variant3 = instance_create_depth(room_width - 256 - 64, 160, 0,  obj_variant_menu)
			variant3.image_index = 18
			variant4 = instance_create_depth(room_width - 256 - 64, 224, 0,  obj_variant_menu)
			variant4.image_index = 19
			
			scr_information(Genasi)
			
		}
		break;
		
		case 11: //Gith - 2 variants
		{
			obj_player.RaceIntelligenceAdded = 1
			obj_player.Speed = 30
			obj_player.Size = "Medium"
			
			global.TotalSelection = 1
			
			ds_list_add(obj_player.RaceLanguagesList, "Gith")
			
			variant1 = instance_create_depth(room_width - 256 - 64, 32, 0,  obj_variant_menu)
			variant1.image_index = 20
			variant2 = instance_create_depth(room_width - 256 - 64, 96, 0,  obj_variant_menu)
			variant2.image_index = 21
			
			scr_information(Gith)
		}
		break;
		
		case 12: //Gnome - 4 variants
		{
			obj_player.RaceIntelligenceAdded = 2
			obj_player.Speed = 25
			obj_player.Size = "Small"
			
			ds_list_add(obj_player.RaceTraitsList, "Gnome Cunning")
			
			ds_list_add(obj_player.RaceLanguagesList, "Gnomish")
			
			global.TotalSelection = 1
			
			variant1 = instance_create_depth(room_width - 256 - 64, 32, 0,  obj_variant_menu)
			variant1.image_index = 22
			variant2 = instance_create_depth(room_width - 256 - 64, 96, 0,  obj_variant_menu)
			variant2.image_index = 23
			variant3 = instance_create_depth(room_width - 256 - 64, 160, 0,  obj_variant_menu)
			variant3.image_index = 24
			variant4 = instance_create_depth(room_width - 256 - 64, 224, 0,  obj_variant_menu)
			variant4.image_index = 25
			
			scr_information(Gnome)
		}
		break;
		
		case 13: //Goblin
		{
			obj_player.CharacterRace = "Goblin"
			obj_player.RaceDexterityAdded = 2
			obj_player.RaceConstitutionAdded = 1
			obj_player.Size = "Small"
			obj_player.Speed = 30
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Fury of the Small", "Nimble Escape")

			ds_list_add(obj_player.RaceLanguagesList, "Goblin")
			
			scr_information(Goblin)
		}
		break;
		
		case 14: //Goliath
		{
			obj_player.CharacterRace = "Goliath"
			obj_player.RaceStrengthAdded = 2
			obj_player.RaceConstitutionAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			obj_player.RaceProficiencyAthletics = true
			
			ds_list_add(obj_player.RaceTraitsList, "Powerful Build", "Mountain Born", "Natural Athlete", "Stone's Endurance")

			ds_list_add(obj_player.RaceLanguagesList, "Giant")
			
			scr_information(Goliath)
		}
		break;
		
		case 15: //Half-Elf - 7 variants
		{
			obj_player.CharacterRace = "Half-Elf"
			obj_player.RaceCharismaAdded = 2
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			global.TotalSelection = 3
			
			stat1 = instance_create_depth(room_width - 256 - 64, space*6, 0, obj_stat_menu)
			stat1.image_index = 0
			stat2 = instance_create_depth(room_width - 256 - 64 + 128, space*6, 0, obj_stat_menu)
			stat2.image_index = 1
			stat3 = instance_create_depth(room_width - 256 - 64, space*7, 0, obj_stat_menu)
			stat3.image_index = 2
			stat4 = instance_create_depth(room_width - 256 - 64 + 128, space*7, 0, obj_stat_menu)
			stat4.image_index = 3
			stat5 = instance_create_depth(room_width - 256, space*8, 0, obj_stat_menu)
			stat5.image_index = 4
			obj_stat_menu.MaxStats = 1
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Fey Ancestry")
			
			ds_list_add(obj_player.RaceLanguagesList, "Elven")
			
			lang1 = instance_create_depth(room_width - 400, space, 0,  obj_language_selection)
			lang1.image_index = 0
			lang2 = instance_create_depth(room_width - 400 + 128, space, 0, obj_language_selection)
			lang2.image_index = 1
			lang3 = instance_create_depth(room_width - 400 + 128 + 128, space, 0, obj_language_selection)
			lang3.image_index = 2
			lang4 = instance_create_depth(room_width - 400, space*2, 0, obj_language_selection)
			lang4.image_index = 3
			lang5 = instance_create_depth(room_width - 400 + 128, space*2, 0, obj_language_selection)
			lang5.image_index = 4
			lang6 = instance_create_depth(room_width - 400 + 128 + 128, space*2, 0, obj_language_selection)
			lang6.image_index = 5
			lang7 = instance_create_depth(room_width - 400, space*3, 0, obj_language_selection)
			lang7.image_index = 6
			lang8 = instance_create_depth(room_width - 400 + 128, space*3, 0, obj_language_selection)
			lang8.image_index = 7
			lang9 = instance_create_depth(room_width - 400 + 128 + 128, space*3, 0, obj_language_selection)
			lang9.image_index = 8
			lang10 = instance_create_depth(room_width - 400, space*4, 0, obj_language_selection)
			lang10.image_index = 9
			lang11 = instance_create_depth(room_width - 400 + 128, space*4, 0, obj_language_selection)
			lang11.image_index = 10
			lang12 = instance_create_depth(room_width - 400 + 128 + 128, space*4, 0, obj_language_selection)
			lang12.image_index = 11
			lang13 = instance_create_depth(room_width - 400, space*5, 0, obj_language_selection)
			lang13.image_index = 12
			lang14 = instance_create_depth(room_width - 400 + 128, space*5, 0, obj_language_selection)
			lang14.image_index = 13
			lang15 = instance_create_depth(room_width - 400 + 128 + 128, space*5, 0, obj_language_selection)
			lang15.image_index = 14
			obj_language_selection.MaxLang = 1
			
			variant1 = instance_create_depth(room_width - 256 - 64, space*9, 0,  obj_variant_menu)
			variant1.image_index = 26
			variant2 = instance_create_depth(room_width - 256 - 64, space*11, 0,  obj_variant_menu)
			variant2.image_index = 27
			variant3 = instance_create_depth(room_width - 256 - 64, space*13, 0,  obj_variant_menu)
			variant3.image_index = 28
			variant4 = instance_create_depth(room_width - 256 - 64, space*15, 0,  obj_variant_menu)
			variant4.image_index = 29
			variant5 = instance_create_depth(room_width - 256 - 64, space*17, 0,  obj_variant_menu)
			variant5.image_index = 30
			variant6 = instance_create_depth(room_width - 256 - 64, space*19, 0,  obj_variant_menu)
			variant6.image_index = 31
			variant7 = instance_create_depth(room_width - 256 - 64, space*21, 0,  obj_variant_menu)
			variant7.image_index = 32
			
			scr_information(HalfElf)
		}
		break;
		
		case 16: //Halfling - 4 variants
		{
			obj_player.RaceDexterityAdded = 2
			obj_player.Size = "Small"
			obj_player.Speed = 25
			
			ds_list_add(obj_player.RaceTraitsList, "Lucky", "Brave", "Nimble")
			
			ds_list_add(obj_player.RaceLanguagesList, "Halfling")
			
			global.TotalSelection = 1
			
			variant1 = instance_create_depth(room_width - 256 - 64, space, 0,  obj_variant_menu)
			variant1.image_index = 33
			variant2 = instance_create_depth(room_width - 256 - 64, space*3, 0,  obj_variant_menu)
			variant2.image_index = 34
			variant3 = instance_create_depth(room_width - 256 - 64, space*5, 0,  obj_variant_menu)
			variant3.image_index = 35
			variant4 = instance_create_depth(room_width - 256 - 64, space*7, 0,  obj_variant_menu)
			variant4.image_index = 36
			
			scr_information(Halfling)
		}
		break;
		
		case 17: //Half-Orc - 2 variants
		{
			obj_player.RaceStrengthAdded = 2
			obj_player.RaceConstitutionAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			obj_player.RaceProficiencyIntimidation = true
			
			global.TotalSelection = 1
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Menacing")
			
			ds_list_add(obj_player.RaceLanguagesList, "Orc")
			
			variant1 = instance_create_depth(room_width - 256 - 64, space, 0,  obj_variant_menu)
			variant1.image_index = 37
			variant2 = instance_create_depth(room_width - 256 - 64, space*3, 0,  obj_variant_menu)
			variant2.image_index = 38
			
			scr_information(HalfOrc)
		}
		break;
		
		case 18: //Hobgoblin
		{
			obj_player.CharacterRace = "Hobgoblin"
			obj_player.RaceConstitutionAdded = 2
			obj_player.RaceIntelligenceAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Savin' Face")

			ds_list_add(obj_player.RaceLanguagesList, "Goblin")
			
			global.TotalSelection = 2
			
			weap1 = instance_create_depth(room_width - 192 - 32, space, 0,  obj_equipment_selection)
			weap1.image_index = 14
			weap2 = instance_create_depth(room_width - 192 - 32, space*2, 0,  obj_equipment_selection)
			weap2.image_index = 15
			weap3 = instance_create_depth(room_width - 192 - 32, space*3, 0, obj_equipment_selection)
			weap3.image_index = 16
			weap4 = instance_create_depth(room_width - 192 - 32, space*4, 0, obj_equipment_selection)
			weap4.image_index = 17
			weap5 = instance_create_depth(room_width - 192 - 32, space*5, 0, obj_equipment_selection)
			weap5.image_index = 18
			weap6 = instance_create_depth(room_width - 192 - 32, space*6, 0, obj_equipment_selection)
			weap6.image_index = 19
			weap7 = instance_create_depth(room_width - 192 - 32, space*7, 0, obj_equipment_selection)
			weap7.image_index = 20
			weap8 = instance_create_depth(room_width - 192 - 32, space*8, 0, obj_equipment_selection)
			weap8.image_index = 21
			weap9 = instance_create_depth(room_width - 192 - 32, space*9, 0, obj_equipment_selection)
			weap9.image_index = 22
			weap10 = instance_create_depth(room_width - 192 - 32, space*10, 0, obj_equipment_selection)
			weap10.image_index = 23
			weap11 = instance_create_depth(room_width - 192 - 32, space*11, 0, obj_equipment_selection)
			weap11.image_index = 24
			weap12 = instance_create_depth(room_width - 192 - 160, space, 0, obj_equipment_selection)
			weap12.image_index = 25
			weap13= instance_create_depth(room_width - 192 - 160, space*2, 0,  obj_equipment_selection)
			weap13.image_index = 26
			weap14 = instance_create_depth(room_width - 192 - 160, space*3, 0,  obj_equipment_selection)
			weap14.image_index = 27
			weap15 = instance_create_depth(room_width - 192 - 160, space*4, 0, obj_equipment_selection)
			weap15.image_index = 28
			weap16 = instance_create_depth(room_width - 192 - 160, space*5, 0,  obj_equipment_selection)
			weap16.image_index = 29
			weap17 = instance_create_depth(room_width - 192 - 160, space*6, 0, obj_equipment_selection)
			weap17.image_index = 30
			weap18 = instance_create_depth(room_width - 192 - 160, space*7, 0, obj_equipment_selection)
			weap18.image_index = 31
			weap19= instance_create_depth(room_width - 192 - 160, space*8, 0,  obj_equipment_selection)
			weap19.image_index = 32
			weap20 = instance_create_depth(room_width - 192 - 160, space*9, 0, obj_equipment_selection)
			weap20.image_index = 33
			weap21 = instance_create_depth(room_width - 192 - 160, space*10, 0, obj_equipment_selection)
			weap21.image_index = 34
			weap22 = instance_create_depth(room_width - 192 - 160, space*11, 0, obj_equipment_selection)
			weap22.image_index = 35
			weap23 = instance_create_depth(room_width - 192 - 96, space*12, 0, obj_equipment_selection)
			weap23.image_index = 36
			obj_equipment_selection.MaxWeapons = 2
			
			ds_list_add(obj_player.RaceArmorList, "Light Armor")
			
			scr_information(Hobgoblin)
		}
		break;
		
		case 19: //Human - 6 variants
		{
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			global.TotalSelection = 2
			
			lang1 = instance_create_depth(room_width - 400, space, 0,  obj_language_selection)
			lang1.image_index = 0
			lang2 = instance_create_depth(room_width - 400 + 128, space, 0, obj_language_selection)
			lang2.image_index = 1
			lang3 = instance_create_depth(room_width - 400 + 128 + 128, space, 0, obj_language_selection)
			lang3.image_index = 2
			lang4 = instance_create_depth(room_width - 400, space*2, 0, obj_language_selection)
			lang4.image_index = 3
			lang5 = instance_create_depth(room_width - 400 + 128, space*2, 0, obj_language_selection)
			lang5.image_index = 4
			lang6 = instance_create_depth(room_width - 400 + 128 + 128, space*2, 0, obj_language_selection)
			lang6.image_index = 5
			lang7 = instance_create_depth(room_width - 400, space*3, 0, obj_language_selection)
			lang7.image_index = 6
			lang8 = instance_create_depth(room_width - 400 + 128, space*3, 0, obj_language_selection)
			lang8.image_index = 7
			lang9 = instance_create_depth(room_width - 400 + 128 + 128, space*3, 0, obj_language_selection)
			lang9.image_index = 8
			lang10 = instance_create_depth(room_width - 400, space*4, 0, obj_language_selection)
			lang10.image_index = 9
			lang11 = instance_create_depth(room_width - 400 + 128, space*4, 0, obj_language_selection)
			lang11.image_index = 10
			lang12 = instance_create_depth(room_width - 400 + 128 + 128, space*4, 0, obj_language_selection)
			lang12.image_index = 11
			lang13 = instance_create_depth(room_width - 400, space*5, 0, obj_language_selection)
			lang13.image_index = 12
			lang14 = instance_create_depth(room_width - 400 + 128, space*5, 0, obj_language_selection)
			lang14.image_index = 13
			lang15 = instance_create_depth(room_width - 400 + 128 + 128, space*5, 0, obj_language_selection)
			lang15.image_index = 14
			obj_language_selection.MaxLang = 1
			
			variant1 = instance_create_depth(room_width - 256 - 64, space*9, 0,  obj_variant_menu)
			variant1.image_index = 39
			variant2 = instance_create_depth(room_width - 256 - 64, space*11, 0,  obj_variant_menu)
			variant2.image_index = 40
			variant3 = instance_create_depth(room_width - 256 - 64, space*13, 0,  obj_variant_menu)
			variant3.image_index = 41
			variant4 = instance_create_depth(room_width - 256 - 64, space*15, 0,  obj_variant_menu)
			variant4.image_index = 42
			variant5 = instance_create_depth(room_width - 256 - 64, space*17, 0,  obj_variant_menu)
			variant5.image_index = 43
			variant6 = instance_create_depth(room_width - 256 - 64, space*19, 0,  obj_variant_menu)
			variant6.image_index = 44
			
			scr_information(Human)
		}
		break;
		
		case 20: //Kalashtar
		{
			obj_player.CharacterRace = "Kalashtar"
			
			quirk = irandom_range(1, 10)
			switch(quirk)
			{
				case 1:
				{
					obj_player.PersonalityTraits = "You try to understand the motives and feelings of your enemies."
				}
				break;
				
				case 2:
				{
					obj_player.PersonalityTraits = "You prefer using telepathy over speaking aloud."
				}
				break;
				
				case 3:
				{
					obj_player.PersonalityTraits = "You feel a strong drive to protect the innocent."
				}
				break;
				
				case 4:
				{
					obj_player.PersonalityTraits = "You apply dream logic to mundane situations."
				}
				break;
				
				case 5:
				{
					obj_player.PersonalityTraits = "You discuss things out loud with your quori spirit."
				}
				break;
				
				case 6:
				{
					obj_player.PersonalityTraits = "You suppress your emotions and rely on logic."
				}
				break;
				
				case 7:
				{
					obj_player.PersonalityTraits = "You are strongly influenced by the emotions of those around you."
				}
				break;
				
				case 8:
				{
					obj_player.PersonalityTraits = "You prefer to find nonviolent solutions to problems whenever possible."
				}
				break;
				
				case 9:
				{
					obj_player.PersonalityTraits = "You are driven by a warrior spirit and will fight for any noble cause."
				}
				break;
				
				case 10:
				{
					obj_player.PersonalityTraits = "You are obsessed with Dreaming Dark conspiracies."
				}
				break;
			
			}
			
			obj_player.RaceWisdomAdded += 1
			obj_player.RaceCharismaAdded += 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			global.TotalSelection = 3
			
			stat1 = instance_create_depth(room_width - 256 - 64, space, 0, obj_stat_menu)
			stat1.image_index = 0
			stat2 = instance_create_depth(room_width - 256 - 64 + 128, space, 0, obj_stat_menu)
			stat2.image_index = 1
			stat3 = instance_create_depth(room_width - 256 - 64, space*1, 0, obj_stat_menu)
			stat3.image_index = 2
			stat4 = instance_create_depth(room_width - 256 - 64 + 128, space*1, 0, obj_stat_menu)
			stat4.image_index = 3
			stat5 = instance_create_depth(room_width - 256 - 64, space*2, 0, obj_stat_menu)
			stat5.image_index = 4
			stat6 = instance_create_depth(room_width - 256 - 64 + 128, space*2, 0, obj_stat_menu)
			stat6.image_index = 5
			obj_stat_menu.MaxStats = 1
			
			ds_list_add(obj_player.RaceTraitsList, "Severed from Dreams", "Dual Mind", "Mental Discipline", "Mind Link", "Psychic Glamour")

			ds_list_add(obj_player.RaceLanguagesList, "Quori")
			
			lang1 = instance_create_depth(room_width - 192 - 32, space*3, 0,  obj_language_selection)
			lang1.image_index = 1
			lang2 = instance_create_depth(room_width - 192 - 32, space*4, 0,  obj_language_selection)
			lang2.image_index = 3
			lang3 = instance_create_depth(room_width - 192 - 32, space*5, 0,  obj_language_selection)
			lang3.image_index = 5
			lang4 = instance_create_depth(room_width - 192 - 32, space*6, 0,  obj_language_selection)
			lang4.image_index = 7
			lang5 = instance_create_depth(room_width - 192 - 32, space*7, 0,  obj_language_selection)
			lang5.image_index = 9
			lang6 = instance_create_depth(room_width - 192 - 32, space*8, 0,  obj_language_selection)
			lang6.image_index = 11
			lang7 = instance_create_depth(room_width - 192 - 32, space*9, 0,  obj_language_selection)
			lang7.image_index = 13
			lang8 = instance_create_depth(room_width - 192 - 160, space*3, 0, obj_language_selection)
			lang8.image_index = 2
			lang9 = instance_create_depth(room_width - 192 - 160, space*4, 0,  obj_language_selection)
			lang9.image_index = 4
			lang10 = instance_create_depth(room_width - 192 - 160, space*5, 0,  obj_language_selection)
			lang10.image_index = 6
			lang11 = instance_create_depth(room_width - 192 - 160, space*6, 0, obj_language_selection)
			lang11.image_index = 8
			lang12 = instance_create_depth(room_width - 192 - 160, space*7, 0, obj_language_selection)
			lang12.image_index = 10
			lang13= instance_create_depth(room_width - 192 - 160, space*8, 0,  obj_language_selection)
			lang13.image_index = 12
			lang14 = instance_create_depth(room_width - 192 - 160, space*9, 0,  obj_language_selection)
			lang14.image_index = 14
			lang15 = instance_create_depth(room_width - 192 - 96, space*10, 0, obj_language_selection)
			lang15.image_index = 15
			obj_language_selection.MaxLang = 1
			
			skill1 = instance_create_depth(room_width - 192 - 32, space*11, 0,  obj_skill_selection)
			skill1.image_index = 6
			skill2 = instance_create_depth(room_width - 192 - 160, space*11, 0,  obj_skill_selection)
			skill2.image_index = 7
			skill3 = instance_create_depth(room_width - 192 - 32, space*12, 0, obj_skill_selection)
			skill3.image_index = 12
			skill4 = instance_create_depth(room_width - 192 - 160, space*12, 0, obj_skill_selection)
			skill4.image_index = 13
			obj_skill_selection.MaxSkills = 1
			
			scr_information(Kalashtar)
		}
		break;
		
		case 21: //Kenku
		{
			obj_player.CharacterRace = "Kenku"
			obj_player.RaceDexterityAdded = 2
			obj_player.RaceWisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			ds_list_add(obj_player.RaceTraitsList, "Expert Forgery", "Kenku Training", "Mimicry")

			ds_list_add(obj_player.RaceLanguagesList, "Auran")
			
			global.TotalSelection = 1
			
			skill1 = instance_create_depth(room_width - 192 - 32, space*11, 0,  obj_skill_selection)
			skill1.image_index = 0
			skill2 = instance_create_depth(room_width - 192 - 160, space*11, 0,  obj_skill_selection)
			skill2.image_index = 4
			skill3 = instance_create_depth(room_width - 192 - 32, space*12, 0, obj_skill_selection)
			skill3.image_index = 16
			skill4 = instance_create_depth(room_width - 192 - 160, space*12, 0, obj_skill_selection)
			skill4.image_index = 15
			obj_skill_selection.MaxSkills = 1
			
			scr_information(Kenku)
		}
		break;
		
		case 22: //Kobold
		{
			obj_player.CharacterRace = "Kobold"
			obj_player.RaceDexterityAdded = 2
			obj_player.RaceStrengthAdded = -2
			obj_player.Size = "Small"
			obj_player.Speed = 30
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Grovel, Cower, and Be", "Pack Tactics", "Sunlight Sensitivity")

			ds_list_add(obj_player.RaceLanguagesList, "Draconic")
			
			scr_information(Kobold)
		}
		break;
		
		case 23: //Lizardfolk
		{
			obj_player.CharacterRace = "Lizardfolk"
			obj_player.RaceConstitutionAdded = 2
			obj_player.RaceWisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			global.TotalSelection = 1
			
			ds_list_add(obj_player.RaceTraitsList, "Bite", "Cunning Artisan", "Hold Breath", "Hunter's Lore", "Natural Armor", "Hungry Jaws")

			ds_list_add(obj_player.RaceLanguagesList, "Draconic")
			
			ds_list_add(obj_player.RaceAttacks, "Bite")
			
			skill1 = instance_create_depth(room_width - 192 - 32, space*11, 0,  obj_skill_selection)
			skill1.image_index = 1
			skill2 = instance_create_depth(room_width - 192 - 160, space*11, 0,  obj_skill_selection)
			skill2.image_index = 10
			skill3 = instance_create_depth(room_width - 192 - 32, space*12, 0, obj_skill_selection)
			skill3.image_index = 11
			skill4 = instance_create_depth(room_width - 192 - 160, space*12, 0, obj_skill_selection)
			skill4.image_index = 16
			skill5 = instance_create_depth(room_width - 192 - 96, space*13, 0, obj_skill_selection)
			skill5.image_index = 17
			obj_skill_selection.MaxSkills = 1
			
			scr_information(Lizardfolk)
		}
		break;
		
		case 24: //Loxodon
		{
			obj_player.CharacterRace = "Loxodon"
			obj_player.RaceConstitutionAdded = 2
			obj_player.RaceWisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			ds_list_add(obj_player.RaceTraitsList, "Powerful Build", "Loxodon Bravery", "Natural Armor", "Stonecunning", "Keen Smell")

			ds_list_add(obj_player.RaceToolsList, "Mason's Tools")
			
			scr_information(Loxodon)
		}
		break;
		
		case 25: //Minotaur
		{
			obj_player.CharacterRace = "Minotaur"
			obj_player.RaceStrengthAdded = 2
			obj_player.RaceConstitutionAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			obj_player.RaceProficiencyIntimidation = true
			
			ds_list_add(obj_player.RaceTraitsList, "Goring Rush", "Hammering Horns", "Menacing", "Hybrid Nature")

			ds_list_add(obj_player.RaceLanguagesList, "Minotaur")
			
			ds_list_add(obj_player.RaceWeaponsList, "Horns")
			
			ds_list_add(obj_player.RaceAttacks, "Horns")
			
			ds_list_add(obj_player.RaceToolsList, "Navigator's Tools", "Water Vehicles")
			
			scr_information(Minotaur)
			
		}
		break;
		
		case 26: //Orc
		{
			obj_player.CharacterRace = "Orc"
			obj_player.RaceStrengthAdded = 2
			obj_player.RaceConstitutionAdded = 1
			obj_player.RaceIntelligenceAdded = -2
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			obj_player.RaceProficiencyIntimidation = true
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Aggressive", "Menacing", "Powerful Build")

			ds_list_add(obj_player.RaceLanguagesList, "Orc")
			
			scr_information(Orc)
		}
		break;
		
		case 27: //Shifter - 4 variants
		{
			obj_player.RaceDexterityAdded = 1
			obj_player.Size = "Medium"
			
			global.TotalSelection = 1
			
			obj_player.RaceProficiencyPerception = true
			
			ds_list_add(obj_player.RaceTraitsList = "Darkvision", "Keen Senses", "Shifting", "Shifting Feature")
			
			variant1 = instance_create_depth(room_width - 256 - 64, space*9, 0,  obj_variant_menu)
			variant1.image_index = 45
			variant2 = instance_create_depth(room_width - 256 - 64, space*11, 0,  obj_variant_menu)
			variant2.image_index = 46
			variant3 = instance_create_depth(room_width - 256 - 64, space*13, 0,  obj_variant_menu)
			variant3.image_index = 47
			variant4 = instance_create_depth(room_width - 256 - 64, space*15, 0,  obj_variant_menu)
			variant4.image_index = 48
			
			scr_information(Shifter)
		}
		break;
		
		case 28: //Simic Hybrid
		{
			obj_player.CharacterRace = "Simic Hybrid"
			obj_player.RaceConstitutionAdded = 2
			
			global.TotalSelection = 2
			
			stat1 = instance_create_depth(room_width - 256 - 64, space, 0, obj_stat_menu)
			stat1.image_index = 0
			stat2 = instance_create_depth(room_width - 256 - 64 + 128, space, 0, obj_stat_menu)
			stat2.image_index = 1
			stat3 = instance_create_depth(room_width - 256 - 64, space*1, 0, obj_stat_menu)
			stat3.image_index = 2
			stat4 = instance_create_depth(room_width - 256 - 64 + 128, space*1, 0, obj_stat_menu)
			stat4.image_index = 3
			stat5 = instance_create_depth(room_width - 256 - 64, space*2, 0, obj_stat_menu)
			stat5.image_index = 4
			stat6 = instance_create_depth(room_width - 256 - 64 + 128, space*2, 0, obj_stat_menu)
			stat6.image_index = 5
			obj_stat_menu.MaxStats = 1
			
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision")

			ds_list_add(obj_player.RaceLanguagesList, "Elvish")
			
			variant1 = instance_create_depth(room_width - 256 - 64, space*3, 0,  obj_variant_menu)
			variant1.image_index = 45
			variant2 = instance_create_depth(room_width - 256 - 64, space*5, 0,  obj_variant_menu)
			variant2.image_index = 46
			variant3 = instance_create_depth(room_width - 256 - 64, space*7, 0,  obj_variant_menu)
			variant3.image_index = 47
			
			scr_information(SimicHybrid)
		}
		break;
		
		case 29: //Tabaxi
		{
			obj_player.CharacterRace = "Tabaxi"
			obj_player.RaceDexterityAdded = 2
			obj_player.RaceCharismaAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			obj_player.RaceProficiencyPerception = true
			obj_player.RaceProficiencyStealth = true
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Feline Agility", "Cat's Talent")
			
			ds_list_add(obj_player.RaceWeaponsList, "Claws")
			
			ds_list_add(obj_player.RaceAttacks, "Claws")
			
			global.TotalSelection = 1
			
			lang1 = instance_create_depth(room_width - 192 - 32, space*3, 0,  obj_language_selection)
			lang1.image_index = 1
			lang2 = instance_create_depth(room_width - 192 - 32, space*4, 0,  obj_language_selection)
			lang2.image_index = 3
			lang3 = instance_create_depth(room_width - 192 - 32, space*5, 0,  obj_language_selection)
			lang3.image_index = 5
			lang4 = instance_create_depth(room_width - 192 - 32, space*6, 0,  obj_language_selection)
			lang4.image_index = 7
			lang5 = instance_create_depth(room_width - 192 - 32, space*7, 0,  obj_language_selection)
			lang5.image_index = 9
			lang6 = instance_create_depth(room_width - 192 - 32, space*8, 0,  obj_language_selection)
			lang6.image_index = 11
			lang7 = instance_create_depth(room_width - 192 - 32, space*9, 0,  obj_language_selection)
			lang7.image_index = 13
			lang8 = instance_create_depth(room_width - 192 - 160, space*3, 0, obj_language_selection)
			lang8.image_index = 2
			lang9 = instance_create_depth(room_width - 192 - 160, space*4, 0,  obj_language_selection)
			lang9.image_index = 4
			lang10 = instance_create_depth(room_width - 192 - 160, space*5, 0,  obj_language_selection)
			lang10.image_index = 6
			lang11 = instance_create_depth(room_width - 192 - 160, space*6, 0, obj_language_selection)
			lang11.image_index = 8
			lang12 = instance_create_depth(room_width - 192 - 160, space*7, 0, obj_language_selection)
			lang12.image_index = 10
			lang13= instance_create_depth(room_width - 192 - 160, space*8, 0,  obj_language_selection)
			lang13.image_index = 12
			lang14 = instance_create_depth(room_width - 192 - 160, space*9, 0,  obj_language_selection)
			lang14.image_index = 14
			lang15 = instance_create_depth(room_width - 192 - 96, space*10, 0, obj_language_selection)
			lang15.image_index = 15
			obj_language_selection.MaxLang = 1
			
			scr_information(Tabaxi)
		}
		break;
		
		case 30: //Tiefling - 4 variants
		{
			obj_player.CharacterRace = "Tiefling"
			obj_player.RaceIntelligenceAdded = 1
			
			stat1 = instance_create_depth(room_width - 256 - 64, space, 0, obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(room_width - 256 - 64 + 128, space, 0, obj_stat_menu)
			stat2.image_index = 5
			obj_stat_menu.MaxStats = 1
			
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			ds_list_add(obj_player.RaceTraitsList, "Darkvision", "Hellish Resistance", "Infernal Legacy")
			
			ds_list_add(obj_player.RaceLanguagesList, "Infernal")
			
			global.TotalSelection = 2
			
			variant1 = instance_create_depth(room_width - 256 - 64, space*3, 0,  obj_variant_menu)
			variant1.image_index = 65
			variant2 = instance_create_depth(room_width - 256 - 64, space*5, 0,  obj_variant_menu)
			variant2.image_index = 66
			variant3 = instance_create_depth(room_width - 256 - 64, space*7, 0,  obj_variant_menu)
			variant3.image_index = 67
			variant4 = instance_create_depth(room_width - 256 - 64, space*9, 0,  obj_variant_menu)
			variant4.image_index = 68
			
			scr_information(Tiefling)
		}
		break;
		
		case 31: //Tortle
		{
			obj_player.CharacterRace = "Tortle"
			obj_player.RaceStrengthAdded = 2
			obj_player.RaceWisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			obj_player.RaceProficiencySurvival = true
			
			ds_list_add(obj_player.RaceTraitsList, "Hold Breath", "Natural Armor", "Shell Defense", "Survival Instinct")

			ds_list_add(obj_player.RaceLanguagesList, "Aquan")
			
			ds_list_add(obj_player.RaceWeaponsList, "Claws")
			
			ds_list_add(obj_player.RaceAttacks, "Claws")
			
			scr_information(Tortle)
		}
		break;
		
		case 32: //Triton
		{
			obj_player.CharacterRace = "Triton"
			obj_player.RaceStrengthAdded = 1
			obj_player.RaceConstitutionAdded = 1
			obj_player.RaceCharismaAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			obj_player.Swim = true
			obj_player.SwimSpeed = 30
			
			ds_list_add(obj_player.RaceTraitsList, "Control Air and Water", "Emissary of the Sea", "Guardian of the Depths")

			ds_list_add(obj_player.RaceLanguagesList, "Primordial")
			
			ds_list_add(obj_player.Race1stMagic, "Fog Cloud")
			
			scr_information(Triton)
		}
		
		break;
		
		case 33: //Vedalken
		{
			obj_player.CharacterRace = "Vedalken"
			obj_player.RaceIntelligenceAdded = 2
			obj_player.RaceWisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			ds_list_add(obj_player.RaceTraitsList, "Vedalken Dispassion", "Tireless Precision")

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
			
			skill1 = instance_create_depth(room_width - 192 - 32, space*11, 0,  obj_skill_selection)
			skill1.image_index = 2
			skill2 = instance_create_depth(room_width - 192 - 160, space*11, 0,  obj_skill_selection)
			skill2.image_index = 5
			skill3 = instance_create_depth(room_width - 192 - 32, space*12, 0, obj_skill_selection)
			skill3.image_index = 8
			skill4 = instance_create_depth(room_width - 192 - 160, space*12, 0, obj_skill_selection)
			skill4.image_index = 9
			skill5 = instance_create_depth(room_width - 192 - 32, space*13, 0, obj_skill_selection)
			skill5.image_index = 12
			skill6 = instance_create_depth(room_width - 192 - 160, space*13, 0, obj_skill_selection)
			skill6.image_index = 15
			obj_skill_selection.MaxSkills = 1
			
			scr_information(Vedalken)
		}
		
		break;
		
		case 34: //Viashino
		{
			obj_player.CharacterRace = "Viashino"
			obj_player.RaceDexterityAdded = 2
			obj_player.RaceStrengthAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			ds_list_add(obj_player.RaceTraitsList, "Wiry Frame", "Bite", "Lashing Tail")

			ds_list_add(obj_player.RaceLanguagesList, "Draconic")
			
			ds_list_add(obj_player.RaceAttacks, "Bite")
			
			global.TotalSelection = 1
			
			skill1 = instance_create_depth(room_width - 192 - 32, space*11, 0,  obj_skill_selection)
			skill1.image_index = 0
			skill2 = instance_create_depth(room_width - 192 - 160, space*11, 0,  obj_skill_selection)
			skill2.image_index = 16
			obj_skill_selection.MaxSkills = 1
			
			scr_information(Viashino)
		}	

		break;
		
		case 35: //Warforged - 3 variants
		{
			obj_player.RaceConstitutionAdded = 1
			obj_player.Size = "Medium"
			
			quirk = irandom_range(1, 10)
			switch(quirk)
			{
				case 1:
				{
					obj_player.PersonalityTraits = "You analyze (out loud) the potential threat posed by every creature you meet."
				}
				break;
				
				case 2:
				{
					obj_player.PersonalityTraits = "You don’t understand emotions and often misread emotional cues."
				}
				break;
				
				case 3:
				{
					obj_player.PersonalityTraits = "You are fiercely protective of anyone you consider a friend."
				}
				break;
				
				case 4:
				{
					obj_player.PersonalityTraits = "You often say the things you are thinking aloud without realizing it."
				}
				break;
				
				case 5:
				{
					obj_player.PersonalityTraits = "You try to apply wartime tactics and discipline to every situation."
				}
				break;
				
				case 6:
				{
					obj_player.PersonalityTraits = "You don’t know how to filter your feelings and are prone to dramatic emotional outbursts."
				}
				break;
				
				case 7:
				{
					obj_player.PersonalityTraits = "You don’t understand clothing beyond its utility and assume that what a creature wears denotes its job and status."
				}
				break;
				
				case 8:
				{
					obj_player.PersonalityTraits = "You are obsessed with your appearance, and constantly polish and buff your armor."
				}
				break;
				
				case 9:
				{
					obj_player.PersonalityTraits = "You are deeply concerned with following proper procedures and protocols."
				}
				break;
				
				case 10:
				{
					obj_player.PersonalityTraits = "War is the only thing that makes sense to you, and you’re always looking for a fight."
				}
				break;
			}
			
			global.TotalSelection = 1
			
			ds_list_add(obj_player.RaceTraitsList, "Warforged Resilience", "Sentry's Rest", "Integrated Protection")
			
			variant1 = instance_create_depth(room_width - 256 - 64, space, 0,  obj_variant_menu)
			variant1.image_index = 49
			variant2 = instance_create_depth(room_width - 256 - 64, space*3, 0,  obj_variant_menu)
			variant2.image_index = 50
			variant3 = instance_create_depth(room_width - 256 - 64, space*5, 0,  obj_variant_menu)
			variant3.image_index = 51
			
			scr_information(Warforged)
		}
		break;
	}
}


else if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && selected
{
	selected = false
	global.BaseSelection -= 1
	obj_confirm_button.Total = 0
	obj_info.info = ""
	
	obj_player.CharacterRace = ""
	obj_player.RaceDexterityAdded = 0
	obj_player.RaceStrengthAdded = 0
	obj_player.RaceConstitutionAdded = 0
	obj_player.RaceIntelligenceAdded = 0
	obj_player.RaceCharismaAdded = 0
	obj_player.RaceWisdomAdded = 0
	obj_player.Size = ""
	obj_player.Speed = 0
	obj_player.Swim = false
	obj_player.Flight = false
	obj_player.PersonalityTraits = ""
			
	ds_list_clear(obj_player.RaceTraitsList)
	ds_list_clear(obj_player.RaceLanguagesList)
	ds_list_clear(obj_player.RaceWeaponsList)
	ds_list_clear(obj_player.RaceArmorList)
	ds_list_clear(obj_player.RaceToolsList)
	ds_list_clear(obj_player.RaceAttacks)
	ds_list_clear(obj_player.RaceCantrips)
	ds_list_clear(obj_player.Race2ndMagic)
	
	if instance_exists(obj_variant_menu) instance_destroy(obj_variant_menu)
	if instance_exists(obj_language_selection) instance_destroy(obj_language_selection)
	if instance_exists(obj_tool_selection) instance_destroy(obj_tool_selection)
	if instance_exists(obj_skill_selection) instance_destroy(obj_skill_selection)
	if instance_exists(obj_wizard_spells) instance_destroy(obj_wizard_spells)
	if instance_exists(obj_equipment_selection) instance_destroy(obj_equipment_selection)
	if instance_exists(obj_stat_menu) instance_destroy(obj_stat_menu)
	
	global.VariantSelection = 0
	global.LanguageSelection = 0
	global.ToolSelection = 0
	global.SkillSelection = 0
	global.StatSelection = 0
	global.SpellSelection = 0
	global.TotalSelection = 0
	
}