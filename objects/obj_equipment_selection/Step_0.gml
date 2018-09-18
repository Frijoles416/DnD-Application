if global.pause exit

depth = -100

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		case 0:
		{
			ds_list_add(obj_player.InventoryList, "Club")
			if EquipChosen = ChoiceMax 
			{
				instance_destroy(obj_equipment_selection)
				room_goto(rm_class_selection)
			}
		}
		break;
		
		case 1:
		{
			ds_list_add(InventoryList, "Dagger")
		}
		break;
		
		case 2:
		{
			ds_list_add(InventoryList, "Greatclub")
		}
		break;
		
		case 3:
		{
			ds_list_add(InventoryList, "Handaxe")
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
			
		}
		break;
		
		case 15:
		{
			
		}
		break;
		
		case 16:
		{
			
		}
		break;
		
		case 17:
		{
			
		}
		break;
		
		case 18:
		{
			
		}
		break;
	}
}