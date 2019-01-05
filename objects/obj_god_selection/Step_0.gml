if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && !selected
{
	selected = true
	obj_confirm_button.Total += 1
	
	switch(image_index)
	{
		case 0: obj_player.GodFollowing = "Auril"
		break;
		
		case 1: obj_player.GodFollowing = "Azuth"
		break;
		
		case 2: obj_player.GodFollowing = "Bane"
		break;
		
		case 3: obj_player.GodFollowing = "Beshaba"
		break;
		
		case 4: obj_player.GodFollowing = "Bhaal"
		break;
		
		case 5: obj_player.GodFollowing = "Chauntea"
		break;
		
		case 6: obj_player.GodFollowing = "Cyric"
		break;
		
		case 7: obj_player.GodFollowing = "Deneir"
		break;
		
		case 8: obj_player.GodFollowing = "Eldath"
		break;
		
		case 9: obj_player.GodFollowing = "Gond"
		break;
		
		case 10: obj_player.GodFollowing = "Helm"
		break;
		
		case 11: obj_player.GodFollowing = "ilmater"
		break;
		
		case 12: obj_player.GodFollowing = "Kelemvor"
		break;
		
		case 13: obj_player.GodFollowing = "Lathander"
		break;
		
		case 14: obj_player.GodFollowing = "Leira"
		break;
		
		case 15: obj_player.GodFollowing = "Lliira"
		break;
		
		case 16: obj_player.GodFollowing = "Loviatar"
		break;
		
		case 17: obj_player.GodFollowing = "Malar"
		break;
		
		case 18: obj_player.GodFollowing = "Mask"
		break;
		
		case 19: obj_player.GodFollowing = "Mielikki"
		break;
		
		case 20: obj_player.GodFollowing = "Milil"
		break;
		
		case 21: obj_player.GodFollowing = "Myrkul"
		break;
		
		case 22: obj_player.GodFollowing = "Mystra"
		break;
		
		case 23: obj_player.GodFollowing = "Oghma"
		break;
		
		case 24: obj_player.GodFollowing = "Sarvras"
		break;
		
		case 25: obj_player.GodFollowing = "Selune"
		break;
		
		case 26: obj_player.GodFollowing = "Shar"
		break;
		
		case 27: obj_player.GodFollowing = "Silvanus"
		break;
		
		case 28: obj_player.GodFollowing = "Sune"
		break;
		
		case 29: obj_player.GodFollowing = "Talona"
		break;
		
		case 30: obj_player.GodFollowing = "Talos"
		break;
		
		case 31: obj_player.GodFollowing = "Tempus"
		break;
		
		case 32: obj_player.GodFollowing = "Torm"
		break;
		
		case 33: obj_player.GodFollowing = "Tymora"
		break;
		
		case 34: obj_player.GodFollowing = "Tyr"
		break;
		
		case 35: obj_player.GodFollowing = "Umberlee"
		break;
		
		case 36: obj_player.GodFollowing = "Waukeen"
		break;
		
	}
}

else if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && selected
{
	selected = false
	obj_confirm_button.Total -= 1
			
}