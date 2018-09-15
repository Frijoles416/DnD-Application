if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && !place_meeting(x, y, obj_UI_menu)
{
	open = true
	cooldown = 60
}

if x != 128 + 32 && open
{
	x -= 16
}

if mouse_check_button_released(mb_left) && x = 128 + 32  && place_meeting(x, y, obj_player)
{
	open = false
	obj_info.info = ""
	if instance_exists(obj_race_information) instance_destroy(obj_race_information)
}

if x != room_width - 32 && !open
{
	x += 16
}

if x = room_width - 32 && obj_UI_menu.open = true self.depth = -101
else if x = room_width - 32 && obj_UI_menu.x = room_width - 32 self.depth = obj_UI_menu.depth + 1
else if x < room_width - 32 self.depth = obj_UI_menu.depth -1

cooldown -= 1
if cooldown < 0 cooldown = -1
if cooldown = 0
{
	menu1 = instance_create_depth(x + 36, y + 4, -1000, obj_race_information)
	menu1.image_index = 0
	menu2 = instance_create_depth(x + 36 + 64, y + 4, -1000, obj_race_information)
	menu2.image_index = 1
	menu3 = instance_create_depth(x + 36 + 64 * 2, y + 4, -1000, obj_race_information)
	menu3.image_index = 2
	menu4 = instance_create_depth(x + 36 + 64 * 3, y + 4, -1000, obj_race_information)
	menu4.image_index = 3
	menu5 = instance_create_depth(x + 36 + 64 * 4, y + 4, -1000, obj_race_information)
	menu5.image_index = 4
	menu6 = instance_create_depth(x + 36 + 64 * 5, y + 4, -1000, obj_race_information)
	menu6.image_index = 5
	menu7 = instance_create_depth(x + 36 + 64 * 6, y + 4, -1000, obj_race_information)
	menu7.image_index = 6
	menu8 = instance_create_depth(x + 36 + 64 * 7, y + 4, -1000, obj_race_information)
	menu8.image_index = 7
	menu9 = instance_create_depth(x + 36 + 64 * 8, y + 4, -1000, obj_race_information)
	menu9.image_index = 8
	menu10 = instance_create_depth(x + 36 + 64 * 9, y + 4, -1000, obj_race_information)
	menu10.image_index = 9
	menu11 = instance_create_depth(x + 36 + 64 * 10, y + 4, -1000, obj_race_information)
	menu11.image_index = 10
	menu12 = instance_create_depth(x + 36, y + 4 + 32, -1000, obj_race_information)
	menu12.image_index = 11
	menu13 = instance_create_depth(x + 36 + 64, y + 4 + 32, -1000, obj_race_information)
	menu13.image_index = 12
	menu14 = instance_create_depth(x + 36 + 64 * 2, y + 4 + 32, -1000, obj_race_information)
	menu14.image_index = 13
	menu15 = instance_create_depth(x + 36 + 64 * 3, y + 4 + 32, -1000, obj_race_information)
	menu15.image_index = 14
	menu16 = instance_create_depth(x + 36 + 64 * 4, y + 4 + 32, -1000, obj_race_information)
	menu16.image_index = 15
	menu17 = instance_create_depth(x + 36 + 64 * 5, y + 4 + 32, -1000, obj_race_information)
	menu17.image_index = 16
	menu18 = instance_create_depth(x + 36 + 64 * 6, y + 4 + 32, -1000, obj_race_information)
	menu18.image_index = 17
	menu19 = instance_create_depth(x + 36 + 64 * 7, y + 4 + 32, -1000, obj_race_information)
	menu19.image_index = 18
	menu20 = instance_create_depth(x + 36 + 64 * 8, y + 4 + 32, -1000, obj_race_information)
	menu20.image_index = 19
	menu21 = instance_create_depth(x + 36 + 64 * 9, y + 4 + 32, -1000, obj_race_information)
	menu21.image_index = 20
	menu22 = instance_create_depth(x + 36 + 64 * 10, y + 4 + 32, -1000, obj_race_information)
	menu22.image_index = 21
	menu23 = instance_create_depth(x + 36, y + 4 + 32 * 2, -1000, obj_race_information)
	menu23.image_index = 22
	menu24 = instance_create_depth(x + 36 + 64, y + 4 + 32 * 2, -1000, obj_race_information)
	menu24.image_index = 23
	menu25 = instance_create_depth(x + 36 + 64 * 2, y + 4 + 32 * 2, -1000, obj_race_information)
	menu25.image_index = 24
	menu26 = instance_create_depth(x + 36 + 64 * 3, y + 4 + 32 * 2, -1000, obj_race_information)
	menu26.image_index = 25
	menu27 = instance_create_depth(x + 36 + 64 * 4, y + 4 + 32 * 2, -1000, obj_race_information)
	menu27.image_index = 26
	menu28 = instance_create_depth(x + 36 + 64 * 5, y + 4 + 32 * 2, -1000, obj_race_information)
	menu28.image_index = 27
	menu29 = instance_create_depth(x + 36 + 64 * 6, y + 4 + 32 * 2, -1000, obj_race_information)
	menu29.image_index = 28
	menu30 = instance_create_depth(x + 36 + 64 * 7, y + 4 + 32 * 2, -1000, obj_race_information)
	menu30.image_index = 29
	menu31 = instance_create_depth(x + 36 + 64 * 8, y + 4 + 32 * 2, -1000, obj_race_information)
	menu31.image_index = 30
	menu10 = instance_create_depth(x + 36 + 64 * 9, y + 4 + 32 * 2, -1000, obj_race_information)
	menu10.image_index = 31
	menu11 = instance_create_depth(x + 36 + 64 * 10, y + 4 + 32 * 2, -1000, obj_race_information)
	menu11.image_index = 32
	menu23 = instance_create_depth(x + 36, y + 4 + 32 * 3, -1000, obj_race_information)
	menu23.image_index = 33
	menu24 = instance_create_depth(x + 36 + 64, y + 4 + 32 * 3, -1000, obj_race_information)
	menu24.image_index = 34
	menu25 = instance_create_depth(x + 36 + 64 * 2, y + 4 + 32 * 3, -1000, obj_race_information)
	menu25.image_index = 35
	
	cooldown = -1
}