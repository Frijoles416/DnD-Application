if global.pause exit

depth = -100

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		case 0:
		{
			obj_sub_tool_selection.tool = "Alchemist's Supplies"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 20*image_index)
			
		}
		break;
		
		case 1:
		{
			obj_sub_tool_selection.tool = "Brewer's Supplies"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 20*image_index)
		}
		break;
		
		case 2:
		{
			obj_sub_tool_selection.tool = "Calligrapher's Supplies"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 20*image_index)
		}
		break;
		
		case 3:
		{
			obj_sub_tool_selection.tool = "Carpenter's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 20*image_index)
		}
		break;
		
		case 4:
		{
			obj_sub_tool_selection.tool = "Cartographer's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 20*image_index)
		}
		break;
		
		case 5:
		{
			obj_sub_tool_selection.tool = "Cobbler's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 20*image_index)
		}
		break;
		
		case 6:
		{
			obj_sub_tool_selection.tool = "Cook's Utensils"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 20*image_index)
		}
		break;
		
		case 7:
		{
			obj_sub_tool_selection.tool = "Glassblower's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 20*image_index)
		}
		break;
		
		case 8:
		{
			obj_sub_tool_selection.tool = "Jeweler's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 20*image_index)
		}
		break;
		
		case 9:
		{
			obj_sub_tool_selection.tool = "Leatherworker's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 20*image_index)
		}
		break;
		
		case 10:
		{
			obj_sub_tool_selection.tool = "Mason's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 20*image_index)
		}
		break;
		
		case 11:
		{
			obj_sub_tool_selection.tool = "Painter's Supplies"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 20*image_index)
		}
		break;
		
		case 12:
		{
			obj_sub_tool_selection.tool = "Potter's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 20*image_index)
		}
		break;
		
		case 13:
		{
			obj_sub_tool_selection.tool = "Smith's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 20*image_index)
		}
		break;

		case 14:
		{
			obj_sub_tool_selection.tool = "Tinker's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 20*image_index)
		}
		break;
		
		case 15:
		{
			obj_sub_tool_selection.tool = "Weaver's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 20*image_index)
		}
		break;
		
		case 16:
		{
			obj_sub_tool_selection.tool = "Woodcarver's Tools"
			obj_checkbox_marker.depth = -200
			obj_checkbox_marker.y = (16 + 20*image_index)
		}
		break;
		
		case 17:
		{
			ds_list_add(obj_player.ToolsList, obj_sub_tool_selection.tool)
			instance_destroy(obj_sub_tool_selection.checkbox)
			
			room_goto(rm_character_creation)
		}
	}
}

