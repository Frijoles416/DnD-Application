instance_create_depth(x, y, -1000, obj_player_cursor)

///Character Sheet Information
//Race Variables
CharacterName = ""
CharacterClass = ""
CharacterLevel = 1
CharacterRace = ""
CharacterBackground = ""
CharacterAlignment = ""
CharacterExperience = 0

CharacterStrength = 12
StrengthModifier = 0
StrengthAdded = 0
ActualStrength = 0

CharacterDexterity = 12
DexterityModifier = 0
DexterityAdded = 0
ActualDexterity = 0

CharacterConstitution = 12
ConstitutionModifier = 0
ConstitutionAdded = 0
ActualConstitution = 0

CharacterIntelligence = 12
IntelligenceModifier = 0
IntelligenceAdded = 0
ActualIntelligence = 0

CharacterWisdom = 12
WisdomModifier = 0
WisdomAdded = 0
ActualWisdom = 0

CharacterCharisma = 12
CharismaModifier = 0
CharismaAdded = 0
ActualCharisma = 0

Speed = 0
Flight = false
FlightSpeed = 0
Swim = false
SwimSpeed = 0
Size = ""

//Class Variables

HitDie = 0
MaxHitpoints = 0
HitpointsAdded = 0

StrengthSavingThrow = false
DexteritySavingThrow = false
ConstitutionSavingThrow = false
IntelligenceSavingThrow = false
WisdomSavingThrow = false
CharismaSavingThrow = false

ProficiencyAcrobatics = false
ProficiencyAnimalHandling = false
ProficiencyArcana = false
ProficiencyAthletics = false
ProficiencyDeception = false
ProficiencyHistory = false
ProficiencyInsight = false
ProficiencyIntimidation = false
ProficiencyInvestigation = false
ProficiencyMedicine = false
ProficiencyNature = false
ProficiencyPerception = false
ProficiencyPerformance = false
ProficiencyPersuasion = false
ProficiencyReligion = false
ProficiencySleightofHand = false
ProficiencyStealth = false
ProficiencySurvival = false

//Other Variables
ArmorClass = 0
DeathSaveSuccesses = 0
DeathSaveFailures = 0
PersonalityTraits = ""
Ideals = ""
Bonds = ""
Flaws = ""

//ds list
TraitsList = 0
LanguagesList = 1
WeaponsList = 2
ArmorList = 3
ToolsList = 4
InventoryList = 5
Attacks = 6
Cantrips = 7
OtherMagic = 8


//have to convert the strings to valuse to make them usable
Traits = 0
Languages = 0
WeaponProfeciencies = 0
ArmorProficiencies = 0

//Check Traits
TraitTalons = -1
TraitDarkvision = -1
TraitCelestialResistance = -1
TraitHealingHands = -1
TraitLightBearer = -1
TraitLongLimbed = -1
TraitPowerfulBuild = -1
TraitSneaky = -1
TraitSurpriseAttack = -1
TraitHooves = -1
TraitEquineBuild = -1
TraitSurvivor = -1
TraitHybridNature = -1
TraitChangeAppearance = 1
TraitUnsettlingVisage = -1
TraitStonecunning = -1
TraitFirbolgMagic = -1
TraitHiddenStep = -1
TraitSpeechofBeastandLeaf = -1
TraitMinglewiththeWind = -1
TraitEarthWalk = -1
TraitMergewithStone = -1
TraitFireResistance = -1
TraitReachtotheBlaze = -1
TraitAcidResistance = -1
TraitCalltotheWave = -1
TraitGithyankiPsionics = -1
TraitGithzeraiPsionics = -1
TraitMentalDiscipline = -1

//Implementaion of Traits for Gameplay
UseDarkvision = false
UseCelestialResistance = false
UseHealingHands = false
UseLongLimbed = false
UsePowerfulBuild = false
UseSneaky = false
UseSurpriseAttack = false
UseEquineBuild = false
UseSurvivor = false
HybridNature = 0
UseChangeAppearance = false
UseUnsettlingVisage = false
UseStonecunning = false
UseHiddenStep = false
UseSpeechofBeastandLeaf = false
UseEarthWalk = false
UseFireResistance = false
UseAcidResistance = false
UseMentalDiscipline = false
