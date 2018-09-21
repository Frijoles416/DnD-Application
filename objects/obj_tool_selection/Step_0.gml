if global.pause exit

depth = -100

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		case 0:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Alchemist Supplies")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Alchemist Supplies")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 1:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Brewer's Supplies")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Brewer's Supplies")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 2:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Calligrapher's Supplies")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Calligrapher's Supplies")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 3:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Carpenter's Tools")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Carpenter's Tools")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 4:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Cartographer's Tools")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Cartographer's Tools")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 5:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Cobbler's Tools")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Cobbler's Tools")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 6:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Cook's Utensils")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Cook's Utensils")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 7:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Glassblower's Tools")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Glassblower's Tools")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 8:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Jeweler's Tools")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Jeweler's Tools")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 9:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Leatherworker's Tools")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Leatherworker's Tools")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 10:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Mason's Tools")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Mason's Tools")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 11:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Painter's Supplies")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Painter's Supplies")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 12:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Potter's Tools")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Potter's Tools")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 13:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Smith's Tools")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Smith's Tools")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 14:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Tinkers's Tools")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Tinker's Tools")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 15:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Weaver's Tools")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Weaver's Tools")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 16:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Woodcarver's Tools")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Woodcarver's Tools")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 17:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Navigator's Tools")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Navigator's Tools")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 18:
		{
			if !ds_exists(obj_player.ToolsList, ds_type_list)
			{
				obj_player.ToolsList = ds_list_create()
				ds_list_add(obj_player.ToolsList, "Theives' Tools")
			}
			else
			{
				ds_list_add(obj_player.ToolsList, "Theives' Tools")
			}
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
	}
}