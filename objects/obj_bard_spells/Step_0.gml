if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	if image_index < 10 obj_player.ChosenCantrips += 1
	else if image_index > 9 obj_player.ChosenSpells += 1
	if obj_class_menu.ChosenCantrips =  obj_class_menu.MaxCantrips
	{
			alarm[0] = 1
	}
	if obj_class_menu.ChosenSpells =  obj_class_menu.MaxSpells room_goto(rm_equipment_selection)
	
	switch(image_index)
	{
		case 0:
		{
			ds_list_add(obj_player.Cantrips, "Blade Ward")
		}
		break;
		
		case 1:
		{
			ds_list_add(obj_player.Cantrips, "Dancing Lights")
		}
		break;
		
		case 2:
		{
			ds_list_add(obj_player.Cantrips, "Friends")
		}
		break;
		
		case 3:
		{
			ds_list_add(obj_player.Cantrips, "Light")
		}
		break;
		
		case 4:
		{
			ds_list_add(obj_player.Cantrips, "Mage Hand")
		}
		break;
		
		case 5:
		{
			ds_list_add(obj_player.Cantrips, "Mending")
		}
		break;
		
		case 6:
		{
			ds_list_add(obj_player.Cantrips, "Message")
		}
		break;
		
		case 7:
		{
			ds_list_add(obj_player.Cantrips, "Minor Illusion")
		}
		break;
		
		case 8:
		{
			ds_list_add(obj_player.Cantrips, "Prestidigitation")
		}
		break;
		
		case 9:
		{
			ds_list_add(obj_player.Cantrips, "Thunderclap")
		}
		break;
		
		case 10:
		{
			ds_list_add(obj_player.Cantrips, "True Strike")
		}
		break;
		
		case 11:
		{
			ds_list_add(obj_player.Cantrips, "Vicious Mockery")
		}
		break;
	}
}

