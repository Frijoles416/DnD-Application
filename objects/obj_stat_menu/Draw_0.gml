draw_self()
draw_text(room_width/2, 32, "Press Left Mouse to add, Right mouse to subtract \n assign 15, 14, 13, 12, 10, 8")
switch(image_index)
{
	case 0:
	{
		draw_text(x + 128, y, obj_player.CharacterStrength)
		
	break;
	}
	
	case 1:
	{
		draw_text(x + 128, y, obj_player.CharacterDexterity)
		
	break;
	}
	
	case 2:
	{
		draw_text(x + 128, y, obj_player.CharacterConstitution)
		
	break;
	}
	
	case 3:
	{
		draw_text(x + 128, y, obj_player.CharacterIntelligence)
		
	break;
	}
	
	case 4:
	{
		draw_text(x + 128, y, obj_player.CharacterWisdom)
		
	break;
	}
	
	case 5:
	{
		draw_text(x + 128, y, obj_player.CharacterCharisma)
		
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