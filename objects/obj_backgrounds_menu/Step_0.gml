if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		case 0:
		{
			obj_player.CharacterBackground = "Acolyte"
			obj_player.ProficiencyInsight = true
			obj_player.ProficiencyReligion = true
			
			ds_list_add(obj_player.InventoryList, "A holy symbol", "A prayer book", "Stick of incense", "Stick of incense", "Stick of incense", "Stick of incense", "Stick of incense", "Vestiments", "Common clohthes")
			obj_player.GoldPieces += 15
			obj_player.BackgroundFeatures = "As an acolyte, you command the respect of those who share your faith, and you can perform the religious ceremonies of your deity. You and your adventuring companions can expect to receive free healing and care at a temple, shrine, or other established presence of your faith, though you must provide any material components needed for spells. Those who share your religion will support you (but only you) at a modest lifestyle.\nYou might also have ties to a specific temple dedicated to your chosen deity or pantheon, and you have a residence there. This could be the temple where you used to serve, or a temple where you have found a new home. While near your temple, you can call upon the priests for assistance, provided the assistance you ask for is not hazardous and you remain in good standing with your temple."
			LanguagesChosen = 0
			MaxLanguages = 2
			
			var i
			var space = 16
			var lang
			for (var i = 0; i < 14; i += 1)
			{
				lang[i] = instance_create_depth(x + 32, y + (space * i), 0, obj_language_selection)
				lang[i].image_index = i
			}
			
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
			obj_player.CharacterBackground = "Archaeologist"
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
			obj_player.CharacterBackground = "Criminal/ Spy"
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
			obj_player.CharacterBackground = "Far Traveler"
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