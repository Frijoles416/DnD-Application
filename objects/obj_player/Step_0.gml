x = mouse_x
y = mouse_y

//Actual Calculation
ActualStrength = InitialStrength + StrengthAdded
ActualDexterity = InitialDexterity + DexterityAdded
ActualConstitution = InitialConstitution + ConstitutionAdded
ActualIntelligence = InitialIntelligence + IntelligenceAdded
ActualWisdom = InitialWisdom + WisdomAdded
ActualCharisma = InitialCharisma + CharismaAdded

//Modifier Calculation
StrengthModifier = floor((InitialStrength + StrengthAdded)/2 - 5)
DexterityModifier = floor((InitialDexterity + DexterityAdded)/2 - 5)
ConstitutionModifier = floor((InitialConstitution + ConstitutionAdded)/2 - 5)
IntelligenceModifier = floor((InitialIntelligence + IntelligenceAdded)/2 - 5)
CharismaModifier = floor((InitialCharisma + CharismaAdded)/2 - 5)
WisdomModifier = floor((InitialWisdom + WisdomAdded)/2 - 5)


//Hitpoint Contol
switch(CharacterRace)
{
	case "Barbarian":
	MaxHP = 12 + ConstitutionModifer
	break;
}
