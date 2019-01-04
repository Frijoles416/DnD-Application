if getinfo = true
{
	depth = obj_UI_menu_2.depth - 1
	x = obj_UI_menu_2.x + 36
	y = obj_UI_menu_2.y + 4
	getinfo = false
}

height = string_height_ext(info, 16, (room_width - 256 - 132))

if room = rm_race_selection || room = rm_background_selection
{
	if mouse_wheel_down() && y > (room_height - 32 - height)
	{
		y -= 32
		cooldown = 150
		scroll = false
	}

	if mouse_wheel_up() && y < room_height - 192
	{
		y += 32
		cooldown = 150
		scroll = false
	}

	if cooldown > 0 cooldown -= 1
	if cooldown = 0
	{
		cooldown = -1
		scroll = true
	}

	if scroll = true && y > (room_height - 32 - height)
	{
		y -= .25
	}

	if y > (room_height - 32 - height)
	{
		ResetCooldown = 150
	}
	if ResetCooldown > 0 ResetCooldown -=1
	if ResetCooldown = 0
	{
		ResetCooldown = -1
		cooldown = 150
		x = 0
		y = room_height - 194
	}
}