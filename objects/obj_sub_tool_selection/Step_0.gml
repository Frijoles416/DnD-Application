if global.pause exit

depth = -100

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		case 0:
		{
			tool = "Alchemist's Supplies"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 32*image_index)
			
		}
		break;
		
		case 1:
		{
			tool = "Brewer's Supplies"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 32*image_index)
		}
		break;
		
		case 2:
		{
			tool = "Calligrapher's Supplies"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 32*image_index)
		}
		break;
		
		case 3:
		{
			tool = "Carpenter's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 32*image_index)
		}
		break;
		
		case 4:
		{
			tool = "Cartographer's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 32*image_index)
		}
		break;
		
		case 5:
		{
			tool = "Cobbler's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 32*image_index)
		}
		break;
		
		case 6:
		{
			tool = "Cook's Utensils"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 32*image_index)
		}
		break;
		
		case 7:
		{
			tool = "Glassblower's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 32*image_index)
		}
		break;
		
		case 8:
		{
			tool = "Jeweler's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 32*image_index)
		}
		break;
		
		case 9:
		{
			tool = "Leatherworker's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 32*image_index)
		}
		break;
		
		case 10:
		{
			tool = "Mason's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 32*image_index)
		}
		break;
		
		case 11:
		{
			tool = "Painter's Supplies"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 32*image_index)
		}
		break;
		
		case 12:
		{
			tool = "Potter's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 32*image_index)
		}
		break;
		
		case 13:
		{
			tool = "Smith's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 32*image_index)
		}
		break;

		case 14:
		{
			tool = "Tinker's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 32*image_index)
		}
		break;
		
		case 15:
		{
			tool = "Weaver's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 32*image_index)
		}
		break;
		
		case 16:
		{
			tool = "Woodcarver's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 32*image_index)
		}
		break;
		
		case 17:
		{
			instance_destroy(checkbox)
			ds_list_add(obj_player.ToolsList, tool)
			
			room_goto(rm_character_creation)
		}
	}
}
