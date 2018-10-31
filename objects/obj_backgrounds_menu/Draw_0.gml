draw_self()
draw_text(x + 4, 4, MaxLanguages)
draw_text(12, 4, LanguagesChosen)

if place_meeting(x, y, obj_player) && !place_meeting(x, y, obj_language_selection)
{
	draw_set_alpha(.5)
	draw_set_color(c_white)
	draw_rectangle(x, y, x + sprite_width, y + sprite_height, false)
	draw_set_alpha(1)
}