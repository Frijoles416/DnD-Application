draw_self()

draw_set_font(fnt_1)
draw_set_color(c_lime)
draw_set_halign(fa_center)
draw_text(room_width/2, 32, "Starting Equipment")
draw_text(room_width/2 - 256, 96, "Choice A\n" + string(choice1))
draw_text(room_width/2 + 192, 96, "Choice B\n" + string(choice2))


if place_meeting(x, y, obj_player)
{
	draw_set_alpha(.5)
	draw_set_color(c_white)
	draw_rectangle(x, y, x + sprite_width, y + sprite_height, false)
	draw_set_alpha(1)
}