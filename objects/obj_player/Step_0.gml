x = mouse_x
y = mouse_y

//Modifier Calculation

ActualStrength = (InitialStrength + StrengthAdded)
StrengthModifier = floor((InitialStrength + StrengthAdded)/2 - 5)

ActualDexterity = (InitialDexterity + DexterityAdded)
DexterityModifier = floor((InitialDexterity + DexterityAdded)/2 - 5)

ActualConstitution = (InitialConstitution + ConstitutionAdded)
ConsitutionModifier = floor((InitialConstitution + ConstitutionAdded)/2 - 5)

ActualIntelligence = (InitialIntelligence + IntelligenceAdded)
IntelligenceModifier = floor((InitialIntelligence + IntelligenceAdded)/2 - 5)

ActualCharisma = (InitialCharisma + CharismaAdded)
CharismaModifier = floor((InitialCharisma + CharismaAdded)/2 - 5)

ActualWisdom = (InitialWisdom + WisdomAdded)
CharismaModifier = floor((InitialWisdom + WisdomAdded)/2 - 5)

//Hitpoint Contol
/*switch(CharacterRace)
{
	case "Barbarian":
	MaxHP = 12 + ConstitutionModifer
	break;
}
