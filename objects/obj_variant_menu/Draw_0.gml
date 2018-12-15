scr_button_draw()

var info = ""
if obj_player.x < 492 var side = 0
else var side = 1

draw_set_color(c_lime)
if place_meeting(x, y, obj_player) draw_text(x, y, Popupinfo)

draw_self()
if place_meeting(x, y, obj_player)
{
	switch(image_index)
	{
		case 0:
		{
		info = "Protector aasimar are charged by the powers of \ngood to guard the weak, to strike at evil wherever it arises, \nto stand vigilant against the darkness. From a young age, \na protector aasimar receives advice and directives that \nurge to stand against evil."
		break;
		}
		
		case 1:
		{
		info = "Scourge aasimar are imbued with a divine energy \nthat blazes intensely within them. It feeds a powerful \ndesire to destroy evil-a desire that is, at its best, \nunflinching and, at its worst, all-consuming. Many scourge \naasimar wear masks to block out the world and focus on containing this power,\nunmasking themselves only in battle."
		break;
		}
		
		case 2:
		{
		info = "An aasimar who was touched by dark powers as a \nyouth or who turns to evil in early adulthood can become \none of the fallen-a group of aasimar whose inner light has been \nreplaced by shadow."
		break;
		}
		
		case 3:
		{
		info = "As a hill dwarf, you have keen senses, deep intuition, \nand remarkable resilience. \nAbility Score Increase : Your Wisdom score increases by 1. \nDwarven Toughness : Your hit point maximum increases by 1, \nand it increases by 1 every time you gain a level."
		break;
		}
		
		case 4:
		{
		info = "As a mountain dwarf, you’re strong and hardy, \naccustomed to a difficult life in rugged terrain. \nAbility Score Increase : Your Strength score increases by 2. \nDwarven Armor Training : You have proficiency with \nlight and medium armor."
		break;
		}
		
		case 5:
		{
		info = ""
		break;
		}
		
		case 6:
		{
		info = "Bold and hardy, dwarves are known as skilled warriors, \nminers, and workers of stone and metal.\nRacial Traits : +2 Constitution, Darkvision, \nDwarven Resilience, Dwarven Combat Training, Stonecunning"
		break;
		}
		
		case 7:
		{
		info = "Elves are a magical people of otherworldly grace, \nliving in the world but not entirely part of it.\nRacial Traits +2 Dexterity, Darkvision, \nKeen Senses, Fey Ancestry, Trance"
		break;
		}
		
		case 8:
		{
		info = "To be greeted with stares and whispers, to suffer violence \nand insult on the street, to see mistrust \nand fear in every eye: this is the lot of the tiefling.\nRacial Traits : +2 Dexterity, +1 Intelligence, \nDarkvision, Hellish Resistance, Infernal "
		break;
		}
		
		case 9:
		{
		info = "Firbolg tribes cloister in remote forest strongholds, \npreferring to spend their days in quiet \nharmony with the woods.\nRacial Traits : +2 Wisdom, +1 Strength, Firbolg Magic, \nHidden Step, Powerful Build, Speech of Beast and Leaf"
		break;
		}
		
		case 10:
		{
		info = "Genasi carry the power of the elemental planes of \nair, earth, fire, and water in their blood.\nRacial Traits : +2 Constitution, Air, Earth, \nFire, Water Subraces"
		break;
		}
		
		case 11:
		{
		info = "Long ago, the gith rose up to overthrow the \nmind flayers that held them in servitude, \nbut two factions arose that remain bitter enemies today.\nRacial Traits : +1 Intelligence, \nGithyanki or Githzerai Traits"
		break;
		}
		
		case 12:
		{
		info = "A gnome’s energy and enthusiasm for living \nshines through every inch of his or her tiny body.\nRacial Trait : +2 Intelligence, Darkvision, Gnome Cunning"
		break;
		}
		
		case 13:
		{
		info = "Goblins occupy an uneasy place in a dangerous world, \nand they react by lashing out at any creatures \nthey believe they can bully.\nRacial Traits : +2 Dexterity, +1 Constitution, Darkvision, \nFury of the Small, Nimble Escape"
		break;
		}
		
		
		case 14:
		{
		info = "Strong and reclusive, every day brings \na new challenge to a goliath.\nRacial Traits : +2 Strength, +1 Constitution, Natural Athlete, \nStone's Endurance, Powerful Build, Mountain Born"
		break;
		}
		
		case 15:
		{
		info = "Half-elves combine what some say are the best qualities of their elf and human parents.\nRacial Traits : +2 Charisma, +1 to Two Other Ability Scores, \nDarkvision, Fey Ancestry, Skill Versatility"
		break;
		}
		
		case 16:
		{
		info = "The diminutive halflings survive in a world full of \nlarger creatures by avoiding notice or, \nbarring that, avoiding offense.\nRacial Traits : +2 Dexterity, Lucky, Brave, Halfling Nimbleness"
		break;
		}
		
		case 17:
		{
		info = "Half-orcs’ grayish pigmentation, sloping foreheads, jutting jaws, \nprominent teeth, and towering builds make their \norcish heritage plain for all to see.\nRacial Traits : +2 Strength, +1 Constitution, Darkvision, \nMenacing, Relentless Endurance, Savage Attacks"
		break;
		}
		
		case 18:
		{
		info = "War is the lifeblood of hobgoblins. Its glories are the dreams \nthat inspire them. Its horrors don’t feature \nin their nightmares.\nRacial Traits : +2 Constitution, +1 Intelligence, \nDarkvision, Martial Training, Saving Face"
		break;
		}
		
		case 19:
		{
		info = "Humans are the most adaptable and ambitious people among the \ncommon races. Whatever drives them, humans are the innovators, \nthe achievers, and the pioneers of the worlds.\nRacial Traits : +1 to All Ability Scores, Extra Language"
		break;
		}
		
		case 20:
		{
		info = "The kalashtar are a compound race created from the union of \nhumanity and renegade spirits from the plane of dreams.\nRacial Trait : +1 Charisma, +1 Wisdom, +1 Any Ability, \nDual Mind, Mental Discipline, Mind Link, \nPsychic Glamour, Severed from Dreams"
		break;
		}
		
		case 21:
		{
		info = "Haunted by an ancient crime that robbed them of their wings, \nthe kenku wander the world as vagabonds and burglars \nwho live at the edge of human society.\nRacial Traits : +2 Dexterity, +1 Wisdom, \nExpert Forgery, Kenku Training, Mimicry"
		break;
		}
		
		case 22:
		{
		info = "obolds are typically timid and shy away from conflict, \nbut they are dangerous and vicious if cornered.\nRacial Traits : +2 Dexterity, -2 Strength, Darkvision, \nGrovel, Cower, and Beg, Pack Tactics, Sunlight Sensitivity"
		break;
		}
		
		case 23:
		{
		info = "Lizardfolk possess an alien and inscrutable mindset, \ntheir desires and thoughts driven by a different set \nof basic principles than those of warm-blooded creatures.\nRacial Traits : +2 Constitution, +1 Wisdom, Bite, Cunning Artisan, \nHold Breath, Hunter's Lore, Natural Armor, Hungry Jaws"
		break;
		}
		
		case 24:
		{
		info = "Humanoid elephants, loxodons are strong, calm, and wise.\nRacial Traits : +2 Constitution, +1 Wisdom, Powerful Build, \nLoxodon Bravery, Natural Armor, Mason's Proficiency, \nStonecunning, Keen Smell"
		break;
		}
		
		case 25:
		{
		info = "Many minotaurs embrace the notion that the weak should \nperish and that the strong must rule.\nRacial Traits : +2 Strength, +1 Constitution, Horns, \nGoring Rush, Hammering Horns, Menacing, Hybrid Nature"
		break;
		}
		
		case 26:
		{
		info = "Orcs live a life that has no place for weakness, and every warrior \nmust be strong enough to take what is needed by force.\nRacial Traits : +2 Strength, +1 Constitution, -2 Intelligence, /nDarkvision, Aggressive, Menacing, Powerful Build"
		break;
		}
		
		case 27:
		{
		info = "Shifters - sometimes called the weretouched - \nare humanoids with a bestial aspect.\nRacial Traits : +1 Dexterity, Darkvision, \nKeen Senses, Shifting"
		break;
		}
		
		case 28:
		{
		info = "The Simic Combine uses magic to transfer the traits \nof animals into humans, elves, and vedalken.\nRacial Traits : +2 Constitution, +1 One Other Ability Score, \nDarkvision, Animal Enhancement"
		break;
		}
		
		case 29:
		{
		info = "Hailing from a strange and distant land, wandering tabaxi are \ncatlike humanoids driven by curiosity to collect interesting artifacts, \ngather tales and stories, and lay eyes on all the world’s wonders.\nRacial Traits : +2 Dexterity, +1 Charisma, Darkvision,\nFeline Agility, Cat's Claws, Cat's Talent"
		break;
		}
		
		case 30:
		{
		info = "To be greeted with stares and whispers, to suffer violence \nand insult on the street, to see mistrust and fear \nin every eye: this is the lot of the tiefling.\nRacial Traits : +2 Charisma, +1 Intelligence, Darkvision, \nHellish Resistance, Infernal Legacy"
		break;
		}
		
		case 31:
		{
		info = "What many tortles consider a simple life, others might \ncall a life of adventure. They are nomad survivalists \neager to explore the wilderness.\nRacial Traits : +2 Strength, +1 Wisdom, Claws, Hold Breath, \nNatural Armor, Shell Defense, Survival Instinct"
		break;
		}
		
		case 32:
		{
		info = "Long-established guardians of the deep ocean floor, \nin recent years the noble tritons have become \nincreasingly active in the world above.\nRacial Traits : +1 Strength, +1 Constitution, +1 Charisma, \nAmphibious, Control Air and Water, \nEmissary of the Sea, Guardians of the Depths"
		break;
		}
		
		case 33:
		{
		info = "The blue-skinned vedalken strive for \nperfection above all else.\nRacial Traits : +2 Intelligence, +1 Wisdom, \nVedalken Dispassion, Tireless Precision"
		break;
		}
		
		case 34:
		{
		info = "Viashino are humanoid reptiles fueled \nby an inner fire of zeal./nRacial Traits : +2 Dexterity, +1 Strength, Bite, \nLashing Tail, Wiry Frame"
		break;
		}
		
		case 35:
		{
		info = "Warforged are formed from a blend of organic and inorganic materials. \nBuilt as weapons, they must now find a purpose beyond the war.\nRacial Traits : +1 Constitution, Warforged Resilience, \nSentry's Rest, Integrated Protection"
		break;
		}
		
	}
	switch (side)
	{
		case 0:
		{
			draw_set_color(c_lime)
			draw_rectangle(x, y, x + 528, y + 128, false)
			draw_set_color(c_black)
			draw_rectangle(x, y, x + 528, y + 128, true)
			draw_text(x + 8, y + 8, info)
			
			break;
		}
		case 1:
		{
			draw_set_color(c_lime)
			draw_rectangle(x - 528 + 128, y, x + 128, y + 128, false)
			draw_set_color(c_black)
			draw_rectangle(x - 528 + 128, y, x + 128, y + 128, true)
			draw_text(x - 520 + 128, y + 8, info)
			
			break;
		}
	}
}

if place_meeting(x, y, obj_player)
{
	draw_set_alpha(.5)
	draw_set_color(c_white)
	draw_rectangle(x, y, x + sprite_width, y + sprite_height, false)
	draw_set_alpha(1)
}