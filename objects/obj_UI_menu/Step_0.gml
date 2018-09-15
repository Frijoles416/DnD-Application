if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	open = true
	cooldown = 2
	global.pause = true
}

if x != 128 && open
{
	x -= 16
}

if mouse_check_button_released(mb_left) && x = 128  && place_meeting(x, y, obj_player)
{
	open = false
	global.pause = false
	if instance_exists(obj_UI_menu_2) instance_destroy(obj_UI_menu_2)
	obj_info.info = ""
}

if x != room_width - 32 && !open
{
	x += 16
}

if x = room_width - 32 self.depth = 0
else if x < room_width - 32 self.depth = -100

cooldown -= 1
if cooldown < 0 cooldown = -1
if cooldown = 0
{
	menu1 = instance_create_depth(room_width - 32, 32, -101, obj_UI_menu_2)
	menu1.image_index = 0
	cooldown = -1
}



