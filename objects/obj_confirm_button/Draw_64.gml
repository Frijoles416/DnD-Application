scr_button_draw()

if place_meeting(x, y, obj_player) && global.TotalSelection != Total
{
	draw_set_color(c_white)
	draw_rectangle(obj_player.x - 176, obj_player.y - 48, obj_player.x + 176, obj_player.y, false)
	draw_set_color(c_black)
	draw_rectangle(obj_player.x - 174, obj_player.y - 46, obj_player.x + 174, obj_player.y - 2, false)
	draw_set_color(c_white)
	draw_text(obj_player.x - 170, obj_player.y - 36, "You Have Not Completed Your Selections.")

}