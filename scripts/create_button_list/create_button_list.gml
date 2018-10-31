///create_button_list(type, maxnumber, buttontype)

argument0 = type
argument1 = maxnumber
argument2 = buttontype

var i
var space = 16

for ( i = 0; i < 14; i += 1)
{
	type[i] = instance_create_depth(x + 32, y + (space * i), 0, buttontype)
	type[i].image_index = i
}