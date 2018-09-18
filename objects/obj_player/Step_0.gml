x = mouse_x
y = mouse_y

//Modifier Calculation
ActualStrength = (CharacterStrength + StrengthAdded)
switch(ActualStrength)
{
	case 1: 
	StrengthModifier = -5
	break;
	
	case 2:
	case 3:
	StrengthModifier = -4
	break;
	
	case 4:
	case 5:
	StrengthModifier = -3
	break;
	
	case 6:
	case 7:
	StrengthModifier = -2
	break;
	
	case 8:
	case 9:
	StrengthModifier = -1
	break;
	
	case 10:
	case 11:
	StrengthModifier = 0
	break;
	
	case 12:
	case 13:
	StrengthModifier = 1
	break;
	
	case 14:
	case 15:
	StrengthModifier = 2
	break;
	
	case 16:
	case 17:
	StrengthModifier = 3
	break;
	
	case 18:
	case 19:
	StrengthModifier = 4
	break;
	
	case 20:
	case 21:
	StrengthModifier = 5
	break
	
	case 22:
	case 23:
	StrengthModifier = 6
	break;
	
	case 24:
	case 25:
	StrengthModifier = 7
	break;
	
	case 26:
	case 27:
	StrengthModifier = 8
	break;
	
	case 28:
	case 29:
	StrengthModifier = 9
	break;

	case 30:
	StrengthModifier = 10
	break;
}

ActualDexterity = (CharacterDexterity + DexterityAdded)
switch(ActualDexterity)
{
	case 1: 
	DexterityModifier = -5
	break;
	
	case 2:
	case 3:
	DexterityModifier = -4
	break;
	
	case 4:
	case 5:
	DexterityModifier = -3
	break;
	
	case 6:
	case 7:
	DexterityModifier = -2
	break;
	
	case 8:
	case 9:
	DexterityModifier = -1
	break;
	
	case 10:
	case 11:
	DexterityModifier = 0
	break;
	
	case 12:
	case 13:
	DexterityModifier = 1
	break;
	
	case 14:
	case 15:
	DexterityModifier = 2
	break;
	
	case 16:
	case 17:
	DexterityModifier = 3
	break;
	
	case 18:
	case 19:
	DexterityModifier = 4
	break;
	
	case 20:
	case 21:
	DexterityModifier = 5
	break
	
	case 22:
	case 23:
	DexterityModifier = 6
	break;
	
	case 24:
	case 25:
	DexterityModifier = 7
	break;
	
	case 26:
	case 27:
	DexterityModifier = 8
	break;
	
	case 28:
	case 29:
	DexterityModifier = 9
	break;

	case 30:
	DexterityModifier = 10
	break;
}

ActualConstitution = (CharacterConstitution + ConstitutionAdded)
switch(ActualConstitution)
{
	case 1: 
	ConstitutionModifier = -5
	break;
	
	case 2:
	case 3:
	ConstitutionModifier = -4
	break;
	
	case 4:
	case 5:
	ConstitutionModifier = -3
	break;
	
	case 6:
	case 7:
	ConstitutionModifier = -2
	break;
	
	case 8:
	case 9:
	ConstitutionModifier = -1
	break;
	
	case 10:
	case 11:
	ConstitutionModifier = 0
	break;
	
	case 12:
	case 13:
	ConstitutionModifier = 1
	break;
	
	case 14:
	case 15:
	ConstitutionModifier = 2
	break;
	
	case 16:
	case 17:
	ConstitutionModifier = 3
	break;
	
	case 18:
	case 19:
	ConstitutionModifier = 4
	break;
	
	case 20:
	case 21:
	ConstitutionModifier = 5
	break
	
	case 22:
	case 23:
	ConstitutionModifier = 6
	break;
	
	case 24:
	case 25:
	ConstitutionModifier = 7
	break;
	
	case 26:
	case 27:
	ConstitutionModifier = 8
	break;
	
	case 28:
	case 29:
	ConstitutionModifier = 9
	break;

	case 30:
	ConstitutionModifier = 10
	break;
}

ActualIntelligence = (CharacterIntelligence + IntelligenceAdded)
switch(ActualIntelligence)
{
	case 1: 
	IntelligenceModifier = -5
	break;
	
	case 2:
	case 3:
	IntelligenceModifier = -4
	break;
	
	case 4:
	case 5:
	IntelligenceModifier = -3
	break;
	
	case 6:
	case 7:
	IntelligenceModifier = -2
	break;
	
	case 8:
	case 9:
	IntelligenceModifier = -1
	break;
	
	case 10:
	case 11:
	IntelligenceModifier = 0
	break;
	
	case 12:
	case 13:
	IntelligenceModifier = 1
	break;
	
	case 14:
	case 15:
	IntelligenceModifier = 2
	break;
	
	case 16:
	case 17:
	IntelligenceModifier = 3
	break;
	
	case 18:
	case 19:
	IntelligenceModifier = 4
	break;
	
	case 20:
	case 21:
	IntelligenceModifier = 5
	break
	
	case 22:
	case 23:
	IntelligenceModifier = 6
	break;
	
	case 24:
	case 25:
	IntelligenceModifier = 7
	break;
	
	case 26:
	case 27:
	IntelligenceModifier = 8
	break;
	
	case 28:
	case 29:
	IntelligenceModifier = 9
	break;

	case 30:
	IntelligenceModifier = 10
	break;
}

ActualCharisma = (CharacterCharisma + CharismaAdded)
switch(ActualCharisma)
{
	case 1: 
	CharismaModifier = -5
	break;
	
	case 2:
	case 3:
	CharismaModifier = -4
	break;
	
	case 4:
	case 5:
	CharismaModifier = -3
	break;
	
	case 6:
	case 7:
	CharismaModifier = -2
	break;
	
	case 8:
	case 9:
	CharismaModifier = -1
	break;
	
	case 10:
	case 11:
	CharismaModifier = 0
	break;
	
	case 12:
	case 13:
	CharismaModifier = 1
	break;
	
	case 14:
	case 15:
	CharismaModifier = 2
	break;
	
	case 16:
	case 17:
	CharismaModifier = 3
	break;
	
	case 18:
	case 19:
	CharismaModifier = 4
	break;
	
	case 20:
	case 21:
	CharismaModifier = 5
	break
	
	case 22:
	case 23:
	CharismaModifier = 6
	break;
	
	case 24:
	case 25:
	CharismaModifier = 7
	break;
	
	case 26:
	case 27:
	CharismaModifier = 8
	break;
	
	case 28:
	case 29:
	CharismaModifier = 9
	break;

	case 30:
	CharismaModifier = 10
	break;
}

ActualWisdom = (CharacterWisdom + WisdomAdded)
switch(ActualWisdom)
{
	case 1: 
	WisdomModifier = -5
	break;
	
	case 2:
	case 3:
	WisdomModifier = -4
	break;
	
	case 4:
	case 5:
	WisdomModifier = -3
	break;
	
	case 6:
	case 7:
	WisdomModifier = -2
	break;
	
	case 8:
	case 9:
	WisdomModifier = -1
	break;
	
	case 10:
	case 11:
	WisdomModifier = 0
	break;
	
	case 12:
	case 13:
	WisdomModifier = 1
	break;
	
	case 14:
	case 15:
	WisdomModifier = 2
	break;
	
	case 16:
	case 17:
	WisdomModifier = 3
	break;
	
	case 18:
	case 19:
	WisdomModifier = 4
	break;
	
	case 20:
	case 21:
	WisdomModifier = 5
	break
	
	case 22:
	case 23:
	WisdomModifier = 6
	break;
	
	case 24:
	case 25:
	WisdomModifier = 7
	break;
	
	case 26:
	case 27:
	WisdomModifier = 8
	break;
	
	case 28:
	case 29:
	WisdomModifier = 9
	break;

	case 30:
	WisdomModifier = 10
	break;
}

//Hitpoint Contol
switch(CharacterRace)
{
	case "Barbarian":
	MaxHitpoints = 12 + ConstitutionModifer
	break;
}

//Trait Variable Checks
if ds_exists(TraitsList, ds_type_list)// Checking the Data Structures to traits and giving booleans for them so I can add the to gameplay
{
	TraitTalons = ds_list_find_index(TraitsList, "Talons")
	if TraitTalons > 0 
	{
		if !ds_exists(Attacks, ds_type_list)
		{
			Attacks = ds_list_create()
		}
		ds_list_add(Attacks, "Talons")
	}
	
	TraitDarkvision = ds_list_find_index(TraitsList, "Darkvision")
	if TraitDarkvision > 0 UseDarkvision = true
	else if TraitDarkvision < 0 UseDarkvision = false
	
	TraitCelestialResistance = ds_list_find_index(TraitsList, "Celestial Resistance")
	if TraitCelestialResistance > 0 UseCelestialResistance = true
	else if TraitCelestialResistance < 0 UseCelestialResistance = false
	
	TraitHealingHands = ds_list_find_index(TraitsList, "Healing Hands")
	if TraitHealingHands > 0 UseHealingHands = true
	else if TraitHealingHands < 0 UseHealingHands = false
	
	TraitLightBearer = ds_list_find_index(TraitsList, "Light Bearer")
	if TraitCelestialResistance > 0
	{
		if !ds_exists(Cantrips, ds_type_list)
		{
			Cantrips = ds_list_create()
		}
		ds_list_add(Cantrips, "Light")
	}
	
	TraitLongLimbed = ds_list_find_index(TraitsList, "Long Limbed")
	if TraitLongLimbed > 0 UseLongLimbed = true
	else if TraitLongLimbed < 0 UseLongLimbed = false
	
	TraitPowerfulBuild = ds_list_find_index(TraitsList, "Powerful Build")
	if TraitPowerfulBuild > 0 UsePowerfulBuild = true
	else if TraitPowerfulBuild < 0 UsePowerfulBuild = false
	
	TraitSneaky = ds_list_find_index(TraitsList, "Sneaky")
	if TraitSneaky > 0 UseSneaky = true
	else if TraitSneaky < 0 UseSneaky = false
	
	TraitSurpriseAttack = ds_list_find_index(TraitsList, "Surprise Attack")
	if TraitSurpriseAttack > 0 UseSurpriseAttack = true
	else if TraitSurpriseAttack < 0 UseSurpriseAttack = false
	
	TraitHooves = ds_list_find_index(TraitsList, "Hooves")
	if TraitHooves > 0 
	{
		if !ds_exists(Attacks, ds_type_list)
		{
			Attacks = ds_list_create()
		}
		ds_list_add(Attacks, "Hooves")
	}
	
	TraitEquineBuild = ds_list_find_index(TraitsList, "Equine Build")
	if TraitEquineBuild > 0 UseEquineBuild = true
	else if TraitEquineBuild < 0 UseEquineBuild = false
	
	TraitSurvivor = ds_list_find_index(TraitsList, "Survivor")
	if TraitSurvivor > 0 UseSurvivor = true
	else if TraitSurvivor < 0 UseSurvivor = false
	
	TraitHybridNature = ds_list_find_index(TraitsList, "Hybrid Nature")
	if TraitEquineBuild > 0 && CharacterRace = "Centaur"
	{
		HybridNature[0] = "Human"
		HybridNature[1] = "Monstrosity"
	}
	
	TraitChangeAppearance = ds_list_find_index(TraitsList, "Change Appearance")
	if TraitChangeAppearance > 0 UseChangeAppearance = true
	else if TraitChangeAppearance < 0 UseChangeAppearance = false
	
	TraitUnsettlingVisage = ds_list_find_index(TraitsList, "Unsettling Visage")
	if TraitUnsettlingVisage > 0 UseUnsettlingVisage = true
	else if TraitUnsettlingVisage < 0 UseUnsettlingVisage = false
	
	//Add Dragonborn Traits after fininghing Race selection
	
	TraitDwarvenResilience = ds_list_find_index(TraitsList, "Dwarven Resilience")
	if TraitDwarvenResilience > 0 UseDwarvenResilience = true
	else if TraitDwarvenResilience < 0 UseDwarvenResilience = false
	
	TraitStonecunning = ds_list_find_index(TraitsList, "Stonecunning")
	if TraitStonecunning > 0 UseStonecunning = true
	else if TraitStonecunning < 0 UseStonecunning = false
	
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
	
	TraitHiddenStep = ds_list_find_index(TraitsList, "Hidden Step")
	if TraitHiddenStep > 0 UseHiddenStep = true
	else if TraitHiddenStep < 0 UseHiddenStep = false
	
	TraitSpeechofBeastandLeaf = ds_list_find_index(TraitsList, "Speech of Beast and Leaf")
	if TraitSpeechofBeastandLeaf > 0 UseSpeechofBeastandLeaf = true
	else if TraitSpeechofBeastandLeaf < 0 UseSpeechofBeastandLeaf = false
	
	TraitMinglewiththeWind = ds_list_find_index(TraitsList, "Mingle With the Wind")
	if TraitMinglewiththeWind > 0
	{
		if !ds_exists(OtherMagic, ds_type_list)
		{
			OtherMagic = ds_list_create()
		}
		ds_list_add(OtherMagic, "Levitate")
	}
	
	TraitEarthWalk = ds_list_find_index(TraitsList, "Earth Walk")
	if TraitEarthWalk > 0 UseEarthWalk = true
	else if TraitEarthWalk < 0 UseEarthWalk = false
	
	TraitMergewithStone = ds_list_find_index(TraitsList, "Merge With Stone")
	if TraitMergewithStone > 0
	{
		if !ds_exists(OtherMagic, ds_type_list)
		{
			OtherMagic = ds_list_create()
		}
		ds_list_add(OtherMagic, "Pass Without Trace")
	}
	
	TraitFireResistance = ds_list_find_index(TraitsList, "Fire Resistance")
	if TraitFireResistance > 0 UseFireResistance = true
	else if TraitFireResistance < 0 UseFireResistance = false
	
	TraitReachtotheBlaze = ds_list_find_index(TraitsList, "Reach to the Blaze")
	if TraitReachtotheBlaze > 0
	{
		if !ds_exists(Cantrips, ds_type_list)
		{
			Cantrips = ds_list_create()
		}
		ds_list_add(Cantrips, "Flame")
	}
	
	TraitAcidResistance = ds_list_find_index(TraitsList, "Acid Resistance")
	if TraitAcidResistance > 0 UseAcidResistance = true
	else if TraitAcidResistance < 0 UseAcidResistance = false
	
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
	
	TraitMentalDiscipline = ds_list_find_index(TraitsList, "Mental Discipline")
	if TraitMentalDiscipline > 0 UseMentalDiscipline = true
	else if TraitMentalDiscipline < 0 UseMentalDiscipline = false
}

