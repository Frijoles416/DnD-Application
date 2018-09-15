if getinfo = true
{
	depth = obj_UI_menu_2.depth - 1
	x = obj_UI_menu_2.x + 36
	y = obj_UI_menu_2.y + 4
	getinfo = false
}

height = string_height_ext(info, 16, (room_width - 224))

if mouse_wheel_down()&& y >  ((height * -1) + 404)
{
	y -= 32
}

if mouse_wheel_up() && y < 36
{
	y += 32
}