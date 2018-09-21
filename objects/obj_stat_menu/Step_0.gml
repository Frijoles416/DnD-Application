if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		case 0:
		{
			if obj_player.InitialStrength != 20
			obj_player.InitialStrength += 1 
		}
		break;
		
		case 1:
		{
			if obj_player.InitialDexterity != 20
			obj_player.InitialDexterity += 1 
		}
		break;
		
		case 2:
		{
			if obj_player.InitialConstitution != 20
			obj_player.InitialConstitution += 1 
		}
		break;
		
		case 3:
		{
			if obj_player.InitialIntelligence != 20
			obj_player.InitialIntelligence += 1 
		}
		break;
		
		case 4:
		{
			if obj_player.InitialWisdom != 20
			obj_player.InitialWisdom += 1 
		}
		break;
		
		case 5:
		{
			if obj_player.InitialCharisma != 20
			obj_player.InitialCharisma += 1 
		}
		break;
		
		case 6:
		{
			room_goto(rm_character_creation)
		}
		break;
		
	}
}

if mouse_check_button_released(mb_right) && place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		case 0:
		{
			if obj_player.InitialStrength != 0
			obj_player.InitialStrength -= 1 
		}
		break;
		
		case 1:
		{
			if obj_player.InitialDexterity != 0
			obj_player.InitialDexterity -= 1 
		}
		break;
		
		case 2:
		{
			if obj_player.InitialConstitution != 0
			obj_player.InitialConstitution -= 1 
		}
		break;
		
		case 3:
		{
			if obj_player.InitialIntelligence != 0
			obj_player.InitialIntelligence -= 1 
		}
		break;
		
		case 4:
		{
			if obj_player.InitialWisdom != 0
			obj_player.InitialWisdom -= 1 
		}
		break;
		
		case 5:
		{
			if obj_player.InitialCharisma != 0
			obj_player.InitialCharisma -= 1 
		}
		break;
		
	}
}

if room = rm_race_selection && mouse_check_button_released(mb_left)
{
switch(image_index)
	{
		case 0:
		{
			obj_player.StrengthAdded = 1
			room_goto(rm_character_creation)
		}
		break;
		
		case 1:
		{
			obj_player.DexterityAdded = 1
			room_goto(rm_character_creation)
		}
		break;
		
		case 2:
		{
			obj_player.ConstitutionAdded = 1
			room_goto(rm_character_creation)
		}
		break;
		
		case 3:
		{
			obj_player.IntelligenceAdded = 1
			room_goto(rm_character_creation)
		}
		break;
		
		case 4:
		{
			obj_player.WisdomAdded = 1
			room_goto(rm_character_creation)
		}
		break;
		
		case 5:
		{
			obj_player.CharismaAdded = 1
			room_goto(rm_character_creation)
		}
		break;
		
	}
}