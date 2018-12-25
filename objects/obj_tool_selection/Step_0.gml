if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && !selected && global.ToolSelection != MaxTools
{
	selected = true
	global.ToolSelection += 1
	obj_confirm_button.Total += 1
	
	{
	switch(image_index)
	{
		case 0:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Alchemist's Supplies")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Alchemist's Supplies")
		}
		break;
		
		case 1:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Brewer's Supplies")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Brewer's Supplies")
		}
		break;
		
		case 2:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Calligrapher's Supplies")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Calligrapher's Supplies")
		}
		break;
		
		case 3:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Carpenter's Tools")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Carpenter's Tools")
		}
		break;
		
		case 4:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Cartographer's Tools")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Cartographer's Tools")
		}
		break;
		
		case 5:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Cobbler's Tools")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Cobbler's Tools")
		}
		break;
		
		case 6:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Cook's Utensils")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Cook's Utensils")
		}
		break;
		
		case 7:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Glassblower's Tools")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Glassblower's Tools")
		}
		break;
		
		case 8:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Jeweler's Tools")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Jeweler's Tools")
		}
		break;
		
		case 9:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Leatherworker's Tools")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Leatherworker's Tools")
		}
		break;
		
		case 10:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Mason's Tools")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Mason's Tools")
		}
		break;
		
		case 11:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Painter's Supplies")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Painter's Supplies")
		}
		break;
		
		case 12:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Potter's Tools")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Potter's Tools")
		}
		break;
		
		case 13:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Smith's Tools")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Smith's Tools")
		}
		break;
		
		case 14:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Tinker's Tools")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Tinker's Tools")
		}
		break;
		
		case 15:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Weaver's Tools")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Weaver's Tools")
		}
		break;
		
		case 16:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Woodcarver's Tools")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Woodcarver's Tools")
		}
		break;
		
		case 17:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Navigator's Tools")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Navigator's Tools")
		}
		break;
		
		case 18:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Theives' Tools")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Theives' Tools")
		}
		break;
		
		case 19:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Land Vehicles")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Land Vehicles")
		}
		break;
		
		case 20:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Sea/Air Vehicles")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Sea/Air Vehicles")
		}
		break;
		
		case 21:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Disguise Kit")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Disguise Kit")
		}
		break;
		
		case 22:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Forgery Kit")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Forgery Kit")
		}
		break;
		
		case 23:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Herbalism Kit")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Herbalism Kit")
		}
		break;
		
		case 24:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Poisoner's Kit")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Poisoner's Kit")
		}
		break;
		
		case 25:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Bagpipes")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Bagpipes")
		}
		break;
		
		case 26:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Drum")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Drum")
		}
		break;
		
		case 27:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Dulcimer")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Dulcimer")
		}
		break;
		
		case 28:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Flute")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Flute")
		}
		break;
		
		case 29:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Lute")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Lute")
		}
		break;
		
		case 30:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Lyre")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Lyre")
		}
		break;
		
		case 31:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Horn")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Horn")
		}
		break;
		
		case 32:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Pan Flute")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Pan Flute")
		}
		break;
		
		case 33:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Shawm")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Shawm")
		}
		break;
		
		case 34:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Viol")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Viol")
		}
		break;
		
		case 35:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Dice Set")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Dice Set")
		}
		break;
		
		case 36:
		{
			if room = rm_race_selection ds_list_add(obj_player.RaceToolsList, "Playing Card Set")
			if room = rm_background_selection ds_list_add(obj_player.BackgroundToolsList, "Playing Card Set")
		}
		break;
	}
	}
}

else if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && selected
{
	selected = false
	global.ToolSelection -= 1
	obj_confirm_button.Total -= 1
	
	if room = rm_race_selection
	{
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
			pos = ds_list_find_index(obj_player.RaceToolsList, "Potter's Tools")
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
		
		case 25:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Bagpipes")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 26:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Drum")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 27:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Dulcimer")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 28:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Flute")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 29:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Lute")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 30:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Lyre")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 31:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Horn")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 32:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Pan Flute")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 33:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Shawm")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
		
		case 34:
		{
			pos = ds_list_find_index(obj_player.RaceToolsList, "Viol")
			ds_list_delete(obj_player.RaceToolsList, pos)
		}
		break;
	}
	}
	
	if room = rm_background_selection
	{
	switch(image_index)
	{
		case 0:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Alchemist's Supplies")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 1:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Brewer's Supplies")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 2:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Calligrapher's Supplies")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 3:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Carpenter's Tools")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 4:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Cartographer's Tools")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 5:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Cobbler's Tools")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 6:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Cook's Utensils")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 7:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Glassblower's Tools")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 8:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Jewler's Tools")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 9:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Leatherworker's Tools")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 10:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Mason's Tools")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 11:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Painter's Supplies")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 12:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Potter's Tools")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 13:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Smith's Tools")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 14:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Tinker's Tools")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 15:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Weaver's Tools")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 16:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Woodcarver's Tools")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 17:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Navigator's Tools")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 18:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Thieve's Tools")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 19:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Land Vehicles")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 20:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Sea/ Air Vehicels")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 21:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Disguise Kit")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 22:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Forgery Kit")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 23:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Herbalism Kit")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 24:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Poisoner's Kit")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 25:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Bagpipes")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 26:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Drum")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 27:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Dulcimer")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 28:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Flute")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 29:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Lute")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 30:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Lyre")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 31:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Horn")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 32:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Pan Flute")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 33:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Shawm")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
		
		case 34:
		{
			pos = ds_list_find_index(obj_player.BackgroundToolsList, "Viol")
			ds_list_delete(obj_player.BackgroundToolsList, pos)
		}
		break;
	}
	}
}