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