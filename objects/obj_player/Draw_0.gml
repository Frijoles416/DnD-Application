/*
if(HoverNode != noone) && instance_exists(obj_node)
{
	draw_sprite(spr_selected, image_index, Gridx * GRID_SIZE, Gridy * GRID_SIZE + 16)
}
*/
draw_self()

if (HoverNode != noone) && instance_exists(obj_node)
{
	tempText = string(Gridx) + " / " + string(Gridy) + " = "
	
	if HoverNode.occupant != noone
	{
		tempText += HoverNode.occupant.name
	}
	else
	{
		tempText += "noone"
	}
	
	draw_set_color(c_black)
	draw_rectangle(0, 0, string_width(tempText), string_height(tempText), false)
	
	draw_set_color(c_white)
	draw_text(0,0, tempText)
	draw_set_color(c_lime)
}