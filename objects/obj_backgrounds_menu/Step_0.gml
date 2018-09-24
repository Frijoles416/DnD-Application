if global.pause exit

if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player)
{
	CanChooseArtisansTools = false //goes into proficiencies AND inventory
	CanChooseInstrument = false //goes into proficiencies (and inventory if entertainer)
	CanChooseGamingSet = false //goes into proficiencies only
	CanChooseGladiatorWeapon = false //goes into proficiencies AND inventory
	
	switch(image_index)
	{
		case 0:
		{
			obj_player.CharacterBackground = "Acolyte"
			obj_player.ProficiencyInsight = true
			obj_player.ProficiencyReligion = true
			obj_player.GoldPieces += 15
			
			ds_list_add(obj_player.InventoryList, "A holy symbol", "A prayer book", "Stick of incense", "Stick of incense", "Stick of incense", "Stick of incense", "Stick of incense", "Vestiments", "Common clohthes")

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
			CanChooseArtisansTools = true
			
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
			CanChooseGamingSet = true
			
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
			CanChooseInstrument = true
			
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
			obj_player.BackgroundFeatures = "Your accent, mannerisms, figures of speech, and perhaps even your appearance all mark you as foreign. Curious glances are directed your way wherever you go, which can be a nuisance, but you also gain the friendly interest of scholars and others intrigued by far-off lands, to say nothing of everyday folk who are eager to hear stories of your homeland. You can parley this attention into access to people and places you might not otherwise have, for you and your traveling companions. Noble lords, scholars, and merchant princes, to name a few, might be interested in hearing about your distant homeland and people."
			
			ds_list_add(obj_player.InventoryList, "Traveler's clothes", "Musical instrument OR Gaming set", "Poorly wrought maps from your homeland", "Small piece of jewelry worth 10 gp")
			CanChooseInstrument = true
			CanChooseGamingSet = true
			
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
			obj_player.ProficiencyAnimalHandling = true
			obj_player.ProficiencySurvival = true
			obj_player.GoldPieces += 10
			obj_player.BackgroundFeatures = "Since you come from the ranks of the common folk, you fit in among them with ease. You can find a place to hide, rest, or recuperate among other commoners, unless you have shown yourself to be a danger to them. They will shield you from the law or anyone else searching for you, though they will not risk their lives for you."
			
			ds_list_add(obj_player.InventoryList, "Shovel", "Iron Pot", "Common clothes")
			//add choice of artisan's tools
			ds_list_add(obj_player.ToolsList, "Land Vehicles")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 13:
		{
			obj_player.CharacterBackground = "Gladiator"
			obj_player.ProficiencyAcrobatics = true
			obj_player.ProficiencyPerformance = true
			obj_player.GoldPieces += 15
			obj_player.BackgroundFeatures = "You can always find a place to perform, usually in an inn or tavern but possibly with a circus, at a theater, or even in a noble’s court. At such a place, you receive free lodging and food of a modest or comfortable standard (depending on the quality of the establishment), as long as you perform each night. In addition, your performance makes you something of a local figure. When strangers recognize you in a town where you have performed, they typically take a liking to you."
			
			ds_list_add(obj_player.InventoryList, "Unusual weapon of your choice", "Favor of an admirer (love letter, lock of hair, or trinket)", "Costume")
			ds_list_add(obj_player.ToolsList, "Disguise Kit")
			CanChooseGladiatorWeapon = true
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 14:
		{
			obj_player.CharacterBackground = "Guild Artisan"
			obj_player.ProficiencyInsight = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 15
			obj_player.BackgroundFeatures = "As an established and respected member of a guild, you can rely on certain benefits that membership provides. \nYour fellow guild members will provide you with lodging and food if necessary, and pay for your funeral if needed. In some cities and towns, a guildhall offers a central place to meet other members of your profession, which can be a good place to meet potential patrons, allies, or hirelings. Guilds often wield tremendous political power. If you are accused of a crime, your guild will support you if a good case can be made for your innocence or the crime is justifiable. You can also gain access to powerful political figures through the guild, if you are a member in good standing. Such connections might require the donation of money or magic items to the guild’s coffers. You must pay dues of 5 gp per month to the guild. If you miss payments, you must make up back dues to remain in the guild’s good graces."
			
			ds_list_add(obj_player.InventoryList, "Artisan's tools of your choice", "Letter of introduction from guild", "Traveler's clothes")
			CanChooseArtisansTools = true
			
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
		
		case 14.5: //split from guild artisan for simplicity
		{
			obj_player.CharacterBackground = "Guild Merchant"
			obj_player.ProficiencyInsight = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 15
			obj_player.BackgroundFeatures = "As an established and respected member of a guild, you can rely on certain benefits that membership provides. \nYour fellow guild members will provide you with lodging and food if necessary, and pay for your funeral if needed. In some cities and towns, a guildhall offers a central place to meet other members of your profession, which can be a good place to meet potential patrons, allies, or hirelings. Guilds often wield tremendous political power. If you are accused of a crime, your guild will support you if a good case can be made for your innocence or the crime is justifiable. You can also gain access to powerful political figures through the guild, if you are a member in good standing. Such connections might require the donation of money or magic items to the guild’s coffers. You must pay dues of 5 gp per month to the guild. If you miss payments, you must make up back dues to remain in the guild’s good graces."
			
			ds_list_add(obj_player.InventoryList, "Letter of introduction from guild", "Traveler's clothes", "Mule", "Cart")
			ds_list_add(obj_player.ToolsList, "Navigator's Tools")
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
		
		case 15:
		{
			obj_player.CharacterBackground = "Haunted One"
			//choice of 2 from arcana, investigation, religion, survival
			obj_player.GoldPieces += 0
			obj_player.BackgroundFeatures = "Those who look into your eyes can see that you have faced unimaginable horror and that you are no stranger to darkness. Though they might fear you, commoners will extend you every courtesy and do their utmost to help you. Unless you have shown yourself to be a danger to them, they will even take up arms to fight alongside you, should you find yourself facing an enemy alone."
			
			ds_list_add(obj_player.InventoryList, "Monster hunter's pack", "Gothic trinket")
			//choice of one exotic language
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
		
		case 16:
		{
			obj_player.CharacterBackground = "Hermit"
			obj_player.ProficiencyMedicine = true
			obj_player.ProficiencyReligion = true
			obj_player.GoldPieces += 5
			obj_player.BackgroundFeatures = "The quiet seclusion of your extended hermitage gave you access to a unique and powerful discovery. The exact nature of this revelation depends on the nature of your seclusion. It might be a great truth about the cosmos, the deities, the powerful beings of the outer planes, or the forces of nature. It could be a site that no one else has ever seen. You might have uncovered a fact that has long been forgotten, or unearthed some relic of the past that could rewrite history. It might be information that would be damaging to the people who consigned you to exile, and hence the reason for your return to society. Work with your DM to determine the details of your discovery and its impact on the campaign."
			
			ds_list_add(obj_player.InventoryList, "Scroll case full of notes", "Winter blanket", "Common clothes", "Herbalism kit")
			ds_list_add(obj_player.ToolsList, "Herbalism Kit")
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
		
		case 17:
		{
			obj_player.CharacterBackground = "House Agent (Cannith)"
			obj_player.ProficiencyInvestigation = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 20
			obj_player.BackgroundFeatures = "As an agent of your house, you can always get food and lodging for your friends at a house enclave. When the house assigns you a mission, it will usually provide you with necessary supplies and transportation. Beyond this, you have many old friends, mentors, and rivals in your house and you may encounter one of them when you interact with a house business. The degree to which such acquaintances will be willing to help you out will depend on your current standing in your house."
			
			ds_list_add(obj_player.InventoryList, "Fine clothes", "House signet ring", "ID papers")
			ds_list_add(obj_player.ToolsList, "Alchemist's Supplies", "Tinker's Tools")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 18:
		{
			obj_player.CharacterBackground = "House Agent (Deneith)"
			obj_player.ProficiencyInvestigation = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 20
			obj_player.BackgroundFeatures = "As an agent of your house, you can always get food and lodging for your friends at a house enclave. When the house assigns you a mission, it will usually provide you with necessary supplies and transportation. Beyond this, you have many old friends, mentors, and rivals in your house and you may encounter one of them when you interact with a house business. The degree to which such acquaintances will be willing to help you out will depend on your current standing in your house."
			
			ds_list_add(obj_player.InventoryList, "Fine clothes", "House signet ring", "ID papers")
			ds_list_add(obj_player.ToolsList, "Gaming Set", "Land Vehicles")
			CanChooseGamingSet = true
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 19:
		{
			obj_player.CharacterBackground = "House Agent (Ghallanda)"
			obj_player.ProficiencyInvestigation = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 20
			obj_player.BackgroundFeatures = "As an agent of your house, you can always get food and lodging for your friends at a house enclave. When the house assigns you a mission, it will usually provide you with necessary supplies and transportation. Beyond this, you have many old friends, mentors, and rivals in your house and you may encounter one of them when you interact with a house business. The degree to which such acquaintances will be willing to help you out will depend on your current standing in your house."
			
			ds_list_add(obj_player.InventoryList, "Fine clothes", "House signet ring", "ID papers")
			ds_list_add(obj_player.ToolsList, "Brewer's Supplies", "Cook's Utensils")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 20:
		{
			obj_player.CharacterBackground = "House Agent (Jorasco)"
			obj_player.ProficiencyInvestigation = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 20
			obj_player.BackgroundFeatures = "As an agent of your house, you can always get food and lodging for your friends at a house enclave. When the house assigns you a mission, it will usually provide you with necessary supplies and transportation. Beyond this, you have many old friends, mentors, and rivals in your house and you may encounter one of them when you interact with a house business. The degree to which such acquaintances will be willing to help you out will depend on your current standing in your house."
			
			ds_list_add(obj_player.InventoryList, "Fine clothes", "House signet ring", "ID papers")
			dS_list_add(obj_player.ToolsList, "Alchemist's Supplies", "Herbalism Kit")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 21:
		{
			obj_player.CharacterBackground = "House Agent (Kundarak)"
			obj_player.ProficiencyInvestigation = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 20
			obj_player.BackgroundFeatures = "As an agent of your house, you can always get food and lodging for your friends at a house enclave. When the house assigns you a mission, it will usually provide you with necessary supplies and transportation. Beyond this, you have many old friends, mentors, and rivals in your house and you may encounter one of them when you interact with a house business. The degree to which such acquaintances will be willing to help you out will depend on your current standing in your house."
			
			ds_list_add(obj_player.InventoryList, "Fine clothes", "House signet ring", "ID papers")
			ds_list_add(obj_player.ToolsList, "Tinker's Tools", "Thieves' Tools")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 22:
		{
			obj_player.CharacterBackground = "House Agent (Lyrandar)"
			obj_player.ProficiencyInvestigation = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 20
			obj_player.BackgroundFeatures = "As an agent of your house, you can always get food and lodging for your friends at a house enclave. When the house assigns you a mission, it will usually provide you with necessary supplies and transportation. Beyond this, you have many old friends, mentors, and rivals in your house and you may encounter one of them when you interact with a house business. The degree to which such acquaintances will be willing to help you out will depend on your current standing in your house."
			
			ds_list_add(obj_player.InventoryList, "Fine clothes", "House signet ring", "ID papers")
			ds_list_add(obj_player.ToolsList, "Sea/Air Vehicles", "Navigator's Tools")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 23:
		{
			obj_player.CharacterBackground = "House Agent (Medani)"
			obj_player.ProficiencyInvestigation = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 20
			obj_player.BackgroundFeatures = "As an agent of your house, you can always get food and lodging for your friends at a house enclave. When the house assigns you a mission, it will usually provide you with necessary supplies and transportation. Beyond this, you have many old friends, mentors, and rivals in your house and you may encounter one of them when you interact with a house business. The degree to which such acquaintances will be willing to help you out will depend on your current standing in your house."
			
			ds_list_add(obj_player.InventoryList, "Fine clothes", "House signet ring", "ID papers")
			ds_list_add(obj_player.ToolsList, "Thieves' Tools", "Disguise Kit")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 24:
		{
			obj_player.CharacterBackground = "House Agent (Orien)"
			obj_player.ProficiencyInvestigation = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 20
			obj_player.BackgroundFeatures = "As an agent of your house, you can always get food and lodging for your friends at a house enclave. When the house assigns you a mission, it will usually provide you with necessary supplies and transportation. Beyond this, you have many old friends, mentors, and rivals in your house and you may encounter one of them when you interact with a house business. The degree to which such acquaintances will be willing to help you out will depend on your current standing in your house."
			
			ds_list_add(obj_player.InventoryList, "Fine clothes", "House signet ring", "ID papers")
			ds_list_add(obj_player.ToolsList, "Land Vehicles", "Gaming Set")
			CanChooseGamingSet = true
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 25:
		{
			obj_player.CharacterBackground = "House Agent (Phiarlan)"
			obj_player.ProficiencyInvestigation = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 20
			obj_player.BackgroundFeatures = "As an agent of your house, you can always get food and lodging for your friends at a house enclave. When the house assigns you a mission, it will usually provide you with necessary supplies and transportation. Beyond this, you have many old friends, mentors, and rivals in your house and you may encounter one of them when you interact with a house business. The degree to which such acquaintances will be willing to help you out will depend on your current standing in your house."
			
			ds_list_add(obj_player.InventoryList, "Fine clothes", "House signet ring", "ID papers")
			ds_list_add(obj_player.ToolsList, "Disguise Kit", "Musical Instrument")
			CanChooseInstrument = true
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 26:
		{
			obj_player.CharacterBackground = "House Agent (Sivis)"
			obj_player.ProficiencyInvestigation = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 20
			obj_player.BackgroundFeatures = "As an agent of your house, you can always get food and lodging for your friends at a house enclave. When the house assigns you a mission, it will usually provide you with necessary supplies and transportation. Beyond this, you have many old friends, mentors, and rivals in your house and you may encounter one of them when you interact with a house business. The degree to which such acquaintances will be willing to help you out will depend on your current standing in your house."
			
			ds_list_add(obj_player.InventoryList, "Fine clothes", "House signet ring", "ID papers")
			ds_list_add(obj_player.ToolsList, "Calligrapher's Tools", "Forgery Kit")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 27:
		{
			obj_player.CharacterBackground = "House Agent (Tharashk)"
			obj_player.ProficiencyInvestigation = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 20
			obj_player.BackgroundFeatures = "As an agent of your house, you can always get food and lodging for your friends at a house enclave. When the house assigns you a mission, it will usually provide you with necessary supplies and transportation. Beyond this, you have many old friends, mentors, and rivals in your house and you may encounter one of them when you interact with a house business. The degree to which such acquaintances will be willing to help you out will depend on your current standing in your house."
			
			ds_list_add(obj_player.InventoryList, "Fine clothes", "House signet ring", "ID papers")
			ds_list_add(obj_player.ToolsList, "Theives' Tools", "Gaming Set")
			CanChooseGamingSet = true
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 28:
		{
			obj_player.CharacterBackground = "House Agent (Thuranni)"
			obj_player.ProficiencyInvestigation = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 20
			obj_player.BackgroundFeatures = "As an agent of your house, you can always get food and lodging for your friends at a house enclave. When the house assigns you a mission, it will usually provide you with necessary supplies and transportation. Beyond this, you have many old friends, mentors, and rivals in your house and you may encounter one of them when you interact with a house business. The degree to which such acquaintances will be willing to help you out will depend on your current standing in your house."
			
			ds_list_add(obj_player.InventoryList, "Fine clothes", "House signet ring", "ID papers")
			ds_list_add(obj_player.ToolsList, "Poisoner's Kit", "Musical Instrument")
			CanChooseInstrument = true
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 29:
		{
			obj_player.CharacterBackground = "House Agent (Vadalis)"
			obj_player.ProficiencyInvestigation = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 20
			obj_player.BackgroundFeatures = "As an agent of your house, you can always get food and lodging for your friends at a house enclave. When the house assigns you a mission, it will usually provide you with necessary supplies and transportation. Beyond this, you have many old friends, mentors, and rivals in your house and you may encounter one of them when you interact with a house business. The degree to which such acquaintances will be willing to help you out will depend on your current standing in your house."
			
			ds_list_add(obj_player.InventoryList, "Fine clothes", "House signet ring", "ID papers")
			ds_list_add(obj_player.ToolsList, "Land Vehicles", "Herbalism Kit")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 30:
		{
			obj_player.CharacterBackground = "Inheritor"
			obj_player.ProficiencySurvival = true
			//choice between arcana, history, religion
			obj_player.GoldPieces += 15
			obj_player.BackgroundFeatures = "Choose or randomly determine your inheritance from among the possibilities in the table below. Work with your Dungeon Master to come up with details: Why is your inheritance so important, and what is its full story? You might prefer for the DM to invent these details as part of the game, allowing you to learn more about your inheritance as your character does."
			
			ds_list_add(obj_player.InventoryList, "Inheritance", "Traveler's clothes", "Gaming set OR musical instrument")
			CanChooseGamingSet = true
			CanChooseInstrument = true
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
		
		case 31:
		{
			obj_player.CharacterBackground = "Knight"
			obj_player.ProficiencyHistory = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 25
			obj_player.BackgroundFeatures = "You have the service of three retainers loyal to your family. One of your retainers is a noble who serves as your squire, aiding you in exchange for training on their own path to knighthood. Your retainers cna perform mundane tasks for you, but they do not fight for you, will not follow you into obviously dangerous areas (such as dungeons), and will leave if they are frequently endangered or abused."
			
			ds_list_add(obj_player.InventoryList, "Fine clothes", "Signet ring", "Scroll of pedigree")
			ds_list_add(obj_player.ToolsList, "Gaming Set")
			CanChooseGamingSet = true
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
		
		case 32:
		{
			obj_player.CharacterBackground = "Knight of the Order"
			obj_player.ProficiencyPersuasion = true
			//choice from arcana, history, nature, religion
			obj_player.GoldPieces += 10
			obj_player.BackgroundFeatures = "You receive shelter and succor from members of your knightly order and those who are sympathetic to its aims. If your order is a religious one, you can gain aid from temples and other religious communities of your deity. Knights of civic orders can get help from the community- whether a lone settlement or a great nation that they serve, and knights of philosophical orders can find help from those they have aided in pursuit of their ideals, and those who share those ideals. This help comes in the form of shelter and meals, and healing when appropriate, as well as occasionally risky assistance, such as a band of local citizens rallying to aid a sorely pressed knight in a fight, or those who support the order helping to smuggle a knight out of town when he or she is being hunted unjustly."
			
			ds_list_add(obj_player.InventoryList, "Traveler's clothes", "Signet, banner or seal indicative of your rank")
			CanChooseGamingSet = true
			CanChooseInstrument = true //proficiency only
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
		
		case 33:
		{
			obj_player.CharacterBackground = "Mercenary Veteran"
			obj_player.ProficiencyAthletics = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 10
			obj_player.BackgroundFeatures = "You know the mercenary life as only someone who has experienced it can. You are able to identify mercenary companies by their emblems, and you know a little about any such company, including the names and reputations of its commanders and leaders, and who has hired them recently. You can find the taverns and feast halls where mercenaries abide in any area, as long as you speak the language. You can find mercenary work between adventures sufficient to maintain a comfortable lifestyle."
			
			ds_list_add(obj_player.InventoryList, "Uniform of your company", "Insignia of your rank", "Gaming set of your choice")
			ds_list_add(obj_player.ToolsList, "Gaming Set", "Land Vehicles")
			CanChooseGamingSet = true //proficiency and inventory
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 34:
		{
			obj_player.CharacterBackground = "Noble"
			obj_player.ProficiencyHistory = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 25
			obj_player.BackgroundFeatures = "Thanks to your noble birth, people are inclined to think the best of you. You are welcome in high society, and people assume you have the right to be wherever you are. The common folk and merchants make every effort to accommodate you and avoid your displeasure, and other people of high birth treat you as a member of the same social sphere. You can secure an audience with a local noble if you need to."
			
			ds_list_add(obj_player.InventoryList, "Fine Clothes", "Signet ring", "Scroll of pedigree")
			ds_list_add(obj_player.ToolsList, "Gaming Set")
			CanChooseGamingSet = true //proficiency only
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
		
		case 35:
		{
			obj_player.CharacterBackground = "Outlander"
			obj_player.ProficiencyAthletics = true
			obj_player.ProficiencySurvival = true
			obj_player.GoldPieces += 10
			
			ds_list_add(obj_player.InventoryList, "Staff", "Hunting trap", "Trophy from an animal you killed", "Traveler's clothes")
			ds_list_add(obj_player.ToolsList, "Musical Instrument")
			CanChooseInstrument = true //proficiency only
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
		
		case 36:
		{
			obj_player.CharacterBackground = "Pirate"
			obj_player.ProficiencyAthletics = true
			obj_player.ProficiencyPerception = true
			obj_player.GoldPieces += 10
			obj_player.BackgroundFeatures = "No matter where you go, people are afraid of you due to your reputation. When you are in a civilized settlement, you can get away with minor criminal offenses, such as refusing to pay for food at a tavern or breaking down doors at a local shop, since most people will not report your activity to the authorities."
			
			ds_list_add(obj_player.InventoryList, "Belaying pin", "50 ft of silk rope", "Lucky charm", "Common clothes")
			ds_list_add(obj_player.ToolsList, "Navigator's tools", "Air/Water Vehicles")
			
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 37:
		{
			obj_player.CharacterBackground = "Sage"
			obj_player.ProficiencyArcana = true
			obj_player.ProficiencyHistory = true
			obj_player.GoldPieces += 10
			obj_player.BackgroundFeatures = "When you attempt to learn or recall a piece of lore, if you do not know that information, you often know where and from whom you can obtain it. Usually, this information comes from a library, scriptorium, university, or a sage or other learned person or creature. Your DM might rule that the knowledge you seek is secreted away in an almost inaccessible place, or that it simply cannot be found. Unearthing the deepest secrets of the multiverse can require an adventure or even a whole campaign."
			
			ds_list_add(obj_player.InventoryList, "Bottle of black ink", "Quill", "Small knife", "Letter from a dead colleague with an unanswered question", "Common clothes")
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
		
		case 38:
		{
			obj_player.CharacterBackground = "Sailor"
			obj_player.ProficiencyAthletics = true
			obj_player.ProficiencyPerception = true
			obj_player.GoldPieces += 10
			obj_player.BackgroundFeatures = "When you need to, you can secure free passage on a sailing ship for yourself and your adventuring companions. You might sail on the ship you served on, or another ship you have good relations with (perhaps one captained by a former crewmate). Because you’re calling in a favor, you can’t be certain of a schedule or route that will meet your every need. Your Dungeon Master will determine how long it takes to get where you need to go. In return for your free passage, you and your companions are expected to assist the crew during the voyage."
			
			ds_list_add(obj_player.InventoryList, "Belaying pin", "50 ft of silk rope", "Lucky charm", "Common clothes")
			ds_list_add(obj_player.ToolsList, "Navigator's tools", "Air/Water Vehicles")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 39:
		{
			obj_player.CharacterBackground = "Soldier"
			obj_player.ProficiencyAthletics = true
			obj_player.ProficiencyIntimidation = true
			obj_player.GoldPieces += 10
			obj_player.BackgroundFeatures = "You have a military rank from your career as a soldier. Soldiers loyal to your former military organization still recognize your authority and influence, and they defer to you if they are of a lower rank. You can invoke your rank to exert influence over other soldiers and requisition simple equipment or horses for temporary use. You can also usually gain access to friendly military encampments and fortresses where your rank is recognized."
			
			ds_list_add(obj_player.InventoryList, "Insignia of rank", "Trophy from a fallen enemy", "Gaming set of your choice", "Common clothes")
			ds_list_add(obj_player.ToolsList, "Gaming Set", "Land Vehicles")
			CanChooseGamingSet = true
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 40:
		{
			obj_player.CharacterBackground = "Urban Bounty Hunter"
			//choice of 2 from deception, insight, persuasion, stealth
			obj_player.GoldPieces += 20
			obj_player.BackgroundFeatures = "You are in frequent contact with people in the segment of society that your chosen quarries move through. These people might be associated with the criminal underworld, the rough-and-tumble folk of the streets, or members of high society. This connection comes in the form of a contact in any city you visit, a person who provides information about the people and places of the local area."
			
			ds_list_add(obj_player.InventoryList, "Clothes appropriate for your duties")
			//choice of 2 tool proficiencies from gaming set, musical instrument, thieves' tools
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 41:
		{
			obj_player.CharacterBackground = "Urchin"
			obj_player.ProficiencySleightofHand = true
			obj_player.ProficiencyStealth = true
			obj_player.GoldPieces += 10
			obj_player.BackgroundFeatures = "You know the secret patterns and flow to cities and can find passages through the urban sprawl that others would miss. When you are not in combat, you (and companions you lead) can travel between any two locations in the city twice as fast as your speed would normally allow."
			
			ds_list_add(obj_player.InventoryList, "Small knife", "Map of the city you are from", "Pet mouse", "Token of your parents", "Common clothes")
			ds_list_add(obj_player.ToolsList, "Disguise Kit", "Thieves' Tools")
			
			room_goto(rm_character_creation)
		}
		break;
		
		case 42:
		{
			obj_player.CharacterBackground = "Uthgardt Tribe Member"
			obj_player.ProficiencyAthletics = true
			obj_player.ProficiencySurvival = true
			obj_player.GoldPieces += 10
			obj_player.BackgroundFeatures = "You have an excellent knowledge of not only your tribe's territory, but also the terrain and natural resources of the rest of the North. You are familiar enough with any wilderness area that you find twice as much food and water as you normally would when you forage there. Additionally, you can call upon the hospitality of your people, and those folk allied with your tribe, often including members of druid circles, tribes of nomadic elves, the Harpers, and the priesthoods devoted to the gods of the First Circle."
			
			ds_list_add(obj_player.InventoryList, "Hunting trap", "Token of your tribal totem", "Traveler's clothes")
			//tool proficiency choice of musical instrument OR artisan's tools
			CanChooseArtisansTools = true
			CanChooseInstrument = true
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
		
		case 43:
		{
			obj_player.CharacterBackground = "Waterdhavian Noble"
			obj_player.ProficiencyHistory = true
			obj_player.ProficiencyPersuasion = true
			obj_player.GoldPieces += 20
			obj_player.BackgroundFeatures = "While you are in Waterdeep or elsewhere in the North your house sees to your everyday needs. Your name and signet are sufficient to cover most of your expenses; the inns, taverns, and feast halls you frequent are glad to record your debt and send an accounting to your family's estate in Waterdeep to settle what you owe. This advantage enables you to live a comfortable lifestyle without having to pay 2 gp a day for it, or reduces the cost of a wealthy or aristocratic lifestyle by that amount. You may not maintain a less affluent lifestyle and use the difference as income-the benefit is a line of credit, not an actual monetary reward."
			
			ds_list_add(obj_player.InventoryList, "Fine clothes", "Signet ring or brooch", "Scroll of pedigree", "Skin of fine wine")
			//tool proficiency choice of gaming set OR musical instrument
			CanChooseGamingSet = true
			CanChooseInstrument = true
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
	}
}