if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && !selected && global.ToolSelection != MaxTools
{
	selected = true
	global.ToolSelection += 1
	obj_confirm_button.Total += 1
	
	
	switch(image_index)
	{
		case 0:
		{
			ds_list_add(obj_player.RaceToolsList, "Alchemist's Supplies")
		}
		break;
		
		case 1:
		{
			ds_list_add(obj_player.RaceToolsList, "Brewer's Supplies")
		}
		break;
		
		case 2:
		{
			ds_list_add(obj_player.RaceToolsList, "Calligrapher's Supplies")
		}
		break;
		
		case 3:
		{
			ds_list_add(obj_player.RaceToolsList, "Carpenter's Tools")
		}
		break;
		
		case 4:
		{
			ds_list_add(obj_player.RaceToolsList, "Cartographer's Tools")
		}
		break;
		
		case 5:
		{
			ds_list_add(obj_player.RaceToolsList, "Cobbler's Tools")
		}
		break;
		
		case 6:
		{
			ds_list_add(obj_player.RaceToolsList, "Cook's Utensils")
		}
		break;
		
		case 7:
		{
			ds_list_add(obj_player.RaceToolsList, "Glassblower's Tools")
		}
		break;
		
		case 8:
		{
			ds_list_add(obj_player.RaceToolsList, "Jeweler's Tools")
		}
		break;
		
		case 9:
		{
			ds_list_add(obj_player.RaceToolsList, "Leatherworker's Tools")
		}
		break;
		
		case 10:
		{
			ds_list_add(obj_player.RaceToolsList, "Mason's Tools")
		}
		break;
		
		case 11:
		{
			ds_list_add(obj_player.RaceToolsList, "Painter's Supplies")
		}
		break;
		
		case 12:
		{
			ds_list_add(obj_player.RaceToolsList, "Potter's Tools")
		}
		break;
		
		case 13:
		{
			ds_list_add(obj_player.RaceToolsList, "Smith's Tools")
		}
		break;
		
		case 14:
		{
			ds_list_add(obj_player.RaceToolsList, "Tinker's Tools")
		}
		break;
		
		case 15:
		{
			ds_list_add(obj_player.RaceToolsList, "Weaver's Tools")
		}
		break;
		
		case 16:
		{
			ds_list_add(obj_player.RaceToolsList, "Woodcarver's Tools")
		}
		break;
		
		case 17:
		{
			ds_list_add(obj_player.RaceToolsList, "Navigator's Tools")
		}
		break;
		
		case 18:
		{
			ds_list_add(obj_player.RaceToolsList, "Theives' Tools")
		}
		break;
		
		case 19:
		{
			ds_list_add(obj_player.RaceToolsList, "Land Vehicles")
		}
		break;
		
		case 20:
		{
			ds_list_add(obj_player.RaceToolsList, "Sea/Air Vehicles")
		}
		break;
		
		case 21:
		{
			ds_list_add(obj_player.RaceToolsList, "Disguise Kit")
		}
		break;
		
		case 22:
		{
			ds_list_add(obj_player.RaceToolsList, "Forgery Kit")
		}
		break;
		
		case 23:
		{
			ds_list_add(obj_player.RaceToolsList, "Herbalism Kit")
		}
		break;
		
		case 24:
		{
			ds_list_add(obj_player.RaceToolsList, "Poisoner's Kit")
		}
		break;
		
		/*
		case 25:
		{
			ds_list_add(obj_player.RaceToolsList, "Gaming Set")
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 26:
		{
			ds_list_add(obj_player.RaceToolsList, "Musical Instrument")
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		*/
	}
}

else if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && selected
{
	selected = false
	global.ToolSelection -= 1
	obj_confirm_button.Total -= 1
	
	
	switch(image_index)
	{
		case 0:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Alchemist's Supplies")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 1:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Brewer's Supplies")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 2:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Calligrapher's Supplies")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 3:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Carpenter's Tools")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 4:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Cartographer's Tools")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 5:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Cobbler's Tools")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 6:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Cook's Utensils")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 7:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Glassblower's Tools")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 8:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Jewler's Tools")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 9:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Leatherworker's Tools")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 10:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Mason's Tools")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 11:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Painter's Supplies")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 12:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Potter's Supplies")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 13:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Smith's Tools")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 14:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Tinker's Tools")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 15:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Weaver's Tools")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 16:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Woodcarver's Tools")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 17:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Navigator's Tools")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 18:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Thieve's Tools")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 19:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Land Vehicles")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 20:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Sea/ Air Vehicels")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 21:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Disguise Kit")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 22:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Forgery Kit")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 23:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Herbalism Kit")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 24:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Poisoner's Kit")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		/*
		case 25:
		{
			ds_list_add(obj_player.RaceToolsList, "Gaming Set")
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		
		case 26:
		{
			ds_list_add(obj_player.RaceToolsList, "Musical Instrument")
			
			stat1 = instance_create_depth(x + 32, y - 32, 0,  obj_stat_menu)
			stat1.image_index = 1
			stat2 = instance_create_depth(x + 32, y + 32, 0,  obj_stat_menu)
			stat2.image_index = 3
			instance_destroy(obj_tool_selection)
		}
		break;
		*/
	}
}