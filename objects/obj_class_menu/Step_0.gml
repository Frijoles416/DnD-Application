if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	if !ds_exists(obj_player.WeaponsList, ds_type_list) obj_player.WeaponsList = ds_list_create()
	if !ds_exists(obj_player.ArmorList, ds_type_list) obj_player.ArmorList = ds_list_create()
	if !ds_exists(obj_player.TraitsList, ds_type_list) obj_player.TraitsList = ds_list_create()
	if !ds_exists(obj_player.InventoryList, ds_type_list) obj_player.InventoryList = ds_list_create()
	
	switch(image_index)
	{
		case 0:
		{
			obj_player.CharacterClass = "Barbarian"
			obj_player.HitDie = "1d12"
			
			ds_list_add(obj_player.ArmorList, "Light Armor", "Medium Armor", "Shields")
			ds_list_add(obj_player.WeaponsList, "Simple Weapons", "Martial Weapons")
			ds_list_add(obj_player.TraitsList, "Rage", "Unarmored Defense")
			ds_list_add(obj_player.InventoryList, "Explorer's Pack", "Javalin", "Javalin", "Javalin", "Javalin")
			
			obj_player.StrengthSavingThrow = true
			obj_player.ConstitutionSavingThrow = true
			
			MaxSkills = 2
			
			skill1 = instance_create_depth(x + 32, y - 64, 0,  obj_skill_selection)
			skill1.image_index = 1
			skill2 = instance_create_depth(x + 32, y, 0,  obj_skill_selection)
			skill2.image_index = 3
			skill3 = instance_create_depth(x + 32, y + 64, 0,  obj_skill_selection)
			skill3.image_index = 7
			skill4 = instance_create_depth(x + 160, y - 64, 0,  obj_skill_selection)
			skill4.image_index = 10
			skill5 = instance_create_depth(x + 160, y, 0,  obj_skill_selection)
			skill5.image_index = 11
			skill6 = instance_create_depth(x + 160, y + 64, 0,  obj_skill_selection)
			skill6.image_index = 17
			
		}
		break;
		
		case 1:
		{
			obj_player.CharacterClass = "Bard"
			room_goto(rm_character_creation)
		}
		break;
		
		case 2:
		{
			obj_player.CharacterClass = "Cleric"
			room_goto(rm_character_creation)
		}
		break;
		
		case 3:
		{
			obj_player.CharacterClass = "Druid"
			room_goto(rm_character_creation)
		}
		break;
		
		case 4:
		{
			obj_player.CharacterClass = "Fighter"
			room_goto(rm_character_creation)
		}
		break;
		
		case 5:
		{
			obj_player.CharacterClass = "Monk"
			room_goto(rm_character_creation)
		}
		break;
		
		case 6:
		{
			obj_player.CharacterClass = "Paladin"
			room_goto(rm_character_creation)
		}
		break;
		
		case 7:
		{
			obj_player.CharacterClass = "Ranger"
			room_goto(rm_character_creation)
		}
		break;
		
		case 8:
		{
			obj_player.CharacterClass = "Rogue"
			room_goto(rm_character_creation)
		}
		break;
		
		case 9:
		{
			obj_player.CharacterClass = "Sorcerer"
			room_goto(rm_character_creation)
		}
		break;
		
		case 10:
		{
			obj_player.CharacterClass = "Warlock"
			room_goto(rm_character_creation)
		}
		break;
		
		case 11:
		{
			obj_player.CharacterClass = "Wizard"
			room_goto(rm_character_creation)
		}
		break;
		
		case 12:
		{
			obj_player.CharacterClass = "Blood Hunter"
			room_goto(rm_character_creation)
		}
		break;
		
	}
}