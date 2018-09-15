if place_meeting(x, y, obj_player) && x = room_width - 32
{
	draw_set_color(c_black)
	draw_rectangle(x + 64, 32, room_width, room_height - 128, false)
	draw_set_color(c_white)
	draw_rectangle(x + 64, 32, room_width, room_height - 128, true)
	draw_sprite(sprite_index, image_index, x - 32, y)
}
else 
{
	draw_self()
	draw_set_color(c_black)
	draw_rectangle(x + 32, 32, room_width, room_height - 128, false)
	draw_set_color(c_white)
	draw_rectangle(x + 32, 32, room_width, room_height - 128, true)
}