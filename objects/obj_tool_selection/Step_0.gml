if global.pause exit

depth = -100

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && obj_backgrounds_menu.ToolsChosen < 1
{
	//selected = true
	//obj_backgrounds_menu.ToolsChosen += 1
	
	
	switch(image_index)
	{
		case 0:
		{
			ds_list_add(obj_player.ToolsList, "Alchemist's Supplies")
			
			
			if room = rm_class_selection
			{
				stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
				stat1.image_index = 1
				stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
				stat2.image_index = 3
				instance_destroy(obj_tool_selection)
			}

		}
		break;
		
		case 1:
		{
			ds_list_add(obj_player.ToolsList, "Brewer's Supplies")
			
			if room = rm_class_selection
			{
				stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
				stat1.image_index = 1
				stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
				stat2.image_index = 3
				instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 2:
		{
			ds_list_add(obj_player.ToolsList, "Calligrapher's Supplies")
			
			if room = rm_class_selection
			{
				stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
				stat1.image_index = 1
				stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
				stat2.image_index = 3
				instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 3:
		{
			ds_list_add(obj_player.ToolsList, "Carpenter's Tools")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 4:
		{
			ds_list_add(obj_player.ToolsList, "Cartographer's Tools")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 5:
		{
			ds_list_add(obj_player.ToolsList, "Cobbler's Tools")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 6:
		{
			ds_list_add(obj_player.ToolsList, "Cook's Utensils")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 7:
		{
			ds_list_add(obj_player.ToolsList, "Glassblower's Tools")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 8:
		{
			ds_list_add(obj_player.ToolsList, "Jeweler's Tools")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 9:
		{
			ds_list_add(obj_player.ToolsList, "Leatherworker's Tools")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 10:
		{
			ds_list_add(obj_player.ToolsList, "Mason's Tools")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 11:
		{
			ds_list_add(obj_player.ToolsList, "Painter's Supplies")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 12:
		{
			ds_list_add(obj_player.ToolsList, "Potter's Tools")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 13:
		{
			ds_list_add(obj_player.ToolsList, "Smith's Tools")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 14:
		{
			ds_list_add(obj_player.ToolsList, "Tinker's Tools")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 15:
		{
			ds_list_add(obj_player.ToolsList, "Weaver's Tools")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 16:
		{
			ds_list_add(obj_player.ToolsList, "Woodcarver's Tools")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 17:
		{
			ds_list_add(obj_player.ToolsList, "Navigator's Tools")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 18:
		{
			ds_list_add(obj_player.ToolsList, "Theives' Tools")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 19:
		{
			ds_list_add(obj_player.ToolsList, "Land Vehicles")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 20:
		{
			ds_list_add(obj_player.ToolsList, "Sea/Air Vehicles")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 21:
		{
			ds_list_add(obj_player.ToolsList, "Disguise Kit")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 22:
		{
			ds_list_add(obj_player.ToolsList, "Forgery Kit")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 23:
		{
			ds_list_add(obj_player.ToolsList, "Herbalism Kit")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		case 24:
		{
			ds_list_add(obj_player.ToolsList, "Poisoner's Kit")
			
			if room = rm_class_selection
			{
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
			}
		}
		break;
		
		/*
		case 25:
		{
			ds_list_add(obj_player.ToolsList, "Gaming Set")
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 26:
		{
			ds_list_add(obj_player.ToolsList, "Musical Instrument")
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		*/
	}
	
	instance_destroy(obj_tool_selection)
}