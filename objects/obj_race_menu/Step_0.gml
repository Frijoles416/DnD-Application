if place_meeting(x, y, obj_player) && !place_meeting(x, y, obj_variant_menu) self.depth = -1
else if place_meeting(x, y, obj_variant_menu) depth = obj_variant_menu.depth + 1
else if place_meeting(x, y, obj_stat_menu) depth = obj_stat_menu.depth + 1
else if place_meeting(x, y, obj_tool_selection) depth = obj_tool_selection.depth + 1
else self.depth = 0

if instance_exists(obj_variant_menu) exit

//Clicking event
if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	if !ds_exists(obj_player.LanguagesList, ds_type_list) obj_player.LanguagesList = ds_list_create()
	ds_list_add(obj_player.LanguagesList, "Common")
	switch(image_index)
	{
		case 0: //Aarakocra
		{
			obj_player.CharacterRace = "Aarakocra"
			obj_player.DexterityAdded = 2
			obj_player.WisdomAdded = 2
			obj_player.Size = "Medium"
			obj_player.Speed = 25
			obj_player.Flight = true
			obj_player.FlightSpeed = 50
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Flight", "Talons")
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Aarakocra", "Auran")
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
			}
			ds_list_add(obj_player.WeaponsList, "Unarmed Strikes")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 1: //Aasimar - 3 variants
		{
			obj_player.CharismaAdded = 2
			obj_player.Speed = 30
			obj_player.Size = "Medium"
			obj_player.Flight = false
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Darkvision", "Celestial Resistance", "Healing Hands")
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Celestial")
			
			variant1 = instance_create_depth(x + 32, y - 64, 0,  obj_variant_menu)
			variant1.image_index = 0
			variant2 = instance_create_depth(x + 32, y, 0,  obj_variant_menu)
			variant2.image_index = 1
			variant3 = instance_create_depth(x + 32, y + 64, 0,  obj_variant_menu)
			variant3.image_index = 2
		}
		break;
		
		case 2: //Bugbear
		{
			obj_player.CharacterRace = "Bugbear"
			obj_player.StrengthAdded = 2
			obj_player.DexterityAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Darkvision", "Long Limbed", "Powerful Build", "Sneaky", "Surprise Attack")
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Goblin")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 3: //Centaur
		{
			obj_player.CharacterRace = "Centaur"
			obj_player.StrengthAdded = 2
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 40
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Charge", "Hooves", "Equine Build", "Survivor", "Hybrid Nature - Humanoid/ Monstrosity")
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Sylvan")
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
			}
			ds_list_add(obj_player.WeaponsList, "Hooves")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 4: //Changeling - 19 variants
		{
			obj_player.CharacterRace = "Changeling"
			obj_player.CharismaAdded = 2
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Change Appearance", "Changeling Instincts", "Unsettling Visage", "Divergent Persona")

			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Your Choice",  "Your Choice")
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
			}
			ds_list_add(obj_player.WeaponsList, "Your Choice")
			
			variant1 = instance_create_depth(x + 32, y - 64, 0,  obj_tool_selection)
			variant1.image_index = 1
			variant2 = instance_create_depth(x + 32, y, 0,  obj_tool_selection)
			variant2.image_index = 2
			variant3 = instance_create_depth(x + 32, y + 64, 0,  obj_tool_selection)
			variant3.image_index = 3
			variant4 = instance_create_depth(x + 160, y - 64, 0,  obj_tool_selection)
			variant4.image_index = 4
			variant5 = instance_create_depth(x + 160, y, 0,  obj_tool_selection)
			variant5.image_index = 5
			variant6 = instance_create_depth(x + 160, y + 64, 0,  obj_tool_selection)
			variant6.image_index = 6
			variant7 = instance_create_depth(x + 288, y - 64, 0,  obj_tool_selection)
			variant7.image_index = 7
			variant8 = instance_create_depth(x + 288, y, 0,  obj_tool_selection)
			variant8.image_index = 8
			variant9 = instance_create_depth(x + 288, y + 64, 0,  obj_tool_selection)
			variant9.image_index = 9
			variant10 = instance_create_depth(x + 416, y - 64, 0,  obj_tool_selection)
			variant10.image_index = 10
			variant11 = instance_create_depth(x + 416, y, 0,  obj_tool_selection)
			variant11.image_index = 11
			variant12 = instance_create_depth(x + 416, y + 64, 0, obj_tool_selection)
			variant12.image_index = 12
			variant13= instance_create_depth(x + 544, y + 64, 0,  obj_tool_selection)
			variant13.image_index = 13
			variant14 = instance_create_depth(x + 544, y - 64, 0,  obj_tool_selection)
			variant14.image_index = 14
			variant15 = instance_create_depth(x + 544, y, 0,  obj_tool_selection)
			variant15.image_index = 15
			variant16 = instance_create_depth(x + 672, y + 64, 0,  obj_tool_selection)
			variant16.image_index = 16
			variant17 = instance_create_depth(x + 672, y - 64, 0,  obj_tool_selection)
			variant17.image_index = 17
			variant18 = instance_create_depth(x + 672, y, 0,  obj_tool_selection)
			variant18.image_index = 0
			variant19 = instance_create_depth(x + 800, y, 0,  obj_tool_selection)
			variant19.image_index = 0
		}
		break;
		
		case 5: //Dragonborn
		{
			obj_player.CharacterRace = "Dragonborn"
			obj_player.StrengthAdded = 2
			obj_player.CharismaAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Breath Weapon", "Breath Weapon", "Damage Resistance")
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Draconic")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 6: //Dwarf - 2 variants
		{
			obj_player.ConstitutionAdded = 2
			obj_player.Size = "Medium"
			obj_player.Speed = 25
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Darkvision", "Dwarven Resilience", "Stonecunning")

			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Dwarvish")
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
			}
			ds_list_add(obj_player.WeaponsList, )
			
			variant1 = instance_create_depth(x + 32, y - 32, 0,  obj_variant_menu)
			variant1.image_index = 3
			variant2 = instance_create_depth(x + 32, y + 32, 0,  obj_variant_menu)
			variant2.image_index = 4
			
		}
		break;
		
		case 7: //Elf - 11 variants
		{
			obj_player.DexterityAdded = 2
			obj_player.Size = "Medium"
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Keen Senses", "Fey Ancestry")
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Elvish")
			
			variant1 = instance_create_depth(x + 32, y - 64, 0,  obj_variant_menu)
			variant1.image_index = 5
			variant2 = instance_create_depth(x + 32, y, 0,  obj_variant_menu)
			variant2.image_index = 6
			variant3 = instance_create_depth(x + 32, y + 64, 0,  obj_variant_menu)
			variant3.image_index = 7
			variant4 = instance_create_depth(x + 160, y - 64, 0,  obj_variant_menu)
			variant4.image_index = 8
			variant5 = instance_create_depth(x + 160, y, 0,  obj_variant_menu)
			variant5.image_index = 9
			variant6 = instance_create_depth(x + 160, y + 64, 0,  obj_variant_menu)
			variant6.image_index = 10
			variant7 = instance_create_depth(x + 288, y - 64, 0,  obj_variant_menu)
			variant7.image_index = 11
			variant8 = instance_create_depth(x + 288, y, 0,  obj_variant_menu)
			variant8.image_index = 12
			variant9 = instance_create_depth(x + 288, y + 64, 0,  obj_variant_menu)
			variant9.image_index = 13
			variant10 = instance_create_depth(x + 416, y - 64, 0,  obj_variant_menu)
			variant10.image_index = 14
			variant11 = instance_create_depth(x + 416, y, 0,  obj_variant_menu)
			variant11.image_index = 15
			
		}
		break;
		
		case 8: //Yuan-ti Pureblood
		{
			obj_player.CharacterRace = "Yuan-ti Pureblood"
			obj_player.CharismaAdded = 2
			obj_player.IntelligenceAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Darkvision", "Innate Spellcasting", "Magic Resistance", "Poison Immunity")

			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Abyssmal", "Draconic")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 9: //Firbolg
		{
			obj_player.CharacterRace = "Firbolg"
			obj_player.WisdomAdded = 2
			obj_player.StrengthAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Firbolg Magic", "Hidden Step", "Powerful Build", "Speech of Beast and Leaf")

			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Elvish", "Giant")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 10: //Gensai - 4 variants
		{
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			
			variant1 = instance_create_depth(x + 32, y - 32, 0,  obj_variant_menu)
			variant1.image_index = 16
			variant2 = instance_create_depth(x + 32, y + 32, 0,  obj_variant_menu)
			variant2.image_index = 17
			variant3 = instance_create_depth(x + 160, y - 32, 0,  obj_variant_menu)
			variant3.image_index = 18
			variant4 = instance_create_depth(x + 160, y + 32, 0,  obj_variant_menu)
			variant4.image_index = 19
			
		}
		break;
		
		case 11: //Gith - 2 variants
		{
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			
			variant1 = instance_create_depth(x + 32, y - 32, 0,  obj_variant_menu)
			variant1.image_index = 20
			variant2 = instance_create_depth(x + 32, y + 32, 0,  obj_variant_menu)
			variant2.image_index = 21
		}
		break;
		
		case 12: //Gnome - 4 variants
		{
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			
			variant1 = instance_create_depth(x + 32, y - 32, 0,  obj_variant_menu)
			variant1.image_index = 22
			variant2 = instance_create_depth(x + 32, y + 32, 0,  obj_variant_menu)
			variant2.image_index = 23
			variant3 = instance_create_depth(x + 160, y - 32, 0,  obj_variant_menu)
			variant3.image_index = 24
			variant4 = instance_create_depth(x + 160, y + 32, 0,  obj_variant_menu)
			variant4.image_index = 25
		}
		break;
		
		case 13: //Goblin
		{
			obj_player.CharacterRace = "Goblin"
			obj_player.DexterityAdded = 2
			obj_player.ConstitutionAdded = 1
			obj_player.Size = "Small"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Darkvision", "Fury of the Small", "Nimble Escape")

			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Goblin")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 14: //Goliath
		{
			obj_player.CharacterRace = "Goliath"
			obj_player.StrengthAdded = 2
			obj_player.ConstitutionAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Powerful Build", "Mountain Born", "Natural Athlete", "Stone's Endurance")

			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Giant")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 15: //Half-Elf - 7 variants
		{
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			
			variant1 = instance_create_depth(x + 32, y - 32, 0,  obj_variant_menu)
			variant1.image_index = 26
			variant2 = instance_create_depth(x + 32, y + 32, 0,  obj_variant_menu)
			variant2.image_index = 27
			variant3 = instance_create_depth(x + 160, y - 32, 0,  obj_variant_menu)
			variant3.image_index = 28
			variant4 = instance_create_depth(x + 160, y + 32, 0,  obj_variant_menu)
			variant4.image_index = 29
			variant5 = instance_create_depth(x + 288, y - 32, 0,  obj_variant_menu)
			variant5.image_index = 30
			variant6 = instance_create_depth(x + 288, y + 32, 0,  obj_variant_menu)
			variant6.image_index = 31
			variant7 = instance_create_depth(x + 416, y, 0,  obj_variant_menu)
			variant7.image_index = 32
		}
		break;
		
		case 16: //Halfling - 4 variants
		{
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			
			variant1 = instance_create_depth(x + 32, y - 32, 0,  obj_variant_menu)
			variant1.image_index = 33
			variant2 = instance_create_depth(x + 32, y + 32, 0,  obj_variant_menu)
			variant2.image_index = 34
			variant3 = instance_create_depth(x + 160, y - 32, 0,  obj_variant_menu)
			variant3.image_index = 35
			variant4 = instance_create_depth(x + 160, y + 32, 0,  obj_variant_menu)
			variant4.image_index = 36
		}
		break;
		
		case 17: //Half-Orc - 2 variants
		{
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			
			variant1 = instance_create_depth(x + 32, y - 32, 0,  obj_variant_menu)
			variant1.image_index = 37
			variant2 = instance_create_depth(x + 32, y + 32, 0,  obj_variant_menu)
			variant2.image_index = 38
		}
		break;
		
		case 18: //Hobgoblin
		{
			obj_player.CharacterRace = "Hobgoblin"
			obj_player.ConstitutionAdded = 2
			obj_player.IntelligenceAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Darkvision", "Savin' Face")

			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Goblin")
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
			}
			ds_list_add(obj_player.WeaponsList, "Your Choice", "Your Choice")
			
			if !ds_exists(obj_player.ArmorList, ds_type_list)
			{
				obj_player.ArmorList = ds_list_create()
			}
			ds_list_add(obj_player.ArmorList, "Light Armor")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 19: //Human - 5 variants
		{
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			
			variant1 = instance_create_depth(x + 32, y - 32, 0,  obj_variant_menu)
			variant1.image_index = 39
			variant2 = instance_create_depth(x + 32, y + 32, 0,  obj_variant_menu)
			variant2.image_index = 40
			variant3 = instance_create_depth(x + 160, y - 32, 0,  obj_variant_menu)
			variant3.image_index = 41
			variant4 = instance_create_depth(x + 160, y + 32, 0,  obj_variant_menu)
			variant4.image_index = 42
			variant5 = instance_create_depth(x + 288, y, 0,  obj_variant_menu)
			variant5.image_index = 43
		}
		break;
		
		case 20: //Kalshtar
		{//Add the Quirk
			obj_player.CharacterRace = "Kalshtar"
			obj_player.WisdomAdded = 1
			obj_player.CharismaAdded = 1
			//Choice option needs to be added
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Severed from Dreams", "Dual Mind", "Mental Discipline", "Mind Link", "Psychic Glamour")

			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Quori", "Your Choice")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 21: //Kenku
		{
			obj_player.CharacterRace = "Kenku"
			obj_player.DexterityAdded = 2
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Expert Forgery", "Kenku Training", "Mimicry")

			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Auran")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 22: //Kobold
		{
			obj_player.CharacterRace = "Kobold"
			obj_player.DexterityAdded = 2
			obj_player.StrengthAdded = -2
			obj_player.Size = "Small"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Darkvision", "Grovel, Cower, and Be", "Pack Tactics", "Sunlight Sensitivity")

			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Draconic")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 23: //Lizardfolk
		{
			obj_player.CharacterRace = "Lizardfolk"
			obj_player.ConstitutionAdded = 2
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Bite", "Cunning Artisan", "Hold Breath", "Hunter's Lore", "Natural Armor", "Hungry Jaws")

			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Draconic")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 24: //Loxodon
		{
			obj_player.CharacterRace = "Loxodon"
			obj_player.ConstitutionAdded = 2
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Powerful Build", "Loxodon Bravery", "Natural Armor", "Stonecunning", "Keen Smell")

			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
			}
			ds_list_add(obj_player.ToolsList, "Mason's Tools")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 25: //Minotaur
		{
			obj_player.CharacterRace = "Minotaur"
			obj_player.StrengthAdded = 2
			obj_player.ConstitutionAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Goring Rush", "Hammering Horns", "Menacing", "Hybrid Nature")

			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Minotaur")
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
			}
			ds_list_add(obj_player.WeaponsList, "Horns")
			
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 26: //Orc
		{
			obj_player.CharacterRace = "Orc"
			obj_player.StrengthAdded = 2
			obj_player.ConstitutionAdded = 1
			obj_player.IntelligenceAdded = -2
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Darkvision", "Aggressive", "Menacing", "Powerful Build")

			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Orc")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 27: //Shifter - 4 variants
		{
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			
			variant1 = instance_create_depth(x + 32, y - 32, 0,  obj_variant_menu)
			variant1.image_index = 44
			variant2 = instance_create_depth(x + 32, y + 32, 0,  obj_variant_menu)
			variant2.image_index = 45
			variant3 = instance_create_depth(x + 160, y - 32, 0,  obj_variant_menu)
			variant3.image_index = 46
			variant4 = instance_create_depth(x + 160, y + 32, 0,  obj_variant_menu)
			variant4.image_index = 47
		}
		break;
		
		case 28: //Simic Hybrid
		{
			obj_player.CharacterRace = "Simic Hybrid"
			obj_player.ConstitutionAdded = 2
			//Player choice to add
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Darkvision", "Animal Enhancement")

			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Elvish")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 29: //Tabaxi
		{
			obj_player.CharacterRace = "Tabaxi"
			obj_player.DexterityAdded = 2
			obj_player.CharismaAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Darkvision", "Feline Agility", "Cat's Talent")

			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Your Choice")
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
			}
			ds_list_add(obj_player.WeaponsList, "Claws")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 30: //Tiefling - 9 variants
		{
			obj_player.CharacterRace = "Tiefling"
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 31: //Tortle
		{
			obj_player.CharacterRace = "Tortle"
			obj_player.StrengthAdded = 2
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Hold Breath", "Natural Armor", "Shell Defense", "Survival Instinct")

			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Aquan")
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
			}
			ds_list_add(obj_player.WeaponsList, "Claws")
			
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 32: //Triton
		{
			obj_player.CharacterRace = "Triton"
			obj_player.StrengthAdded = 1
			obj_player.ConstitutionAdded = 1
			obj_player.CharismaAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			obj_player.Swim = true
			obj_player.SwimSpeed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Control Air and Water", "Emissary of the Sea", "Guardian of the Depths")

			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Primordial")
			
			room_goto(rm_character_creation)
		}
		
		break;
		
		case 33: //Vedalken
		{
			obj_player.CharacterRace = "Vedalken"
			obj_player.IntelligenceAdded = 2
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Vedalken Dispassion", "Tireless Precision")

			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
			}
			ds_list_add(obj_player.ToolsList, "Your Choice")
			
			room_goto(rm_character_creation)
		}
		
		break;
		
		case 34: //Vashino
		{
			obj_player.CharacterRace = "Vashino"
			obj_player.DexterityAdded = 2
			obj_player.StrengthAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			ds_list_add(obj_player.TraitsList, "Wiry Frame", "Bite", "Lashing Tail")

			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			ds_list_add(obj_player.LanguagesList, "Draconic")
			
			room_goto(rm_character_creation)
		}	

		break;
		
		case 35: //Warforged - 3 variants
		{
			obj_player.CharacterRace = "Warforged"
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
			}
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
			}
			
			room_goto(rm_character_creation)
		}
		break;
	}
}