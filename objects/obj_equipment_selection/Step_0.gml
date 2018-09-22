if global.pause exit

switch(obj_player.CharacterClass)
{
	case "Barbarian":
	{
		
		ChoiceMax = 2
		
		break;
	}
}


depth = -100

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		case 0:
		{
			ds_list_add(obj_player.InventoryList, "Club")
			EquipChosen += 1
			if EquipChosen = ChoiceMax 
			{
				instance_destroy(obj_equipment_selection)
				room_goto(rm_class_selection)
			}
		}
		break;
		
		case 1:
		{
			ds_list_add(obj_player.InventoryList, "Dagger")
		}
		break;
		
		case 2:
		{
			ds_list_add(obj_player.InventoryList, "Greatclub")
		}
		break;
		
		case 3:
		{
			ds_list_add(obj_player.InventoryList, "Handaxe")
		}
		break;
		
		case 4:
		{
			
		}
		break;
		
		case 5:
		{
			
		}
		break;
		
		case 6:
		{
			
		}
		break;
		
		case 7:
		{
			
		}
		break;
		
		case 8:
		{
			
		}
		break;
		
		case 9:
		{
			
		}
		break;
		
		case 10:
		{
			
		}
		break;
		
		case 11:
		{
			
		}
		break;
		
		case 12:
		{
			
		}
		break;
		
		case 13:
		{
			
		}
		break;
		
		case 14:
		{
			ds_list_add(obj_player.InventoryList, "Battleaxe")
			room_goto(rm_character_creation)
		}
		break;
		
		case 15:
		{
			ds_list_add(obj_player.InventoryList, "Flail")
			room_goto(rm_character_creation)
		}
		break;
		
		case 16:
		{
			ds_list_add(obj_player.InventoryList, "Glaive")
			room_goto(rm_character_creation)
		}
		break;
		
		case 17:
		{
			ds_list_add(obj_player.InventoryList, "Greataxe")
			EquipChosen += 1
			if EquipChosen = ChoiceMax 
			{
				instance_destroy(obj_equipment_selection)
				room_goto(rm_class_selection)
			}
			
		}
		break;
		
		case 18:
		{
			ds_list_add(obj_player.InventoryList, "Greataxe")
			room_goto(rm_character_creation)
		}
		break;
		
		case 19:
		{
			ds_list_add(obj_player.InventoryList, "Greataxe")
			room_goto(rm_character_creation)
		}
		break;
		
		case 20:
		{
			
		}
		break;
		
		case 21:
		{
			
		}
		break;
		
		case 22:
		{
			
		}
		break;
		
		case 23:
		{
			
		}
		break;
		
		case 24:
		{
			
		}
		break;
		
		
		case 25:
		{
			
		}
		break;
		
		
		
		case 26:
		{
			
		}
		break;
		
		case 27:
		{
			
		}
		break;
		
		case 28:
		{
			
		}
		break;
		
		
		case 29:
		{
			
		}
		break;
		
		case 30:
		{
			
		}
		break;
		
		case 31:
		{
			
		}
		break;
		
		case 32:
		{
			
		}
		break;
		
		case 33:
		{
			
		}
		break;
		
		case 34:
		{
			
		}
		break;
	}
}