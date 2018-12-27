x = mouse_x
y = mouse_y

//Actual Calculation
ActualStrength = InitialStrength + RaceStrengthAdded + ClassStrengthAdded
ActualDexterity = InitialDexterity + RaceDexterityAdded + ClassDexterityAdded
ActualConstitution = InitialConstitution + RaceConstitutionAdded + ClassConstitutionAdded
ActualIntelligence = InitialIntelligence + RaceIntelligenceAdded + ClassIntelligenceAdded
ActualWisdom = InitialWisdom + RaceWisdomAdded + ClassWisdomAdded 
ActualCharisma = InitialCharisma + RaceCharismaAdded + ClassCharismaAdded

//Modifier Calculation
StrengthModifier = floor((ActualStrength)/2 - 5)
DexterityModifier = floor((ActualDexterity)/2 - 5)
ConstitutionModifier = floor((ActualConstitution)/2 - 5)
IntelligenceModifier = floor((ActualIntelligence)/2 - 5)
CharismaModifier = floor((ActualCharisma)/2 - 5)
WisdomModifier = floor((ActualWisdom)/2 - 5)


//Hitpoint Contol
switch(CharacterClass)
{
	case "Barbarian":
	MaxHP = 12 + ConstitutionModifer
	break;
	
	case "Bard":
	MaxHP = 8 + ConstitutionModifer
	break;
}

//Deving
if keyboard_check_released(vk_escape) game_end()
if keyboard_check_released(ord("B")) room_goto(rm_Deving_Buttons)
if room = rm_Deving_Buttons && keyboard_check_released(ord("B")) room_goto(rm_character_creation)

//Gameplay
if room = rm_dungeon1
	{
	Gridx = floor(x/GRID_SIZE)
	Gridy = floor(y/GRID_SIZE)

	if (Gridx < 0 || Gridy < 0 || Gridx >= room_width/GRID_SIZE || Gridy >= room_height/GRID_SIZE)
	{
		HoverNode = noone
	}
	else
	{
		HoverNode = map[Gridx, Gridy]
	}
	
	
}
