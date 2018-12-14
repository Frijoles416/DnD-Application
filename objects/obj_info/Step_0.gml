if getinfo = true
{
	depth = obj_UI_menu_2.depth - 1
	x = obj_UI_menu_2.x + 36
	y = obj_UI_menu_2.y + 4
	getinfo = false
}

height = string_height_ext(info, 16, (room_width - 256 - 132))

if mouse_wheel_down() && y > (room_height - 32 - height)
{
	y -= 32
}

if mouse_wheel_up() && y < room_height - 192
{
	y += 32
}

/*
if room = rm_character_creation
{
if mouse_wheel_down() && y > -320
{
	y -= 32
}

if mouse_wheel_up() && y != 0
{
	y += 32
}
}