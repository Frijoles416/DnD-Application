draw_set_color(c_lime)
draw_text_ext(x , y , info, 16, (room_width - 224))
if height > 0 && !race_info
{
	draw_set_color(c_black)
	draw_rectangle(128 + 32, room_height - 127, room_width, room_height, false)
	draw_rectangle(128 + 32, 0, room_width, 31, false)
}

if room = rm_race_selection
{
	draw_set_color(c_white)
	draw_rectangle(0, room_height - 192, room_width - 256 - 128, room_height - 14, false)
	draw_set_color(c_black)
	draw_rectangle(2, room_height - 190, room_width - 256 - 130, room_height - 16, false)
	draw_set_color(c_white)
	draw_text_ext(x , y , info, 16, room_width - 16)
}
