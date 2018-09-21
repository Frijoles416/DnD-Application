draw_self()
draw_text(room_width/2, 32, "Press Left Mouse to add, Right mouse to subtract \n assign 15, 14, 13, 12, 10, 8")
switch(image_index)
{
	case 0:
	{
		draw_text(x + 128, y, obj_player.InitialStrength)
		
	break;
	}
	
	case 1:
	{
		draw_text(x + 128, y, obj_player.InitialDexterity)
		
	break;
	}
	
	case 2:
	{
		draw_text(x + 128, y, obj_player.InitialConstitution)
		
	break;
	}
	
	case 3:
	{
		draw_text(x + 128, y, obj_player.InitialIntelligence)
		
	break;
	}
	
	case 4:
	{
		draw_text(x + 128, y, obj_player.InitialWisdom)
		
	break;
	}
	
	case 5:
	{
		draw_text(x + 128, y, obj_player.InitialCharisma)
		
	break;
	}
}

if place_meeting(x, y, obj_player)
{
	draw_set_alpha(.5)
	draw_set_color(c_white)
	draw_rectangle(x, y, x + sprite_width, y + sprite_height, false)
	draw_set_alpha(1)
}