if place_meeting(x, y, obj_player) && !place_meeting(x, y, obj_variant_menu) self.depth = -1
else if place_meeting(x, y, obj_variant_menu) depth = obj_variant_menu.depth + 1
else if place_meeting(x, y, obj_stat_menu) depth = obj_stat_menu.depth + 1
else if place_meeting(x, y, obj_tool_selection) depth = obj_tool_selection.depth + 1
else self.depth = 0

if instance_exists(obj_variant_menu) exit

//Clicking event
if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		case 0:
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
				ds_list_add(obj_player.TraitsList, "Flight", "Talons")
			}
			else
			{
				ds_list_add(obj_player.TraitsList, "Flight", "Talons")
			}
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
				ds_list_add(obj_player.LanguagesList, "Common", "Aarkocra", "Auran")
			}
			else
			{
				ds_list_add(obj_player.LanguagesList, "Common", "Aarakocra", "Auran")
			}
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
				ds_list_add(obj_player.WeaponsList, "Unarmed Stikes")
			}
			else
			{
				ds_list_add(obj_player.WeaponsList, "Unarmed Strikes")
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 1:
		{
			variant1 = instance_create_depth(x + 32, y - 64, 0,  obj_variant_menu)
			variant1.image_index = 0
			variant2 = instance_create_depth(x + 32, y, 0,  obj_variant_menu)
			variant2.image_index = 1
			variant3 = instance_create_depth(x + 32, y + 64, 0,  obj_variant_menu)
			variant3.image_index = 2
		}
		break;
		
		case 2:
		{
			obj_player.CharacterRace = "Bugbear"
			obj_player.StrengthAdded = 2
			obj_player.DexterityAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
				ds_list_add(obj_player.TraitsList, "Darkvision", "Long Limbed", "Powerful Build", "Sneaky", "Surprise Attack")
			}
			else
			{
				ds_list_add(obj_player.TraitsList, "Darkvision", "Long Limbed", "Powerful Build", "Sneaky", "Surprise Attack")
			}
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
				ds_list_add(obj_player.LanguagesList, "Common", "Goblin")
			}
			else
			{
				ds_list_add(obj_player.LanguagesList, "Common", "Goblin")
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 3:
		{
			obj_player.CharacterRace = "Centaur"
			obj_player.StrengthAdded = 2
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 40
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
				ds_list_add(obj_player.TraitsList, "Charge", "Hooves", "Equine Build", "Survivor", "Hybrid Nature - Humanoid/ Monstrosity")
			}
			else
			{
				ds_list_add(obj_player.TraitsList, "Charge", "Hooves", "Equine Build", "Survivor", "Hybrid Nature - Humanoid/ Monstrosity")
			}
			
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
				ds_list_add(obj_player.LanguagesList, "Common", "Sylvan")
			}
			else
			{
				ds_list_add(obj_player.LanguagesList, "Common", "Sylvan")
			}
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
				ds_list_add(obj_player.WeaponsList, "Hooves")
			}
			else
			{
				ds_list_add(obj_player.WeaponsList, "Hooves")
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 4:
		{
			obj_player.CharacterRace = "Changeling"
			obj_player.CharismaAdded = 2
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !ds_exists(obj_player.TraitsList, ds_type_list)
			{
				obj_player.TraitsList = ds_list_create()
				ds_list_add(obj_player.TraitsList, "Change Appearance", "Changeling Instincts", "Unsettling Visage", "Divergent Persona")
			}
			else
			{
				ds_list_add(obj_player.TraitsList, "Change Appearance", "Changeling Instincts", "Unsettling Visage", "Divergent Persona")
			}
			if !ds_exists(obj_player.LanguagesList, ds_type_list)
			{
				obj_player.LanguagesList = ds_list_create()
				ds_list_add(obj_player.LanguagesList, "Common", "Your Choice",  "Your Choice")
			}
			else
			{
				ds_list_add(obj_player.LanguagesList, "Common", "Your Choice",  "Your Choice")
			}
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
				ds_list_add(obj_player.WeaponsList, "Your Choice")
			}
			else
			{
				ds_list_add(obj_player.WeaponsList, "Your Choice")
			}
			
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
		
		case 5:
		{
			obj_player.CharacterRace = "Dragonborn"
			obj_player.StrengthAdded = 2
			obj_player.CharismaAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Breath Weapon"// Need to add in a Variant Choice for the types of dragons
				obj_player.Traits[1] = "Damage Resistance"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Charge"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Hooves"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Draconic"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Draconic"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 6:
		{
			obj_player.ConstitutionAdded = 2
			obj_player.Size = "Medium"
			obj_player.Speed = 25
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Dwarven Resilience"
				obj_player.Traits[2] = "Dwarven Combat Training"
				obj_player.Traits[3] = "Tool Proficiency"//Need to add Tool Profiecency to this, as it is not complete yet
				obj_player.Traits[4] = "Stonecunning"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Dwarven Resilience"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Dwarven Combat Training"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Tool Proficiency"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Stonecunning"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Dwarvish"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Dwarvish"
			}
			
			if !is_array(obj_player.WeaponProfeciencies)
			{
				obj_player.WeaponProfeciencies[0] = "Battleaxes"
				obj_player.WeaponProfeciencies[0] = "Handaxes"
				obj_player.WeaponProfeciencies[0] = "Warhammmers"
				obj_player.WeaponProfeciencies[0] = "Light Hammers"
			}
			else
			{
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Battleaxes"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Handaxes"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Warhammers"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Light Hammers"
			}
			
			variant1 = instance_create_depth(x + 32, y - 32, 0,  obj_variant_menu)
			variant1.image_index = 3
			variant2 = instance_create_depth(x + 32, y + 32, 0,  obj_variant_menu)
			variant2.image_index = 4
			
		}
		break;
		
		case 7:
		{
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
		
		case 8:
		{
			obj_player.CharacterRace = "Yaun-ti Pureblood"
			obj_player.CharismaAdded = 2
			obj_player.IntelligenceAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Innate Spellcasting"
				obj_player.Traits[2] = "Magic Resistance"
				obj_player.Traits[3] = "Poison Immunity"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Innate Spellcasting"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Magic Resistance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Poison Immunity"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Draconic"
				obj_player.Languages[2] = "Abysmal"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Draconic"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Abysmal"
			}
			
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 9:
		{
			obj_player.CharacterRace = "Firbolg"
			obj_player.WisdomAdded = 2
			obj_player.StrengthAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Firbolg Magic"
				obj_player.Traits[1] = "Hidden Step"
				obj_player.Traits[2] = "Powerful Build"
				obj_player.Traits[4] = "Speech of Beast and Leaf"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Firbolg Magic"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Hidden Step"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Powerful Build"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Speech of the Beast and Leaf"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Elvish"
				obj_player.Languages[2] = "Giant"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Elvish"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Giant"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 10:
		{
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
		
		case 11:
		{
			variant1 = instance_create_depth(x + 32, y - 32, 0,  obj_variant_menu)
			variant1.image_index = 20
			variant2 = instance_create_depth(x + 32, y + 32, 0,  obj_variant_menu)
			variant2.image_index = 21
		}
		break;
		
		case 12:
		{
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
		
		case 13:
		{
			obj_player.CharacterRace = "Goblin"
			obj_player.DexterityAdded = 2
			obj_player.ConstitutionAdded = 1
			obj_player.Size = "Small"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Fury of the Small"
				obj_player.Traits[2] = "Nimble Escape"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fury of the Small"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Nimble Escape"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Goblin"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Goblin"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 14:
		{
			obj_player.CharacterRace = "Goliath"
			obj_player.StrengthAdded = 2
			obj_player.ConstitutionAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Natural Athlete"
				obj_player.Traits[1] = "Stone's Endurance"
				obj_player.Traits[2] = "Powerful Build"
				obj_player.Traits[3] = "Mountain Born"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Natural Athlete"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Stone's Endurance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Powerful Build"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Mountain Born"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Giant"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Giant"
			}
			room_goto(rm_character_creation)
		}
		break;
		
		case 15:
		{
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
		
		case 16:
		{
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
		
		case 17:
		{
			variant1 = instance_create_depth(x + 32, y - 32, 0,  obj_variant_menu)
			variant1.image_index = 37
			variant2 = instance_create_depth(x + 32, y + 32, 0,  obj_variant_menu)
			variant2.image_index = 38
		}
		break;
		
		case 18:
		{
			obj_player.CharacterRace = "Hobgoblin"
			obj_player.ConstitutionAdded = 2
			obj_player.IntelligenceAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Martial Trainin'"
				obj_player.Traits[2] = "Savin' Face"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Martial Trainin'"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Savin' Face"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Goblin"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Goblin"
			}
			
			if !is_array(obj_player.WeaponProfeciencies)
			{
				obj_player.WeaponProfeciencies[0] = "Your Choice"
				obj_player.WeaponProfeciencies[1] = "Your Choice"
			}
			else
			{
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Your Choice"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Your Choice"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 19:
		{
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
		
		case 20:
		{//Add the Quirk
			obj_player.CharacterRace = "Kalshtar"
			obj_player.WisdomAdded = 1
			obj_player.CharismaAdded = 1
			//Choice option needs to be added
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Dual Mind"
				obj_player.Traits[1] = "Mental Discipline"
				obj_player.Traits[2] = "Mind Link"
				obj_player.Traits[3] = "Psychic Glamour"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Dual Mind"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Mental Discipline"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Mind Link"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Psychic Glamour"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Quori"
				obj_player.Languages[1] = "Your Choice"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Quori"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Your Choice"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 21:
		{
			obj_player.CharacterRace = "Kenku"
			obj_player.DexterityAdded = 2
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Expert Forgery"
				obj_player.Traits[1] = "Kenku Training"
				obj_player.Traits[2] = "Mimicry"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Expert Forgery"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Kenku Training"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Mimicry"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common - Only Through Mimicry"
				obj_player.Languages[1] = "Auran - Only Through Mimicry"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common - Only Through Mimicry"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Auran - Only Through Mimicry"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 22:
		{
			obj_player.CharacterRace = "Kolbold"
			obj_player.DexterityAdded = 2
			obj_player.StrengthAdded = -2
			obj_player.Size = "Small"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Grovel, Cower, and Be"
				obj_player.Traits[2] = "Pack Tatics"
				obj_player.Traits[3] = "Sunlight Sensitivity"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Grovel, Cower, and Be"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Pack Tactics"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Sunlight Sensitivity"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Draconic"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Draconic"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 23:
		{
			obj_player.CharacterRace = "Lizardfolk"
			obj_player.ConstitutionAdded = 2
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Bite"
				obj_player.Traits[1] = "Cunning Artisan"
				obj_player.Traits[2] = "Hold Breath"
				obj_player.Traits[3] = "Hunter's Lore"
				obj_player.Traits[4] = "Hungry Jaws"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Bite"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Cunning Artisan"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Hold Breath"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Hunter's Lore"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Hungry Jaws"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Draconic"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Draconic"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 24:
		{
			obj_player.CharacterRace = "Loxodon"
			obj_player.ConstitutionAdded = 2
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Powerful Build"
				obj_player.Traits[1] = "Loxodon Bravery"
				obj_player.Traits[2] = "Natural Armour"
				obj_player.Traits[3] = "Mason's Procficiency"
				obj_player.Traits[4] = "Stonecunning"
				obj_player.Traits[5] = "Keen Smell"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Powerful Build"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Loxodon Bravery"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Natural Armour"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Mason's Proficiency"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Stonecunning"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Keen Smell"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 25:
		{
			obj_player.CharacterRace = "Minotaur"
			obj_player.StrengthAdded = 2
			obj_player.ConstitutionAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Horns"
				obj_player.Traits[1] = "Goring Rush"
				obj_player.Traits[2] = "Jammering Horns"
				obj_player.Traits[3] = "Menacing"
				obj_player.Traits[4] = "Hybrid - Monstrosity and Humanoid"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Horns"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Goring Rush"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Jamming Horns"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Menacing"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Hybrid - Monstrosity and Humanoid"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Minotaur"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Minotaur"
			}
			
			if !is_array(obj_player.WeaponProfeciencies)
			{
				obj_player.WeaponProfeciencies[0] = "Horns"
			}
			else
			{
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Horns"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 26:
		{
			obj_player.CharacterRace = "Orc"
			obj_player.StrengthAdded = 2
			obj_player.ConstitutionAdded = 1
			obj_player.IntelligenceAdded = -2
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Aggressive"
				obj_player.Traits[2] = "Menacing"
				obj_player.Traits[3] = "Powerful Build"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Aggressive"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Menacing"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Powerful Build"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Orc"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Orc"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 27:
		{
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
		
		case 28:
		{
			obj_player.CharacterRace = "Simic Hybrid"
			obj_player.ConstitutionAdded = 2
			//Player choice to add
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Animal Enhancment"//Have to add player choices
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Animal Enchancment"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Elvish"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Elvish"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 29:
		{
			obj_player.CharacterRace = "Tabaxi"
			obj_player.DexterityAdded = 2
			obj_player.CharismaAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Feline Agility"
				obj_player.Traits[2] = "Cat Claws"
				obj_player.Traits[3] = "Cat's Talent"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Feline Agility"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Cat's Claws"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Cat's Talent"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Your Choice"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Your Choice"
			}
			room_goto(rm_character_creation)
		}
		break;
		
		case 30:
		{// 9 variants
			obj_player.CharacterRace = "Tiefling"
			room_goto(rm_character_creation)
		}
		break;
		
		case 31:
		{
			obj_player.CharacterRace = "Tortle"
			obj_player.StrengthAdded = 2
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Claws"
				obj_player.Traits[1] = "Hold Breath"
				obj_player.Traits[2] = "Natural Armour"
				obj_player.Traits[3] = "Shell Defense"
				obj_player.Traits[4] = "Survival Instinct"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Claws"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Hold Breath"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Natural Armour"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Shell Defense"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Survival Instinct"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Aquan"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Aquan"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 32:
		{
			obj_player.CharacterRace = "Triton"
			obj_player.StrengthAdded = 1
			obj_player.ConstitutionAdded = 1
			obj_player.CharismaAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			obj_player.Swim = true
			obj_player.SwimSpeed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Contol Air and Water"
				obj_player.Traits[1] = "Emissary of the Sea"
				obj_player.Traits[2] = "Guardian of the Depths"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Contol Air and Water"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Emissary of the Sea"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Guardian of the Depths"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Primordial"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Primordial"
			}
			
			room_goto(rm_character_creation)
		}
		
		break;
		
		case 33:
		{
			obj_player.CharacterRace = "Vedalken"
			obj_player.IntelligenceAdded = 2
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Vedalken Dispassion"
				obj_player.Traits[1] = "Tireless Precision"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Vedalken Dispassion"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Tireless Precision"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
			}
			
			room_goto(rm_character_creation)
		}
		
		break;
		
		case 34:
		{
			obj_player.CharacterRace = "Vashino"
			obj_player.DexterityAdded = 2
			obj_player.StrengthAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Bite"
				obj_player.Traits[1] = "Lashing Tail"
				obj_player.Traits[2] = "Wiry Frame"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Bite"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Lashing Tail"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Wirt Frame"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Draconic"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Draconic"
			}
			
			room_goto(rm_character_creation)
		}
		

		break;
		case 35:
		{// 3 subraces
			obj_player.CharacterRace = "Warforged"
			room_goto(rm_character_creation)
		}
		break;
		
		//need to add Yaun-ti Pureblood
	}
}