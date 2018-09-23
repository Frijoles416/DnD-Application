if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	obj_class_menu.ChosenInstru += 1
	if obj_class_menu.ChosenInstru = obj_class_menu.MaxInstru
		{
			instance_destroy(obj_instrument_choices)
			
			MaxCantrips = 2
			var i
			var space = 32
			var spell
			for (var i = 0; i < 11; i += 1)
			{
				spell[i] = instance_create_depth(x + 32, y + (space * i), 0, obj_bard_spells)
				spell[i].image_index = i
			}
		}
	
	switch(image_index)
	{
		case 0:
		{
			ds_list_add(obj_player.ToolsList, "Bagpipes")
		}
		break;
		
		case 1:
		{
			ds_list_add(obj_player.ToolsList, "Drum")
		}
		break;
		
		case 2:
		{
			ds_list_add(obj_player.ToolsList, "Dulcimer")
		}
		break;
		
		case 3:
		{
			ds_list_add(obj_player.ToolsList, "Flute")
		}
		break;
		
		case 4:
		{
			ds_list_add(obj_player.ToolsList, "Lute")
		}
		break;
		
		case 5:
		{
			ds_list_add(obj_player.ToolsList, "Lyre")
		}
		break;
		
		case 6:
		{
			ds_list_add(obj_player.ToolsList, "Horn")
		}
		break;
		
		case 7:
		{
			ds_list_add(obj_player.ToolsList, "Pan Flute")
		}
		break;
		
		case 8:
		{
			ds_list_add(obj_player.ToolsList, "Shawm")
		}
		break;
		
		case 9:
		{
			ds_list_add(obj_player.ToolsList, "Viol")
		}
		break;
	
		
	}
}

