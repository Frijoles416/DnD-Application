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
IntelligenceModifier = floor((InitialIntelligence + IntelligenceAdded)/2 + 5)

ActualCharisma = (InitialCharisma + CharismaAdded)
CharismaModifier = floor((InitialCharisma + CharismaAdded)/2 + 5)

ActualWisdom = (InitialWisdom + WisdomAdded)
CharismaModifier = floor((InitialWisdom + WisdomAdded)/2 + 5)

//Hitpoint Contol
/*switch(CharacterRace)
{
	case "Barbarian":
	MaxHP = 12 + ConstitutionModifer
	break;
}

//Trait Variable Checks
/*
if ds_exists(TraitsList, ds_type_list)// Checking the Data Structures to traits and giving booleans for them so I can add the to gameplay
{
	TraitLightBearer = ds_list_find_index(TraitsList, "Light Bearer")
	if TraitLightBearer > 0
	{
		if !ds_exists(Cantrips, ds_type_list)
		{
			Cantrips = ds_list_create()
		}
		ds_list_add(Cantrips, "Light")
	}
	
	
	TraitHooves = ds_list_find_index(TraitsList, "Hooves")
	if TraitHooves > 0 
	{
		if !ds_exists(Attacks, ds_type_list)
		{
			Attacks = ds_list_create()
		}
		ds_list_add(Attacks, "Hooves")
	}
	
	
	TraitHybridNature = ds_list_find_index(TraitsList, "Hybrid Nature")
	if TraitEquineBuild > 0 && CharacterRace = "Centaur"
	{
		HybridNature[0] = "Human"
		HybridNature[1] = "Monstrosity"
	}
	
	//Add Dragonborn Traits after fininghing Race selection
	
	
	TraitDwarvenToughness = ds_list_find_index(TraitsList, "Dwarven Toughness")
	if TraitDwarvenToughness > 0 
	{
		HitpointsAdded = CharacterLevel
	}
	
	//Add Elf Traits
	
	TraitFirbolgMagic = ds_list_find_index(TraitsList, "Firbolg Magic")
	if TraitFirbolgMagic > 0
	{
		if !ds_exists(OtherMagic, ds_type_list)
		{
			OtherMagic = ds_list_create()
		}
		ds_list_add(OtherMagic, "Detect Magic", "Disguise Self")
	}
	
	
	TraitMinglewiththeWind = ds_list_find_index(TraitsList, "Mingle With the Wind")
	if TraitMinglewiththeWind > 0
	{
		if !ds_exists(OtherMagic, ds_type_list)
		{
			OtherMagic = ds_list_create()
		}
		ds_list_add(OtherMagic, "Levitate")
	}
	
	
	TraitMergewithStone = ds_list_find_index(TraitsList, "Merge With Stone")
	if TraitMergewithStone > 0
	{
		if !ds_exists(OtherMagic, ds_type_list)
		{
			OtherMagic = ds_list_create()
		}
		ds_list_add(OtherMagic, "Pass Without Trace")
	}
	
	
	TraitReachtotheBlaze = ds_list_find_index(TraitsList, "Reach to the Blaze")
	if TraitReachtotheBlaze > 0
	{
		if !ds_exists(Cantrips, ds_type_list)
		{
			Cantrips = ds_list_create()
		}
		ds_list_add(Cantrips, "Flame")
	}
	
	
	TraitCalltotheWave = ds_list_find_index(TraitsList, "Call to the Wave")
	if TraitCalltotheWave > 0
	{
		if !ds_exists(Cantrips, ds_type_list)
		{
			Cantrips = ds_list_create()
		}
		ds_list_add(Cantrips, "Shape Water")
	}
	
	TraitGithyankiPsionics = ds_list_find_index(TraitsList, "Githyanki Psionics")
	if TraitGithyankiPsionics > 0
	{
		if !ds_exists(Cantrips, ds_type_list)
		{
			Cantrips = ds_list_create()
		}
		ds_list_add(Cantrips, "Mage Hand")
	}
	
	TraitGithzeraiPsionics = ds_list_find_index(TraitsList, "Githzerai Psionics")
	if TraitGithyankiPsionics > 0
	{
		if !ds_exists(Cantrips, ds_type_list)
		{
			Cantrips = ds_list_create()
		}
		ds_list_add(Cantrips, "Mage Hand")
	}
	
}

