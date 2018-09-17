if global.pause exit

if place_meeting(x, y, obj_player) self.depth = -1
else self.depth = 0

//Clicking event
if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		//Aasimar - 3 variants
		case 0:
		{
			obj_player.CharacterRace = "Protector Aasimiar"
			obj_player.WisdomAdded = 1
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 1:
		{
			obj_player.CharacterRace = "Scourge Aasimiar"
			obj_player.ConstitutionAdded = 1
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 2:
		{
			obj_player.CharacterRace = "Fallen Aasimiar"
			obj_player.StrengthAdded = 1
			
			room_goto(rm_character_creation)
		}
		break;
		
		//Dwarf - 2 variants
		case 3:
		{
			obj_player.CharacterRace = "Hill Dwarf"
			obj_player.WisdomAdded = 1
			
			ds_list_add(obj_player.TraitsList, "Dwarven Toughness")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 4:
		{
			obj_player.CharacterRace = "Mountain Dwarf"
			obj_player.StrengthAdded = 2
			
			if !ds_exists(obj_player.ArmorList, ds_type_list)
			{
				obj_player.ArmorList = ds_list_create()
			}
			ds_list_add(obj.player.ArmorList, "Light", "Medium")
			
			room_goto(rm_character_creation)
		}
		break;
		
		//Elf - 11 variants
		case 5:
		{
			obj_player.CharacterRace = "High Elf"
			obj_player.IntelligenceAdded = 1
			obj_player.Speed = 30
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Trance", "Elf Weapon Training", "Cantrip")
			
			ds_list_add(obj_player.LanguagesList, "Your Choice")
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
			}
			ds_list_add(obj_player.WeaponsList, "Shortbow", "Longbow", "Shortswords", "Longswords")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 6:
		{
			obj_player.CharacterRace = "Wood Elf"
			obj_player.WisdomAdded = 1
			obj_player.Speed = 35
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Trance", "Elf Weapon Training", "Fleet of Foot", "Mask of the Wild")
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
			}
			ds_list_add(obj_player.WeaponsList, "Shortbow", "Longbow", "Shortswords", "Longswords")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 7:
		{
			obj_player.CharacterRace = "Eladrin"
			obj_player.IntelligenceAdded = 1
			obj_player.Speed = 30
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Trance", "Fey Step")
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
			}
			ds_list_add(obj_player.WeaponsList, "Shortbow", "Longbow", "Shortswords", "Longswords")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 8:
		{
			obj_player.CharacterRace = "Shadow Elf"
			obj_player.CharismaAdded = 1
			obj_player.Speed = 30
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Trance", "Natural Talent", "Gift of the Shadows", "Shape Shadows", "Slip into Shadow")
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
			}
			ds_list_add(obj_player.WeaponsList, "Shortbow", "Longbow", "Shortswords", "Longswords")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 9:
		{
			obj_player.CharacterRace = "Aerenal Elf"
			obj_player.IntelligenceAdded = 1
			obj_player.Speed = 30
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Trance", "Cantrip", "Aereni Elf")
			
			ds_list_add(obj_player.LanguagesList, "Your Choice")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 10:
		{
			obj_player.CharacterRace = "Valenar Elf"
			obj_player.Speed = 30
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Trance", "Cantrip", "Valenar Elf")
			
			ds_list_add(obj_player.LanguagesList, "Your Choice")
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
			}
			ds_list_add(obj_player.WeaponsList, "Scimitar", "Double Scimitar", "Shortbow", "Longbow")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 11:
		{
			obj_player.CharacterRace = "Aereni Wood Elf"
			obj_player.WisdomAdded = 1
			obj_player.Speed = 35
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Trance", "Aereni Elf", "Fleet of Foot", "Mask of the Wild")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 12:
		{
			obj_player.CharacterRace = "Valenar Wood Elf"
			obj_player.WisdomAdded = 1
			obj_player.Speed = 30
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Trance", "Valenar Elf", "Fleet of Foot", "Mask of the Wild")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 13:
		{
			obj_player.CharacterRace = "Sea Elf"
			obj_player.ConstitutionAdded = 2
			obj_player.Speed = 30
			obj_player.Swim = true
			obj_player.SwimSpeed = 30
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Trance", "Sea Elf Training", "Child of the Sea", "Friend of the Sea")
			
			ds_list_add(obj_player.LanguagesList, "Aquan")
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
			}
			ds_list_add(obj_player.WeaponsList, "Spear", "Trident", "Light Crossbow", "Net")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 14:
		{
			obj_player.CharacterRace = "Shadar-Kai Elf"
			obj_player.ConstitutionAdded = 1
			obj_player.Speed = 30
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Trance", "Necrotic Resistance", "Blessings of the Raven Queen")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 15:
		{
			obj_player.CharacterRace = "Dark Elf"
			obj_player.CharismaAdded = 1
			obj_player.Speed = 30
			
			ds_list_add(obj_player.TraitsList, "Superior Darkvision", "Trance", "Sunlight Sensitivity", "Drow Magic", "Drow Weapon Training")
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
			}
			ds_list_add(obj_player.WeaponsList, "Rapiers", "Shortswords", "Hand Crossbow")
			
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		//Gensai - 4 variants
		case 16:
		{
			obj_player.CharacterRace = "Air Gensai"
			obj_player.DexterityAdded = 1
			
			ds_list_add(obj_player.TraitsList, "Unending Breath", "Mingle with the Wind")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 17:
		{
			obj_player.CharacterRace = "Earth Gensai"
			obj_player.StrengthAdded = 1
			
			ds_list_add(obj_player.TraitsList, "Earth Walk", "Merge with Stone")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 18:
		{
			obj_player.CharacterRace = "Fire Gensai"
			obj_player.IntelligenceAdded = 1
			
			ds_list_add(obj_player.TraitsList, "Fire Resistance", "Reach to the Blaze")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 19:
		{
			obj_player.CharacterRace = "Water Gensai"
			obj_player.WisdomAdded = 1
			
			ds_list_add(obj_player.TraitsList, "Amphibious", "Call to the Wave")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		//Gith - 2 variants
		case 20:
		{
			obj_player.CharacterRace = "Githyanki"
			obj_player.StrengthAdded = 2
			
			ds_list_add(obj_player.TraitsList, "Decadent Mastery", "Martial Prodigy", "Githyanki Psionics")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 21:
		{
			obj_player.CharacterRace = "Githzerai"
			obj_player.WisdomAdded = 2
			
			ds_list_add(obj_player.TraitsList, "Mental Discipline", "Githzerai Psionics")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		//Gnome - 4 variants
		case 22:
		{
			obj_player.CharacterRace = "Forest Gnome"
			obj_player.DexterityAdded = 1
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Natural Illusionist", "Speak with Small Beast")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 23:
		{
			obj_player.CharacterRace = "Rock Gnome"
			obj_player.ConstitutionAdded = 1
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Artificier's Lore", "Tinker")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 24:
		{
			obj_player.CharacterRace = "Deep Gnome"
			obj_player.DexterityAdded = 1
			
			ds_list_add(obj_player.TraitsList, "Superior Darkvision", "Stone Camouflage")
			
			ds_list_add(obj_player.LanguagesList, "Undercommon")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 25:
		{
			obj_player.CharacterRace = "Scribing Gnome"
			obj_player.CharismaAdded = 1
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Gifted Scribe", "Whispering Wind")
			
			ds_list_add(obj_player.LanguagesList, "Your Choice")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		//Half-Elf - 7 variants
		case 26:
		{
			ds_list_add(obj_player.TraitsList, "Skill Versatility")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 27:
		{
			ds_list_add(obj_player.TraitsList, "Elf Weapon Training")
			
			if !ds_exists(obj_player.WeaponsList, ds_type_list)
			{
				obj_player.WeaponsList = ds_list_create()
			}
			ds_list_add(obj_player.WeaponsList, "Longswords", "Shortswords", "Longbow", "Shortbow")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 28:
		{
			ds_list_add(obj_player.TraitsList, "Cantrip")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 29:
		{
			ds_list_add(obj_player.TraitsList, "Fleet of Foot")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 30:
		{
			ds_list_add(obj_player.TraitsList, "Mask of the Wild")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 31:
		{
			ds_list_add(obj_player.TraitsList, "Drow Magic")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 32:
		{
			obj_player.Swim = true
			obj_player.SwimSpeed = 30
			
			ds_list_add(obj_player.TraitsList, "Swim Speed")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		//Halfling - 4 variants
		case 33:
		{
			obj_player.CharacterRace = "Lightfoot Halfling"
			obj_player.CharismaAdded = 1
			
			ds_list_add(obj_player.TraitsList, "Naturally Stealthy")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 34:
		{
			obj_player.CharacterRace = "Stout Halfling"
			obj_player.ConstitutionAdded = 1
			
			ds_list_add(obj_player.TraitsList, "Stout Resilience")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 35:
		{
			obj_player.CharacterRace = "Ghallanda Halfling"
			obj_player.CharismaAdded = 1
			
			ds_list_add(obj_player.TraitsList, "Innkeeper's Charm", "Ever Hospitable")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 36:
		{
			obj_player.CharacterRace = "Jorasco Halfling"
			obj_player.WisdomAdded = 1
			
			ds_list_add(obj_player.TraitsList, "Medical Intuition", "Healing Touch")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		//Half-Orc - 2 variants
		case 37:
		{
			obj_player.CharacterRace = "Half-Orc"
			obj_player.StrengthAdded = 2
			obj_player.ConstitutionAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Menacing"
				obj_player.Traits[2] = "Relentless Enduance"
				obj_player.Traits[3] = "Savage Attacks"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Menacing"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Relentless Endurance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Savage Attacks"
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
		
		case 38:
		{
			obj_player.CharacterRace = "Dragonmarked Half-Orc"
			obj_player.StrengthAdded = 2
			obj_player.ConstitutionAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Menacing"
				obj_player.Traits[2] = "Hunter's Intuition"
				obj_player.Traits[3] = "Imprint Prey"
				obj_player.Traits[4] = "Nature's Voice"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Menacing"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Hunter's Intuition"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Imprint Prey"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Nature's Voice"
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
		
		case 39:
		{
			obj_player.CharacterRace = "Human"
			obj_player.StrengthAdded = 1
			obj_player.DexterityAdded = 1
			obj_player.IntelligenceAdded = 1
			obj_player.ConstitutionAdded = 1
			obj_player.WisdomAdded = 1
			obj_player.CharismaAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			
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
		
		case 40:
		{
			obj_player.CharacterRace = "Cannith Human"
			obj_player.DexterityAdded = 1// add player stat choice
			obj_player.IntelligenceAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Artisan's Intuition"
				obj_player.Traits[1] = "Maker's Gift"
				obj_player.Traits[2] = "Magecraft"
				obj_player.Traits[3] = "Spellsmith"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Artisan's Intuition"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Maker's Gift"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Magecraft"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Spellsmith"
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
		
		case 41:
		{
			obj_player.CharacterRace = "Vadalis Human"
			obj_player.DexterityAdded = 1// add player stat choice
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Wild Intuition"
				obj_player.Traits[1] = "Expert Handling"
				obj_player.Traits[2] = "Primal Connection"
				obj_player.Traits[3] = "The Bigger They Are"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Wild Intuition"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Expert Handling"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Primal Connection"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "The Bigger They Are"
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
		
		case 42:
		{
			obj_player.CharacterRace = "Orien Human"
			obj_player.DexterityAdded = 2
			// add player stat choice
			obj_player.Size = "Medium"
			obj_player.Speed = 40
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Courier's Speed"
				obj_player.Traits[1] = "Intuitive Motion"
				obj_player.Traits[2] = "Orien's Grce"
				obj_player.Traits[3] = "Shared Passage"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Courier's Speed"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Intuitive Motion"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Orien's Grace"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Shared Passage"
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
		
		case 43:
		{
			obj_player.CharacterRace = "Deneith Human"
			obj_player.StrengthAdded = 1// add player stat choice
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Sentinel's Intuition"
				obj_player.Traits[1] = "Sentinel's Shield"
				obj_player.Traits[2] = "Vigilant Guardian"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Sentinel's Intuition"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Sentinel's Shield"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Vigilant Guardian"
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
		
		case 44:
		{
			obj_player.CharacterRace = "Dragonmarked Human"
			obj_player.DexterityAdded = 1// add player stat choice
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Hunter's Intuition"
				obj_player.Traits[2] = "Imprint Prey"
				obj_player.Traits[3] = "Nature's Voice"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Hunter's Intuition"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Imprint Prey"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Nature's Voice"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Your Choice"
				obj_player.Languages[2] = "Goblin"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Your Choice"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Goblin"
			}
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 45:
		{
			obj_player.CharacterRace = "Beasthide Shifter"
			obj_player.DexterityAdded = 1
			obj_player.ConstitutionAdded = 2
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Keen Senses"
				obj_player.Traits[2] = "Shifting"
				obj_player.Traits[3] = "Tough"
				obj_player.Traits[3] = "Shifting Feature"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Keen Senses"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Shifting"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Tough"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Shifting Feature"
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
		
		case 46:
		{
			obj_player.CharacterRace = "Longtooth Shifter"
			obj_player.DexterityAdded = 1
			obj_player.StrengthAdded = 2
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Keen Senses"
				obj_player.Traits[2] = "Shifting"
				obj_player.Traits[3] = "Fierce"
				obj_player.Traits[4] = "Shifting Feature"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Keen Senses"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Shifting"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fierce"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Shifting Feature"
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
		
		case 47:
		{
			obj_player.CharacterRace = "Swiftstride Shifter"
			obj_player.DexterityAdded = 2
			obj_player.CharismaAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 35
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Keen Senses"
				obj_player.Traits[2] = "Shifting"
				obj_player.Traits[3] = "Graceful"
				obj_player.Traits[4] = "Shifting Feature"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Keen Senses"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Shifting"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Graceful"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Shifting Feature"
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
		
		case 48:
		{
			obj_player.CharacterRace = "Wildhunt Shifter"
			obj_player.DexterityAdded = 1
			obj_player.WisdomAdded = 2
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Keen Senses"
				obj_player.Traits[2] = "Shifting"
				obj_player.Traits[3] = "Natural Tracker"
				obj_player.Traits[4] = "Shifting Feature"
				obj_player.Traits[5] = "Mark of the Scent"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Keen Senses"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Shifting"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Tough"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Shifting Feature"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Mark of the Scent"
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
	}
}