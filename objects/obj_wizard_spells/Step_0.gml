if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && !selected && global.SpellSelection != Total
{
	selected = true
	global.SpellSelection += 1
	obj_confirm_button.Total += 1
}

else if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && selected
{
	selected = false
	global.SpellSelection -= 1
	obj_confirm_button.Total -= 1
}

