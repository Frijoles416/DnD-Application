draw_self()

if place_meeting(x, y, obj_player)
{
	draw_set_alpha(.5)
	draw_set_color(c_white)
	draw_rectangle(x, y, x + sprite_width, y + sprite_height, false)
	draw_set_alpha(1)
}

if selected
{
	draw_set_alpha(.5)
	draw_set_color(c_white)
	draw_rectangle(x, y, x + sprite_width, y + sprite_height, false)
	draw_set_alpha(1)
}