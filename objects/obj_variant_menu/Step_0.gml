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
			
			ds_list_add(obj_player.Cantrips, "Your Choice")
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Trance", "Elf Weapon Training", "Cantrip")
			
			ds_list_add(obj_player.LanguagesList, "Your Choice")
			
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
			
			ds_list_add(obj_player.WeaponsList, "Shortbow", "Longbow", "Shortswords", "Longswords")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 8:
		{
			obj_player.CharacterRace = "Shadow Elf"
			obj_player.CharismaAdded = 1
			obj_player.Speed = 30
			
			ds_list_add(obj_player.Cantrips, "Minor Illusion")
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Trance", "Natural Talent", "Gift of the Shadows", "Shape Shadows", "Slip into Shadow")
			
			ds_list_add(obj_player.WeaponsList, "Shortbow", "Longbow", "Shortswords", "Longswords")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 9:
		{
			obj_player.CharacterRace = "Aerenal Elf"
			obj_player.IntelligenceAdded = 1
			obj_player.Speed = 30
			
			ds_list_add(obj_player.Cantrips, "Your Choice")
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Trance", "Cantrip", "Aereni Elf")
			
			ds_list_add(obj_player.LanguagesList, "Your Choice")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 10:
		{
			obj_player.CharacterRace = "Valenar Elf"
			obj_player.IntelligenceAdded = 1
			obj_player.Speed = 30
			
			ds_list_add(obj_player.Cantrips, "Your Choice")
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Trance", "Cantrip", "Valenar Elf")
			
			ds_list_add(obj_player.LanguagesList, "Your Choice")
			
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
			obj_player.Speed = 35
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Trance", "Valenar Elf", "Fleet of Foot", "Mask of the Wild")
			
			ds_list_add(obj_player.WeaponsList, "Scimitar", "Double Scimitar", "Longbow", "Shortbow")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 13:
		{
			obj_player.CharacterRace = "Sea Elf"
			obj_player.ConstitutionAdded = 1
			obj_player.Speed = 30
			obj_player.Swim = true
			obj_player.SwimSpeed = 30
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Trance", "Sea Elf Training", "Child of the Sea", "Friend of the Sea")
			
			ds_list_add(obj_player.LanguagesList, "Aquan")
			
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
			
			ds_list_add(obj_player.Cantrips, "Dancing Lights")
			
			ds_list_add(obj_player.TraitsList, "Superior Darkvision", "Trance", "Sunlight Sensitivity", "Drow Magic", "Drow Weapon Training")
			
			ds_list_add(obj_player.WeaponsList, "Rapiers", "Shortswords", "Hand Crossbow")
			
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		//Genasi - 4 variants
		case 16:
		{
			obj_player.CharacterRace = "Air Genasi"
			obj_player.DexterityAdded = 1
			
			ds_list_add(obj_player.OtherMagic, "Levitate")
			
			ds_list_add(obj_player.TraitsList, "Unending Breath", "Mingle with the Wind")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 17:
		{
			obj_player.CharacterRace = "Earth Genasi"
			obj_player.StrengthAdded = 1		
			
			ds_list_add(obj_player.OtherMagic, "Pass Without Trace")
			
			ds_list_add(obj_player.TraitsList, "Earth Walk", "Merge with Stone")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 18:
		{
			obj_player.CharacterRace = "Fire Genasi"
			obj_player.IntelligenceAdded = 1
			
			ds_list_add(obj_player.Cantrips, "Produce Flame")
			
			ds_list_add(obj_player.TraitsList, "Fire Resistance", "Reach to the Blaze")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 19:
		{
			obj_player.CharacterRace = "Water Genasi"
			obj_player.WisdomAdded = 1
			
			ds_list_add(obj_player.Cantrips, "Shape Water")
			
			ds_list_add(obj_player.TraitsList, "Amphibious", "Call to the Wave", "Acid Resistance")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		//Gith - 2 variants
		case 20:
		{
			obj_player.CharacterRace = "Githyanki"
			obj_player.StrengthAdded = 2
			
			ds_list_add(obj_player.TraitsList, "Decadent Mastery", "Martial Prodigy", "Githyanki Psionics")
			
			ds_list_add(obj_player.LanguagesList, "Your Choice")
			
			ds_list_add(obj_player.WeaponsList, "Shortswords", "Longswords", "Greatswords")
			
			ds_list_add(obj_player.ArmorList, "Light Armor", "Medium Armor")
			
			ds_list_add(obj_player.Cantrips, "Mage Hand")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 21:
		{
			obj_player.CharacterRace = "Githzerai"
			obj_player.WisdomAdded = 2
			
			ds_list_add(obj_player.TraitsList, "Mental Discipline", "Githzerai Psionics")
			
			ds_list_add(obj_player.Cantrips, "Mage Hand")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		//Gnome - 4 variants
		case 22:
		{
			obj_player.CharacterRace = "Forest Gnome"
			obj_player.DexterityAdded = 1
			
			ds_list_add(obj_player.Cantrips, "Minor Illusion")
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Natural Illusionist", "Speak with Small Beast")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 23:
		{
			obj_player.CharacterRace = "Rock Gnome"
			obj_player.ConstitutionAdded = 1
			
			ds_list_add(obj_player.ToolsList, "Tinker's Tools")
			
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
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Gifted Scribe", "Whispering Wind", "Scribe's Insight")
			
			ds_list_add(obj_player.LanguagesList, "Your Choice")
			
			ds_list_add(obj_player.ToolsList, "Calligrapher's Supplies", "Forgery Kit")
			
			ds_list_add(obj_player.Cantrips, "Message")
			
			ds_list_add(obj_player.OtherMagic, "Comprehend Languages")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		//Half-Elf - 7 variants
		case 26:
		{
			obj_player.UseSkillVersatility = true
			
			ds_list_add(obj_player.TraitsList, "Skill Versatility")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 27:
		{
			ds_list_add(obj_player.TraitsList, "Elf Weapon Training")
			
			ds_list_add(obj_player.WeaponsList, "Longswords", "Shortswords", "Longbow", "Shortbow")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 28:
		{
			ds_list_add(obj_player.Cantrips, "Your Choice")
			
			ds_list_add(obj_player.TraitsList, "Cantrip")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 29:
		{
			obj_player.Speed = 35
			
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
			ds_list_add(obj_player.Cantrips, "Dancing Lights")
			
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
			
			ds_list_add(obj_player.Cantrips, "Friends", "Prestidigitation")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 36:
		{
			obj_player.CharacterRace = "Jorasco Halfling"
			obj_player.WisdomAdded = 1
			
			ds_list_add(obj_player.TraitsList, "Medical Intuition", "Healing Touch", "Jorasco's Blessing")
			
			ds_list_add(obj_player.Cantrips, "Spare the Dying")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		//Half-Orc - 2 variants
		case 37:
		{
			obj_player.CharacterRace = "Half-Orc"
			
			ds_list_add(obj_player.TraitsList, "Relentless Endurance", "Savage Attacks")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 38:
		{
			obj_player.CharacterRace = "Dragonmarked Half-Orc"
			
			ds_list_add(obj_player.TraitsList, "Hunter's Intuition", "Imprint Prey", "Nature's Voice")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		//Human - 6 variants
		case 39:
		{
			obj_player.CharacterRace = "Human"
			obj_player.StrengthAdded = 1
			obj_player.DexterityAdded = 1
			obj_player.IntelligenceAdded = 1
			obj_player.ConstitutionAdded = 1
			obj_player.WisdomAdded = 1
			obj_player.CharismaAdded = 1
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 40:
		{
			obj_player.CharacterRace = "Cannith Human"
			obj_player.DexterityAdded = 1
			// add player stat choice
			obj_player.IntelligenceAdded = 1
			
			ds_list_add(obj_player.Cantrips, "Mending")
			
			//tools list
			
			ds_list_add(obj_player.TraitsList, "Artisan's Intuition", "Maker's Gift", "Magecraft", "Spellsmith")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 41:
		{
			obj_player.CharacterRace = "Vadalis Human"
			obj_player.DexterityAdded = 1
			// add player stat choice
			obj_player.WisdomAdded = 1
			
			ds_list_add(obj_player.OtherMagic, "Animal Friendship")
			
			ds_list_add(obj_player.TraitsList, "Wild Intuition", "Expert Handling", "Primal Connection", "The Bigger They Are")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 42:
		{
			obj_player.CharacterRace = "Orien Human"
			obj_player.DexterityAdded = 2
			// add player stat choice
			obj_player.Speed = 40
			
			ds_list_add(obj_player.TraitsList, "Courier's Speed", "Intuitive Motion", "Orien's Grace", "Shared Passage")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 43:
		{
			obj_player.CharacterRace = "Deneith Human"
			obj_player.StrengthAdded = 1
			// add player stat choice
			obj_player.WisdomAdded = 1
			
			ds_list_add(obj_player.Cantrips, "Blade Ward")
			
			ds_list_add(obj_player.OtherMagic, "Shield")
			
			ds_list_add(obj_player.TraitsList, "Sentinel's Intuition", "Sentinel's Shield", "Vigilant Guardian")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 44:
		{
			obj_player.CharacterRace = "Dragonmarked Human"
			obj_player.DexterityAdded = 1
			// add player stat choice
			obj_player.WisdomAdded = 1
			
			ds_list_add(obj_player.TraitsList, "Darkvision", "Hunter's Intuition", "Imprint Prey", "Nature's Voice")
			
			ds_list_add(obj_player.LanguagesList, "Goblin")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		//Shifter - 4 variants
		case 45:
		{
			obj_player.CharacterRace = "Beasthide Shifter"
			obj_player.DexterityAdded = 1
			obj_player.ConstitutionAdded = 2
			obj_player.Speed = 30
			
			ds_list_add(obj_player.TraitsList, "Tough")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 46:
		{
			obj_player.CharacterRace = "Longtooth Shifter"
			obj_player.DexterityAdded = 1
			obj_player.StrengthAdded = 2
			obj_player.Speed = 30
			
			ds_list_add(obj_player.TraitsList, "Fierce")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 47:
		{
			obj_player.CharacterRace = "Swiftstride Shifter"
			obj_player.DexterityAdded = 1
			obj_player.CharismaAdded = 1
			obj_player.Speed = 35
			
			ds_list_add(obj_player.TraitsList, "Graceful")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 48:
		{
			obj_player.CharacterRace = "Wildhunt Shifter"
			obj_player.DexterityAdded = 1
			obj_player.WisdomAdded = 2
			obj_player.Speed = 30
			
			ds_list_add(obj_player.TraitsList, "Natural Tracker", "Mark of the Scent")
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		//Warforged - 3 variants
		case 49:
		{
			//add player stat choice
			obj_player.Speed = 30
			
			ds_list_add(obj_player.TraitsList, "Specialized Design", "Integrated Tool")
			
			ds_list_add(obj_player.LanguagesList, "Your Choice")
			
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
			}
			ds_list_add(obj_player.ToolsList, "Your Choice")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 50:
		{
			obj_player.StrengthAdded = 2
			obj_player.Speed = 30
			
			ds_list_add(obj_player.TraitsList, "Iron Fists", "Powerful Build")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 51:
		{
			obj_player.DexterityAdded = 2
			obj_player.Speed = 30
			
			ds_list_add(obj_player.TraitsList, "Swift", "Light Step")
			
			room_goto(rm_character_creation)
		}
		break;
	}
}