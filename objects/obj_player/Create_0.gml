instance_create_depth(x, y, -1000, obj_player_cursor)

///Character Sheet Information

// *** RACE VARIABLES *** //

//Character Info
CharacterName = ""
CharacterClass = ""
CharacterLevel = 1
CharacterRace = ""
CharacterBackground = ""
CharacterAlignment = ""
CharacterExperience = 0
CopperPieces = 0
SilverPieces = 0
GoldPieces = 0
ElectrumPieces = 0
PlatinumPieces = 0

//Character Stats
InitialStrength = 12
StrengthAdded = 0

InitialDexterity = 12
DexterityAdded = 0

InitialConstitution = 12
ConstitutionAdded = 0

InitialIntelligence = 12
IntelligenceAdded = 0

InitialWisdom = 12
WisdomAdded = 0

InitialCharisma = 12
CharismaAdded = 0

Speed = 0
Flight = false
FlightSpeed = 0
Swim = false
SwimSpeed = 0
Size = ""

// *** CLASS VARIABLES *** //

HitDie = 0
MaxHP = 0
HPAdded = 0

//Saving Throws
StrengthSavingThrow = false
DexteritySavingThrow = false
ConstitutionSavingThrow = false
IntelligenceSavingThrow = false
WisdomSavingThrow = false
CharismaSavingThrow = false

//Skill Proficiencies
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
Initiative = 0
Inspiration = 0
ProficiencyBonus = 0
Perception = 0


PersonalityTraits = ""
Ideals = ""
Bonds = ""
Flaws = ""
BackgroundFeatures = ""

//Data structure list initialization
TraitsList = ds_list_create()
LanguagesList = ds_list_create()
WeaponsList = ds_list_create()
ArmorList = ds_list_create()
ToolsList = ds_list_create()
InventoryList = ds_list_create()
Attacks = ds_list_create()
Cantrips = ds_list_create()
OtherMagic = ds_list_create()
/*

// *** GAMEPLAY TRAITS AND ABILITIES *** // DEPRECATED

// *** ACTIVE EFFECTS *** //

//Attacks
HasTalons = false
HasHooves = false
HasBreathWeapon = false

//Actions
HasCharge = false
HasChangeAppearance = false
HasUnsettlingVisage = false
HasMaskOfTheWild = false
HasFeyStep = false
HasSlipIntoShadow = false
HasHealingHands = false
HasBlessingsOfTheRavenQueen = false
HasHiddenStep = false
HasTinker = false
HasFuryOfTheSmall = false
HasNimbleEscape = false
HasStonesEndurance = false

//Cantrips, other magic
HasLightBearer = false
HasInnateSpellcasting = false
HasMingleWithTheWind = false
HasMergeWithStone = false
HasReachToTheBlaze = false
HasCallToTheWave = false

// *** PASSIVE EFFECTS *** //

//Sight, hearing, perception, etc.
UseDarkvision = false
UseSuperiorDarkvision = false
UseSunlightSensitivity = false
UseKeenSenses = false

//Damage Resistance
UseCelestialResistance = false
UseNecroticResistance = false
UseFireResistance = false
UseAcidResistance = false
UseDamageResistance = false
UseMagicResistance = false
UsePoisonImmunity = false

//Strength, Constitution, breathing, etc.
UsePowerfulBuild = false
UseEquineBuild = false
UseDwarvenToughness = false
UseAmphibious = false
UseUnendingBreath = false
UseMountainBorn = false

//Movement, Dexterity
UseSurpriseAttack = false
UseEarthWalk = false
UseSneaky = false
UseLongLimbed = false
UseStoneCamouflage = false

//Skill-related
UseSurvivor = false
UseStonecunning = false
UseArtificiersLore = false
UseGiftedScribe = false
UseNaturalAthlete = false

//Saving throw-related
UseGnomeCunning = false
UseMentalDiscipline = false
UseFeyAncestry = false

//Other passive abilities
UseSpeakWithSmallBeast = false
UseSpeechofBeastandLeaf = false
UseHybridNature = false
UseChangelingInstincts = false
UseDivergentPersona = false
UseDwarvenResilience = false
UseNaturalTalent = false
UseGiftOfTheShadows = false
UseFriendOfTheSea = false
UseAereniElf = false