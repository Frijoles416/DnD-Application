if global.pause exit

depth = -100

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		case 0:
		{
			ds_list_add(obj_player.ToolsList, "Alchemist's Supplies")
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (32 + 32*image_index)
			
		}
		break;
		
		case 1:
		{
			ds_list_add(obj_player.ToolsList, "Brewer's Supplies")
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (32 + 32*image_index)
		}
		break;
		
		case 2:
		{
			ds_list_add(obj_player.ToolsList, "Calligrapher's Supplies")
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (32 + 32*image_index)
		}
		break;
		
		case 3:
		{
			ds_list_add(obj_player.ToolsList, "Carpenter's Tools")
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (32 + 32*image_index)
		}
		break;
		
		case 4:
		{
			ds_list_add(obj_player.ToolsList, "Cartographer's Tools")
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (32 + 32*image_index)
		}
		break;
		
		case 5:
		{
			ds_list_add(obj_player.ToolsList, "Cobbler's Tools")
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (32 + 32*image_index)
		}
		break;
		
		case 6:
		{
			ds_list_add(obj_player.ToolsList, "Cook's Utensils")
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (32 + 32*image_index)
		}
		break;
		
		case 7:
		{
			ds_list_add(obj_player.ToolsList, "Glassblower's Tools")
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (32 + 32*image_index)
		}
		break;
		
		case 8:
		{
			ds_list_add(obj_player.ToolsList, "Jeweler's Tools")
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (32 + 32*image_index)
		}
		break;
		
		case 9:
		{
			ds_list_add(obj_player.ToolsList, "Leatherworker's Tools")
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (32 + 32*image_index)
		}
		break;
		
		case 10:
		{
			ds_list_add(obj_player.ToolsList, "Mason's Tools")
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (32 + 32*image_index)
		}
		break;
		
		case 11:
		{
			ds_list_add(obj_player.ToolsList, "Painter's Supplies")
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (32 + 32*image_index)
		}
		break;
		
		case 12:
		{
			ds_list_add(obj_player.ToolsList, "Potter's Tools")
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (32 + 32*image_index)
		}
		break;
		
		case 13:
		{
			ds_list_add(obj_player.ToolsList, "Smith's Tools")
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (32 + 32*image_index)
		}
		break;

		case 14:
		{
			ds_list_add(obj_player.ToolsList, "Tinker's Tools")
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (32 + 32*image_index)
		}
		break;
		
		case 15:
		{
			ds_list_add(obj_player.ToolsList, "Weaver's Tools")
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (32 + 32*image_index)
		}
		break;
		
		case 16:
		{
			ds_list_add(obj_player.ToolsList, "Woodcarver's Tools")
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (32 + 32*image_index)
		}
		break;
	}
}
