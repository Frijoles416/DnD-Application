if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		case 0:
		{
			obj_player.CharacterBackground = "Acolye"
			room_goto(rm_character_creation)
		}
		break;
		
		case 1:
		{
			obj_player.CharacterBackground = "Anthropologist"
			room_goto(rm_character_creation)
		}
		break;
		
		case 2:
		{
			obj_player.CharacterBackground = "Archeologist"
			room_goto(rm_character_creation)
		}
		
		case 3:
		{
			obj_player.CharacterBackground = "Charlatan"
			room_goto(rm_character_creation)
		}
		break;
		
		case 4:
		{
			obj_player.CharacterBackground = "City Watch/ Investigator"
			room_goto(rm_character_creation)
		}
		break;
		
		case 5:
		{
			obj_player.CharacterBackground = "Clan Crafter"
			room_goto(rm_character_creation)
		}
		break;
		
		case 6:
		{
			obj_player.CharacterBackground = "Cloistered Scholar"
			room_goto(rm_character_creation)
		}
		break;
		
		case 7:
		{
			obj_player.CharacterBackground = "Courtier"
			room_goto(rm_character_creation)
		}
		break;
		
		case 8:
		{
			obj_player.CharacterBackground = "Criminal/ Sky"
			room_goto(rm_character_creation)
		}
		break;
		
		case 9:
		{
			obj_player.CharacterBackground = "Entertainer"
			room_goto(rm_character_creation)
		}
		break;
		
		case 10:
		{
			obj_player.CharacterBackground = "Faction Agent"
			room_goto(rm_character_creation)
		}
		break;
		
		case 11:
		{
			obj_player.CharacterBackground = "Far Traverler"
			room_goto(rm_character_creation)
		}
		break;
		
		case 12:
		{
			obj_player.CharacterBackground = "Folk Hero"
			room_goto(rm_character_creation)
		}
		break;
		
		case 13:
		{
			obj_player.CharacterBackground = "Gladiator"
			room_goto(rm_character_creation)
		}
		break;
		
		case 14:
		{
			obj_player.CharacterBackground = "Guild Artisan/ Guild Merchant"
			room_goto(rm_character_creation)
		}
		break;
		
		case 15:
		{
			obj_player.CharacterBackground = "Haunted One"
			room_goto(rm_character_creation)
		}
		break;
		
		case 16:
		{
			obj_player.CharacterBackground = "Hermit"
			room_goto(rm_character_creation)
		}
		break;
		
		case 17:
		{
			obj_player.CharacterBackground = "House Agent (Cannith)"
			room_goto(rm_character_creation)
		}
		break;
		
		case 18:
		{
			obj_player.CharacterBackground = "House Agent (Deneith)"
			room_goto(rm_character_creation)
		}
		break;
		
		case 19:
		{
			obj_player.CharacterBackground = "House Agent (Dhallanda)"
			room_goto(rm_character_creation)
		}
		break;
		
		case 20:
		{
			obj_player.CharacterBackground = "House Agent (Jorasco)"
			room_goto(rm_character_creation)
		}
		break;
		
		case 21:
		{
			obj_player.CharacterBackground = "House Agent (Kundarak)"
			room_goto(rm_character_creation)
		}
		break;
		
		case 22:
		{
			obj_player.CharacterBackground = "House Agent (Lyrandar)"
			room_goto(rm_character_creation)
		}
		break;
		
		case 23:
		{
			obj_player.CharacterBackground = "House Agent (Medani)"
			room_goto(rm_character_creation)
		}
		break;
		
		case 24:
		{
			obj_player.CharacterBackground = "House Agent (Orien)"
			room_goto(rm_character_creation)
		}
		break;
		
		case 25:
		{
			obj_player.CharacterBackground = "House Agent (Phiarlian)"
			room_goto(rm_character_creation)
		}
		break;
		
		case 26:
		{
			obj_player.CharacterBackground = "House Agent (Sivis)"
			room_goto(rm_character_creation)
		}
		break;
		
		case 27:
		{
			obj_player.CharacterBackground = "House Agent (Tharashk)"
			room_goto(rm_character_creation)
		}
		break;
		
		case 28:
		{
			obj_player.CharacterBackground = "House Agent (Thuranni)"
			room_goto(rm_character_creation)
		}
		break;
		
		case 29:
		{
			obj_player.CharacterBackground = "House Agent (Vadalis)"
			room_goto(rm_character_creation)
		}
		break;
		
		case 30:
		{
			obj_player.CharacterBackground = "Inheritor"
			room_goto(rm_character_creation)
		}
		break;
		
		case 31:
		{
			obj_player.CharacterBackground = "Knight"
			room_goto(rm_character_creation)
		}
		break;
		
		case 32:
		{
			obj_player.CharacterBackground = "Knight of the Order"
			room_goto(rm_character_creation)
		}
		break;
		
		case 33:
		{
			obj_player.CharacterBackground = "Mercenary Veteran"
			room_goto(rm_character_creation)
		}
		break;
		
		case 34:
		{
			obj_player.CharacterBackground = "Noble"
			room_goto(rm_character_creation)
		}
		break;
		
		case 35:
		{
			obj_player.CharacterBackground = "Outlander"
			room_goto(rm_character_creation)
		}
		break;
		
		case 36:
		{
			obj_player.CharacterBackground = "Pirate"
			room_goto(rm_character_creation)
		}
		break;
		
		case 37:
		{
			obj_player.CharacterBackground = "Sage"
			room_goto(rm_character_creation)
		}
		break;
		
		case 38:
		{
			obj_player.CharacterBackground = "Sailor"
			room_goto(rm_character_creation)
		}
		break;
		
		case 39:
		{
			obj_player.CharacterBackground = "Soldier"
			room_goto(rm_character_creation)
		}
		break;
		
		case 40:
		{
			obj_player.CharacterBackground = "Urban Bounty Hunter"
			room_goto(rm_character_creation)
		}
		break;
		
		case 41:
		{
			obj_player.CharacterBackground = "Urchin"
			room_goto(rm_character_creation)
		}
		break;
		
		case 42:
		{
			obj_player.CharacterBackground = "Uthgardt Tribe Member"
			room_goto(rm_character_creation)
		}
		break;
		
		case 43:
		{
			obj_player.CharacterBackground = "Waterdhavian Noble"
			room_goto(rm_character_creation)
		}
		break;
	}
}