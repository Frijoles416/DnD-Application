if global.pause exit

depth = -100

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && global.ToolSelection != MaxTools
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