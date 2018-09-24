if global.pause exit

depth = -100

if obj_backgrounds_menu.CanChooseArtisansTools = true
{
	//switch sprites for artisan's tools ONLY (indices 0-18)
	if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
	{
		/*
		switch()
		{
			case x:
			{
				ds_list_add(obj_player.ToolsList, "tool_x")
				ds_list_add(obj_player.InventoryList, "tool_x")
				
				room_goto(rm_character_creation)
			}
			break;
		}
		*/
	}
}

else if obj_backgrounds_menu.CanChooseGamingSet = true
{
	//switch sprites for gaming sets ONLY
	if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
	{
		/*
		
		*/
	}
}

else if obj_backgrounds_menu.CanChooseInstrument = true
{
	//switch sprites for musical instruments ONLY
	if mouse_check_button(mb_left) && place_meeting(x, y, obj_player)
	{
		/*
		
		*/
	}
}

else if obj_backgrounds_menu.CanChooseGladiatorWeapon = true
{
	//switch sprites for weapons?
	if mouse_check_button(mb_left) && place_meeting(x, y, obj_player)
	{
		/*
		
		*/
	}
}

