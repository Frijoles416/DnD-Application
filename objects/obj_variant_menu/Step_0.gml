if global.pause exit

if place_meeting(x, y, obj_player) self.depth = -1
else self.depth = 0

//Clicking event
if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		case 0:
		{
			obj_player.CharacterRace = "Protector Aasimiar"
			obj_player.WisdomAdded = 1
			obj_player.CharismaAdded = 2
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			obj_player.Flight = false
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Celestial Resistance"
				obj_player.Traits[2] = "Healing Hands"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Celestial Resistance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Healing Hands"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Celestial"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Celestial"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 1:
		{
			obj_player.CharacterRace = "Scourge Aasimiar"
			obj_player.ConstitutionAdded = 1
			obj_player.CharismaAdded = 2
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			obj_player.Flight = false
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Celestial Resistance"
				obj_player.Traits[2] = "Healing Hands"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Celestial Resistance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Healing Hands"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Celestial"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Celestial"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 2:
		{
			obj_player.CharacterRace = "Fallen Aasimiar"
			obj_player.StrengthAdded = 1
			obj_player.CharismaAdded = 2
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			obj_player.Flight = false
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Celestial Resistance"
				obj_player.Traits[2] = "Healing Hands"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Celestial Resistance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Healing Hands"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Celestial"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Celestial"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 3:
		{
			obj_player.CharacterRace = "Hill Dwarf"
			obj_player.WisdomAdded = 1
			obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Dwarven Toughness"
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 4:
		{
			obj_player.CharacterRace = "Mountain Dwarf"
			obj_player.StrengthAdded = 2
			
			if !is_array(obj_player.ArmorProficiencies)
			{
				obj_player.ArmorProficiencies[0] = "Light"
				obj_player.ArmorProficiencies[1] = "Medium"
			}
			else
			{
				obj_player.ArmorProficiencies[array_length_1d(obj_player.ArmorProficiencies)+1] = "Light"
				obj_player.ArmorProficiencies[array_length_1d(obj_player.ArmorProficiencies)+1] = "Medium"
			}
			room_goto(rm_character_creation)
		}
		break;
		
		case 5:
		{
			obj_player.CharacterRace = "High Elf"
			obj_player.DexterityAdded = 2
			obj_player.IntelligenceAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Keen Senses"
				obj_player.Traits[2] = "Fey Ancestry"
				obj_player.Traits[3] = "Trance"
				obj_player.Traits[4] = "Elf Weapon Training"
				obj_player.Traits[5] = "Cantrip"//Add cantrip choice when class menu is built
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Keen Senses"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Ancestory"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Trance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Elf Weapon Training"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Cantrip"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Elvish"
				obj_player.Languages[2] = "Your Choice"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Elvish"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Your Choice"
			}
			
			if !is_array(obj_player.WeaponProfeciencies)
			{
				obj_player.WeaponProfeciencies[0] = "Longswords"
				obj_player.WeaponProfeciencies[0] = "Shortsowrds"
				obj_player.WeaponProfeciencies[0] = "Shortbow"
				obj_player.WeaponProfeciencies[0] = "Longbow"
			}
			else
			{
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Longswords"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Shortswords"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Shortbow"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Longbow"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 6:
		{
			obj_player.CharacterRace = "Wood Elf"
			obj_player.DexterityAdded = 2
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 35
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Keen Senses"
				obj_player.Traits[2] = "Fey Ancestry"
				obj_player.Traits[3] = "Trance"
				obj_player.Traits[4] = "Elf Weapon Training"
				obj_player.Traits[5] = "Fleet of Foot"
				obj_player.Traits[6] = "Mask of the Wild"
				
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Keen Senses"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Ancestory"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Trance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fleet of Foot"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Mask of the Wild"
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
			
			if !is_array(obj_player.WeaponProfeciencies)
			{
				obj_player.WeaponProfeciencies[0] = "Longswords"
				obj_player.WeaponProfeciencies[0] = "Shortsowrds"
				obj_player.WeaponProfeciencies[0] = "Shortbow"
				obj_player.WeaponProfeciencies[0] = "Longbow"
			}
			else
			{
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Longswords"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Shortswords"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Shortbow"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Longbow"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 7:
		{
			obj_player.CharacterRace = "Eladrin"
			obj_player.DexterityAdded = 2
			obj_player.IntelligenceAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Keen Senses"
				obj_player.Traits[2] = "Fey Ancestry"
				obj_player.Traits[3] = "Trance"
				obj_player.Traits[4] = "Fey Step"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Keen Senses"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Ancestory"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Trance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Step"
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
			
			if !is_array(obj_player.WeaponProfeciencies)
			{
				obj_player.WeaponProfeciencies[0] = "Longswords"
				obj_player.WeaponProfeciencies[0] = "Shortsowrds"
				obj_player.WeaponProfeciencies[0] = "Shortbow"
				obj_player.WeaponProfeciencies[0] = "Longbow"
			}
			else
			{
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Longswords"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Shortswords"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Shortbow"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Longbow"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 8:
		{
			obj_player.CharacterRace = "Shadow Elf"
			obj_player.DexterityAdded = 2
			obj_player.CharismaAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Keen Senses"
				obj_player.Traits[2] = "Fey Ancestry"
				obj_player.Traits[3] = "Trance"
				obj_player.Traits[4] = "Natural Talent"
				obj_player.Traits[5] = "Gift of the Shodows"
				obj_player.Traits[6] = "Shape Shadows"
				obj_player.Traits[7] = "Slip into Shadow"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Keen Senses"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Ancestory"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Trance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Natural Talent"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Gift og the Shadows"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Shape Shadows"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Slip into the Shadow"
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
			
			if !is_array(obj_player.WeaponProfeciencies)
			{
				obj_player.WeaponProfeciencies[0] = "Longswords"
				obj_player.WeaponProfeciencies[0] = "Shortsowrds"
				obj_player.WeaponProfeciencies[0] = "Shortbow"
				obj_player.WeaponProfeciencies[0] = "Longbow"
			}
			else
			{
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Longswords"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Shortswords"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Shortbow"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Longbow"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 9:
		{
			obj_player.CharacterRace = "Aerenal Elf"
			obj_player.DexterityAdded = 2
			obj_player.IntelligenceAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Keen Senses"
				obj_player.Traits[2] = "Fey Ancestry"
				obj_player.Traits[3] = "Trance"
				obj_player.Traits[3] = "Cantrip"
				obj_player.Traits[3] = "Aereni Elf"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Keen Senses"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Ancestory"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Trance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Cantrip"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Aereni Elf"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Elvish"
				obj_player.Languages[2] = "Your Choice"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Elvish"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Your Choice"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 10:
		{
			obj_player.CharacterRace = "Valenar Elf"
			obj_player.DexterityAdded = 2
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Keen Senses"
				obj_player.Traits[2] = "Fey Ancestry"
				obj_player.Traits[3] = "Trance"
				obj_player.Traits[4] = "Valenar Elf"
				obj_player.Traits[5] = "Cantrip"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Keen Senses"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Ancestory"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Trance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Valenar Elf"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Elvish"
				obj_player.Languages[2] = "Your Choice"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Elvish"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Your Choice"
			}
			
			if !is_array(obj_player.WeaponProfeciencies)
			{
				obj_player.WeaponProfeciencies[0] = "Scimitar"
				obj_player.WeaponProfeciencies[1] = "Double Scimitar"
				obj_player.WeaponProfeciencies[2] = "Shortbow"
				obj_player.WeaponProfeciencies[3] = "Longbow"
			}
			else
			{
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Scimitar"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Double Scimitar"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Shortbow"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Longbow"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 11:
		{
			obj_player.CharacterRace = "Aereni Wood Elf"
			obj_player.DexterityAdded = 2
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 35
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Keen Senses"
				obj_player.Traits[2] = "Fey Ancestry"
				obj_player.Traits[3] = "Trance"
				obj_player.Traits[4] = "Aereni Elf"
				obj_player.Traits[5] = "Fleet of Foot"
				obj_player.Traits[6] = "Mask of the Wild"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Keen Senses"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Ancestory"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Trance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Aerenin Elf"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fleet of Foot"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Mask of the Wild"
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
		
		case 12:
		{
			obj_player.CharacterRace = "Valenar Wood Elf"
			obj_player.DexterityAdded = 2
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Keen Senses"
				obj_player.Traits[2] = "Fey Ancestry"
				obj_player.Traits[3] = "Trance"
				obj_player.Traits[4] = "Valenar Elf"
				obj_player.Traits[5] = "Fleet of Foot"
				obj_player.Traits[6] = "Mask of the Wild"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Keen Senses"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Ancestory"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Trance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Valenar Elf"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fleet of Foot"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Mask of the Wild"
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
		
		case 13:
		{
			obj_player.CharacterRace = "Sea Elf"
			obj_player.DexterityAdded = 2
			obj_player.ConstitutionAdded = 2
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			obj_player.Swim = true
			obj_player.SwimSpeed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Keen Senses"
				obj_player.Traits[2] = "Fey Ancestry"
				obj_player.Traits[3] = "Trance"
				obj_player.Traits[4] = "Sea Elf Training"
				obj_player.Traits[5] = "Child of the Sea"
				obj_player.Traits[6] = "Friend of the Sea"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Keen Senses"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Ancestory"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Trance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Sea Elf Training"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Child of the sea"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Friend of the Sea"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Elvish"
				obj_player.Languages[2] = "Aquan"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Elvish"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Aquan"
			}
			
			if !is_array(obj_player.WeaponProfeciencies)
			{
				obj_player.WeaponProfeciencies[0] = "Spear"
				obj_player.WeaponProfeciencies[1] = "Trident"
				obj_player.WeaponProfeciencies[2] = "Light Crossbow"
				obj_player.WeaponProfeciencies[3] = "Net"
			}
			else
			{
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Spear"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Trident"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Light Crossbow"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Net"
			}
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 14:
		{
			obj_player.CharacterRace = "Shadar-Kai Elf"
			obj_player.ConstitutionAdded = 1
			obj_player.DexterityAdded = 2
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Keen Senses"
				obj_player.Traits[2] = "Fey Ancestry"
				obj_player.Traits[3] = "Trance"
				obj_player.Traits[4] = "Necrotic Resistance"
				obj_player.Traits[5] = "Blessings of the Raven Queen"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Keen Senses"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Ancestory"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Trance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Necrotic Resistance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Blessings of the Raven Queen"
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
		
		case 15:
		{
			obj_player.CharacterRace = "Dark Elf"
			obj_player.DexterityAdded = 2
			obj_player.CharismaAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Superior Darkvision"
				obj_player.Traits[1] = "Keen Senses"
				obj_player.Traits[2] = "Fey Ancestry"
				obj_player.Traits[3] = "Trance"
				obj_player.Traits[4] = "Sunlight Sensitivity"
				obj_player.Traits[5] = "Drow Magic"
				obj_player.Traits[6] = "Drow Weapon Training"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Superior Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Keen Senses"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Ancestory"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Trance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Sunlight Sensitivity"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Drow Magic"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Drow Weapon Training"
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
			
			if !is_array(obj_player.WeaponProfeciencies)
			{
				obj_player.WeaponProfeciencies[0] = "Rapiers"
				obj_player.WeaponProfeciencies[1] = "Shortswords"
				obj_player.WeaponProfeciencies[2] = "Hand Crossbow"
			}
			else
			{
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Rapiers"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Shortswords"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Hand Crossbow"
			}
			
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 16:
		{
			obj_player.CharacterRace = "Air Gensai"
			obj_player.ConstitutionAdded = 2
			obj_player.DexterityAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Unending Breath"
				obj_player.Traits[1] = "Mingle with the Wind"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Unending Breath"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Mingle with the Wind"
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
		
		case 17:
		{
			obj_player.CharacterRace = "Earth Gensai"
			obj_player.ConstitutionAdded = 2
			obj_player.StrengthAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Earth Walk"
				obj_player.Traits[1] = "Merge with Stone"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Earth Walk"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Merge with Stone"
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
		
		case 18:
		{
			obj_player.CharacterRace = "Fire Gensai"
			obj_player.ConstitutionAdded = 2
			obj_player.IntelligenceAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Fire Resistance"
				obj_player.Traits[1] = "Reach to the Blaze"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fire Resistance"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Reach to the Blaze"
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
		
		case 19:
		{
			obj_player.CharacterRace = "Water Gensai"
			obj_player.ConstitutionAdded = 2
			obj_player.WisdomAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Amphibious"
				obj_player.Traits[1] = "Call to the Wave"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Amphibious"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Call to the wave"
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
		
		case 20:
		{
			obj_player.CharacterRace = "Githyanki"
			obj_player.StrengthAdded = 2
			obj_player.IntelligenceAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Decadent Mastery"
				obj_player.Traits[1] = "Martial Prodigy"
				obj_player.Traits[2] = "Githyanki Psionics"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Decadent Mastery"//skill or tool of your choice
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Martial Prodigy"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Githyanki Psionics"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Gith"
				obj_player.Languages[2] = "Your Choice"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Gith"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Your Choice"
			}
			
			if !is_array(obj_player.WeaponProfeciencies)
			{
				obj_player.WeaponProfeciencies[0] = "Shortswords"
				obj_player.WeaponProfeciencies[1] = "Longswords"
				obj_player.WeaponProfeciencies[2] = "Greatswords"
			}
			else
			{
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Shortswords"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Longswords"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Greatswords"
			}
			
			if !is_array(obj_player.ArmorProficiencies)
			{
				obj_player.ArmorProficiencies[0] = "Light Armour"
				obj_player.ArmorProficiencies[1] = "Medium Armour"
			}
			else
			{
				obj_player.ArmorProficiencies[array_length_1d(obj_player.ArmorProficiencies)+1] = "Light Armour"
				obj_player.ArmorProficiencies[array_length_1d(obj_player.ArmorProficiencies)+1] = "Medium Armour"
			}
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 21:
		{
			obj_player.CharacterRace = "Githzerai"
			obj_player.WisdomAdded = 2
			obj_player.IntelligenceAdded = 1
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Mental Discipline"
				obj_player.Traits[1] = "Githzerai Psionics"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Mental Discipline"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Githyanki Psionics"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Gith"
				obj_player.Languages[2] = "Your Choice"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Gith"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Your Choice"
			}
			
			if !is_array(obj_player.WeaponProfeciencies)
			{
				obj_player.WeaponProfeciencies[0] = "Shortswords"
				obj_player.WeaponProfeciencies[1] = "Longswords"
				obj_player.WeaponProfeciencies[2] = "Greatswords"
			}
			else
			{
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Shortswords"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Longswords"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Greatswords"
			}
			
			if !is_array(obj_player.ArmorProficiencies)
			{
				obj_player.ArmorProficiencies[0] = "Light Armour"
				obj_player.ArmorProficiencies[1] = "Medium Armour"
			}
			else
			{
				obj_player.ArmorProficiencies[array_length_1d(obj_player.ArmorProficiencies)+1] = "Light Armour"
				obj_player.ArmorProficiencies[array_length_1d(obj_player.ArmorProficiencies)+1] = "Medium Armour"
			}
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 22:
		{
			obj_player.CharacterRace = "Forest Gnome"
			obj_player.IntelligenceAdded = 2
			obj_player.DexterityAdded = 1
			obj_player.Size = "Small"
			obj_player.Speed = 25
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Gnome Cunning"
				obj_player.Traits[2] = "Natural Illusionist"
				obj_player.Traits[3] = "Speak with Small Beast"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Gnome Cunning"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Natural Illusionist"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Speak with Small Beast"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Gnomish"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Gnomish"
			}
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 23:
		{
			obj_player.CharacterRace = "Rock Gnome"
			obj_player.IntelligenceAdded = 2
			obj_player.ConstitutionAdded = 1
			obj_player.Size = "Small"
			obj_player.Speed = 25
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Gnome Cunning"
				obj_player.Traits[2] = "Artificer's Lore"
				obj_player.Traits[3] = "Tinker"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Gnome Cunning"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Artificer's Lore"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Tinker"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Gnomish"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Gnomish"
			}
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 24:
		{
			obj_player.CharacterRace = "Deep Gnome"
			obj_player.IntelligenceAdded = 2
			obj_player.DexterityAdded = 1
			obj_player.Size = "Small"
			obj_player.Speed = 25
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Superior Darkvision"
				obj_player.Traits[1] = "Gnome Cunning"
				obj_player.Traits[2] = "Stone Camouflage"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Superior Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Gnome Cunning"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Stone Camouflage"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Gnomish"
				obj_player.Languages[2] = "Undercommon"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Gnomish"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Undercommon"
			}
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 25:
		{
			obj_player.CharacterRace = "Scribing Gnome"
			obj_player.IntelligenceAdded = 2
			obj_player.CharismaAdded = 1
			obj_player.Size = "Small"
			obj_player.Speed = 25
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Gnome Cunning"
				obj_player.Traits[2] = "Gifted Scribe"
				obj_player.Traits[3] = "Whispering Wind"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Gnome Cunning"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Gifted Scribe"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Whispering Wind"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Gnomish"
				obj_player.Languages[2] = "YOur Choice"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Gnomish"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Your Choice"
			}
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 26:
		{
			obj_player.CharacterRace = "Half-Elf"
			obj_player.CharismaAdded = 2
			//Player's choice
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Fey Ancestory"
				obj_player.Traits[2] = "Skill Versatility"//Add choices
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Ancestory"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Skill Versatility"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Elven"
				obj_player.Languages[2] = "Your Choice"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Elven"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Your Choice"
			}
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 27:
		{
			obj_player.CharacterRace = "Half-Elf"
			obj_player.CharismaAdded = 2
			//Player's choice
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Fey Ancestory"
				obj_player.Traits[2] = "Elf Weapon Training"//Add choices
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Ancestory"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Elf Weapon Training"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Elven"
				obj_player.Languages[2] = "Your Choice"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Elven"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Your Choice"
			}
			
			if !is_array(obj_player.WeaponProfeciencies)
			{
				obj_player.WeaponProfeciencies[0] = "Longswords"
				obj_player.WeaponProfeciencies[1] = "Shortsowrds"
				obj_player.WeaponProfeciencies[2] = "Shortbow"
				obj_player.WeaponProfeciencies[3] = "Longbow"
			}
			else
			{
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Longswords"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Shortswords"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Shortbow"
				obj_player.WeaponProfeciencies[array_length_1d(obj_player.WeaponProfeciencies)+1] = "Longbow"
			}
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 28:
		{
			obj_player.CharacterRace = "Half-Elf"
			obj_player.CharismaAdded = 2
			//Player's choice
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Fey Ancestory"
				obj_player.Traits[2] = "Cantrip"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Ancestory"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Cantrip"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Elven"
				obj_player.Languages[2] = "Your Choice"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Elven"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Your Choice"
			}
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 29:
		{
			obj_player.CharacterRace = "Half-Elf"
			obj_player.CharismaAdded = 2
			//Player's choice
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Fey Ancestory"
				obj_player.Traits[2] = "Fleet of Foot"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Ancestory"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fleet of Foot"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Elven"
				obj_player.Languages[2] = "Your Choice"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Elven"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Your Choice"
			}
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 30:
		{
			obj_player.CharacterRace = "Half-Elf"
			obj_player.CharismaAdded = 2
			//Player's choice
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Fey Ancestory"
				obj_player.Traits[2] = "Mask of the Wild"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Ancestory"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Mask of the Wild"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Elven"
				obj_player.Languages[2] = "Your Choice"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Elven"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Your Choice"
			}
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 31:
		{
			obj_player.CharacterRace = "Half-Elf"
			obj_player.CharismaAdded = 2
			//Player's choice
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Fey Ancestory"
				obj_player.Traits[2] = "Drow Magic"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Ancestory"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Drow Magic"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Elven"
				obj_player.Languages[2] = "Your Choice"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Elven"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Your Choice"
			}
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 32:
		{
			obj_player.CharacterRace = "Half-Elf"
			obj_player.CharismaAdded = 2
			//Player's choice
			obj_player.Size = "Medium"
			obj_player.Speed = 30
			obj_player.Swim = true
			obj_player.SwimSpeed = 30
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Darkvision"
				obj_player.Traits[1] = "Fey Ancestory"
				obj_player.Traits[2] = "Swim Speed"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Darkvision"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Fey Ancestory"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Swim Speed"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Elven"
				obj_player.Languages[2] = "Your Choice"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Elven"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Your Choice"
			}
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 33:
		{
			obj_player.CharacterRace = "Lightfoot Halfling"
			obj_player.DexterityAdded = 2
			obj_player.CharismaAdded = 1
			obj_player.Size = "Small"
			obj_player.Speed = 25
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Lucky"
				obj_player.Traits[1] = "Brave"
				obj_player.Traits[2] = "Nimble"
				obj_player.Traits[3] = "Naturally Stealthy"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Lucky"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Brave"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Naturally Stealthy"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Halfling"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Halfling"
			}
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 34:
		{
			obj_player.CharacterRace = "Stout Halfling"
			obj_player.DexterityAdded = 2
			obj_player.ConstitutionAdded = 1
			obj_player.Size = "Small"
			obj_player.Speed = 25
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Lucky"
				obj_player.Traits[1] = "Brave"
				obj_player.Traits[2] = "Nimble"
				obj_player.Traits[3] = "Stout Resilience"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Lucky"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Brave"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Stout Resilience"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Halfling"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Halfling"
			}
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 35:
		{
			obj_player.CharacterRace = "Ghallanda Halfling"
			obj_player.DexterityAdded = 2
			obj_player.CharismaAdded = 1
			obj_player.Size = "Small"
			obj_player.Speed = 25
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Lucky"
				obj_player.Traits[1] = "Brave"
				obj_player.Traits[2] = "Nimble"
				obj_player.Traits[3] = "Innkeeper's Charm"
				obj_player.Traits[4] = "Ever Hospitable"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Lucky"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Brave"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Naturally Stealthy"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Innkeeper's Charm"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Ever Hospitable"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Halfling"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Halfling"
			}
			
			room_goto(rm_character_creation)
			
		}
		break;
		
		case 36:
		{
			obj_player.CharacterRace = "Jorasco Halfling"
			obj_player.DexterityAdded = 2
			obj_player.WisdomAdded = 1
			obj_player.Size = "Small"
			obj_player.Speed = 25
			
			if !is_array(obj_player.Traits)
			{
				obj_player.Traits[0] = "Lucky"
				obj_player.Traits[1] = "Brave"
				obj_player.Traits[2] = "Nimble"
				obj_player.Traits[3] = "Medical Intution"
				obj_player.Traits[4] = "Healing Touch"
			}
			else
			{
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Lucky"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Brave"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Naturally Stealthy"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Medical Intution"
				obj_player.Traits[array_length_1d(obj_player.Traits)+1] = "Healing Touch"
			}
			
			if !is_array(obj_player.Languages)
			{
				obj_player.Languages[0] = "Common"
				obj_player.Languages[1] = "Halfling"
			}
			else
			{
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Common"
				obj_player.Languages[array_length_1d(obj_player.Languages)+1] = "Halfling"
			}
			
			room_goto(rm_character_creation)
			
		}
		break;
		
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