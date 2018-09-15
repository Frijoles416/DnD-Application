draw_self()
if place_meeting(x, y, obj_player)
{
	draw_set_alpha(.5)
	draw_set_color(c_white)
	draw_rectangle(x + 2, y + 2, x + sprite_width - 2, y + sprite_height - 2, false)
	draw_set_alpha(1)
}