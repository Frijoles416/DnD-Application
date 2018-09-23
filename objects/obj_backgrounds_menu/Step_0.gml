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
			obj_player.ProficiencyInsight = true
			obj_player.ProficiencyReligion = true
			obj_player.GoldPieces += 10
			obj_player.BackgroundFeatures = "You can communicate with humanoids who don't speak any language you know so long as you observe them interacting with each other for at least one day."
			
			ds_list_add(obj_player.InventoryList, "Leather-bound diary", "Bottle of ink", "Ink pen", "Traveler's Clothes", "Trinket of special significance")
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
		
		case 2:
		{
			obj_player.CharacterBackground = "Archaeologist"
			obj_player.ProficiencyHistory = true
			obj_player.ProficiencySurvival = true
			obj_player.GoldPieces += 25
			obj_player.BackgroundFeatures = "When you enter a ruin or dungeon, you can correctly ascertain its original purpose and determine its builders. In addition, you can determine the monetary value of art objects more than a century old."
			
			ds_list_add(obj_player.InventoryList, "A wooden case containing a map to a ruin/dungeon", "Bullseye lantern", "Miner's pack", "Traveler's clothes", "Shovel", "2-person tent", "Trinket recovered from a dig site")
			//add tool choice
			LanguagesChosen = 0
			MaxLanguages = 1
			
			var i
			var space = 16
			var lang
			for (var i = 0; i < 14; i += 1)
			{
				lang[i] = instance_create_depth(x + 32, y + (space * i), 0, obj_language_selection)
				lang[i].image_index = i
			}					
		}
		
		case 3:
		{
			obj_player.CharacterBackground = "Charlatan"
			obj_player.ProficiencyDeception = true
			obj_player.ProficiencySleightofHand = true
			obj_player.GoldPieces += 15
			obj_player.BackgroundFeatures = "You have created a second identity that includes documentation, established acquaintances, and disguises that allow you to assume that persona. \nAdditionally, you can forge documents including official papers and personal letters, as long as you have seen an example of the kind of document or the handwriting you are trying to copy."
			
			ds_list_add(obj_player.InventoryList, "Fine clothes", "Disguise Kit", "Tools of the con of your choice")
			ds_list_add(obj_player.ToolsList, "Disguise Kit", "Forgery Kit")
			//add some way to choose between the tools of the con
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 4:
		{
			obj_player.CharacterBackground = "City Watch/ Investigator"
			obj_player.ProficiencyInsight = true
			//choice between athletics and investigation
			obj_player.GoldPieces += 10
			obj_player.BackgroundFeatures = "Your experience in enforcing the law, and dealing with lawbreakers, gives you a feel for local laws and criminals. You can easily find the local outpost of the watch or a similar organization, and just as easily pick out the dens of criminal activity in a community, although you're more likely to be welcome in the former locations rather than the latter."
			
			ds_list_add(obj_player.InventoryList, "Uniform of your unit, indicative of rank", "Horn with which to summon help", "Set of manacles")
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
		
		case 5:
		{
			obj_player.CharacterBackground = "Clan Crafter"
			obj_player.ProficiencyHistory = true
			obj_player.ProficiencyInsight = true
			obj_player.GoldPieces +=5
			obj_player.BackgroundFeatures = "You always have free room and board in any place where shield dwarves or gold dwarves dwell, and the individuals in such a settlement might vie among themselves to determine who can offer you (and possibly your compatriots) the finest accommodations and assistance."
			
			ds_list_add(obj_player.InventoryList, "Artisan's tools of your choice", "Maker's mark chisel", "Traveler's clothes", "Gem worth 10 gp")
			if !ds_list_find_index(obj_player.LanguagesList, "Dwarvish") 
			{
				LanguagesChosen = 0
				MaxLanguages = 1
				
				var i
				var space = 16
				var lang
				for (var i = 0; i < 14; i += 1)
				{
				lang[i] = instance_create_depth(x + 32, y + (space * i), 0, obj_language_selection)
				lang[i].image_index = i
				}
			}
			else room_goto(rm_character_creation)
		}
		break;
		
		case 6:
		{
			obj_player.CharacterBackground = "Cloistered Scholar"
			obj_player.ProficiencyHistory = true
			//choice from arcana, nature, religion
			obj_player.GoldPieces += 10
			obj_player.BackgroundFeatures = "Though others must often endure extensive interviews and significant fees to gain access to even the most common archives in your library, you have free and easy access to the majority of the library, though it might also have repositories of lore that are too valuable, magical, or secret to permit anyone immediate access.You have a working knowledge of your cloister's personnel and bureaucracy, and you know how to navigate those connections with some ease. Additionally, you are likely to gain preferential treatment at other libraries across the Realms, as professional courtesy shown to a fellow scholar."
			
			ds_list_add(obj_player.InventoryList, "Scholar's robes of your cloister", "Writing kit (quill, ink, parchment, penknife)", "Borrowed book on your current study")
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
		
		case 7:
		{
			obj_player.CharacterBackground = "Courtier"
			obj_player.ProficiencyInsight = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 5
			obj_player.BackgroundFeatures = "Your knowledge of how bureaucracies function lets you gain access to the records and inner workings of any noble court or government you encounter. You know who the movers and shakers are, whom to go to for the favors you seek, and what the current intrigues of interest in the group are."
			
			ds_list_add(obj_player.InventoryList, "Fine clothes")
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
		
		case 8:
		{
			obj_player.CharacterBackground = "Criminal/ Spy"
			obj_player.ProficiencyDeception = true
			obj_player.ProficiencyStealth = true
			obj_player.GoldPieces += 15
			obj_player.BackgroundFeatures = "You have a reliable and trustworthy contact who acts as your liaison to a network of other criminals. You know how to get messages to and from your contact, even over great distances; specifically, you know the local messengers, corrupt caravan masters, and seedy sailors who can deliver messages for you."
			
			ds_list_add(obj_player.InventoryList, "Crowbar", "Dark common clothes with hood")
			ds_list_add(obj_player.ToolsList, "Gaming Set", "Thieves' Tools")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 9:
		{
			obj_player.CharacterBackground = "Entertainer"
			obj_player.ProficiencyAcrobatics = true
			obj_player.ProficiencyPerformance = true
			obj_player.GoldPieces += 15
			obj_player.BackgroundFeatures = "You can always find a place to perform, usually in an inn or tavern but possibly with a circus, at a theater, or even in a noble’s court. At such a place, you receive free lodging and food of a modest or comfortable standard (depending on the quality of the establishment), as long as you perform each night. In addition, your performance makes you something of a local figure. When strangers recognize you in a town where you have performed, they typically take a liking to you."
			
			ds_list_add(obj_player.InventoryList, "Musical instrument of your choice", "Favor of an admirer (love letter, lock of hair, or trinket)", "Costume")
			ds_list_add(obj_player.ToolsList, "Disguise Kit", "Musical Instrument")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 10:
		{
			obj_player.CharacterBackground = "Faction Agent"
			obj_player.ProficiencyInsight = true
			//choice of intelligence, wisdom, charisma
			obj_player.GoldPieces += 15
			obj_player.BackgroundFeatures = "As a faction agent, you have access to a secret network of supporters and operatives who can provide assistance on your adventures. You know a set of secret signs and passwords you can use to identify such operatives, who can provide you with access to a hidden safe house, free room and board, or assistance in finding information. \nThese agents never risk their lives for you or risk revealing their true identities."
			
			ds_list_add(obj_player.InventoryList, "Badge/emblem of your faction", "Copy of seminal faction text", "Common clothes")
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
		
		case 11:
		{
			obj_player.CharacterBackground = "Far Traveler"
			obj_player.ProficiencyInsight = true
			obj_player.ProficiencyPerception = true
			obj_player.GoldPieces += 5
			obj_player.BackgroundFeatures = ""
			
			ds_list_add(obj_player.InventoryList, "Traveler's clothes", "Musical instrument OR Gaming set", "Poorly wrought maps from your homeland", "Small piece of jewelry worth 10 gp")
			//choice of musical instrument or gaming set
			LanguagesChosen = 0
			MaxLanguages = 1
			
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