if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && !selected && global.WeaponsSelection != MaxWeapons
{
	selected = true
	global.WeaponsSelection += 1
	obj_confirm_button.Total += 1
	
	switch(image_index)
	{
		case 0:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Club")
		}
		break;
		
		case 1:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Dagger")
		}
		break;
		
		case 2:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Greatclub")
		}
		break;
		
		case 3:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Handaxe")
		}
		break;
		
		case 4:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Javalin")
		}
		break;
		
		case 5:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Light Hammer")
		}
		break;
		
		case 6:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Mace")
		}
		break;
		
		case 7:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Quarterstaff")
		}
		break;
		
		case 8:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Sickle")
		}
		break;
		
		case 9:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Spear")
		}
		break;
		
		case 10:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Light Crossbow")
		}
		break;
		
		case 11:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Dart")
		}
		break;
		
		case 12:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Shortbow")
		}
		break;
		
		case 13:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Sling")
		}
		break;
		
		case 14:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Battleaxe")
		}
		break;
		
		case 15:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Flail")
		}
		break;
		
		case 16:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Glaive")
		}
		break;
		
		case 17:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Greataxe")
			
		}
		break;
		
		case 18:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Greatsword")
		}
		break;
		
		case 19:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Halberd")
		}
		break;
		
		case 20:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Lance")
		}
		break;
		
		case 21:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Longsword")
		}
		break;
		
		case 22:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Maul")
		}
		break;
		
		
		case 23:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Morningstar")
		}
		break;
		
		case 24:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Pike")
		}
		break;
		
		case 25:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Rapier")
		}
		break;
		
		case 26:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Scimitar")
		}
		break;
		
		
		case 27:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Shortsword")
		}
		break;
		
		case 28:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Trident")
		}
		break;
		
		case 29:
		{
			ds_list_add(obj_player.RaceWeaponsList, "War Pick")
		}
		break;
		
		case 30:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Warhammer")
		}
		break;
		
		case 31:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Whip")
		}
		break;
		
		case 32:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Blowgun")
		}
		break;
		
		case 33:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Hand Crossbow")
		}
		break;
		
		case 34:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Heavy Crossbow")
		}
		break;
		
		case 35:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Longbow")
		}
		break;
		
		case 36:
		{
			ds_list_add(obj_player.RaceWeaponsList, "Blowgun")
		}
		break;
	}
}

else if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && selected
{
	selected = false
	global.WeaponsSelection -= 1
	obj_confirm_button.Total -= 1
	
	switch(image_index)
	{
		case 0:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Club");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 1:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Dagger");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 2:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Greatclub");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 3:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Handaxe");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 4:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Javalin");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 5:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Light Hammer");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 6:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Mace");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 7:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Quarterstaff");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 8:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Sickle");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 9:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Spear");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 10:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Light Crossbow");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 11:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Dart");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 12:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Shortbow");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 13:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Sling");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 14:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Battleaxe");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 15:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Flail");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 16:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Glaive");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 17:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Greataxe");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
			
		}
		break;
		
		case 18:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Greatsword");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 19:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Halberd");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 20:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Lance");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 21:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Longsword");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 22:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Maul");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		
		case 23:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Morningstar");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 24:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Pike");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 25:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Rapier");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 26:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Scimitar");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		
		case 27:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Shortsword");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 28:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Trident");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 29:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "War Pick");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 30:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Warhammer");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 31:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Whip");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 32:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Blowgun");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 33:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Hand Crossbow");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 34:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Heavy Crossbow");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 35:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Longbow");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
		
		case 36:
		{
			pos = ds_list_find_index(obj_player.RaceWeaponsList, "Blowgun");
			ds_list_delete(obj_player.RaceWeaponsList, pos)
		}
		break;
	}
}