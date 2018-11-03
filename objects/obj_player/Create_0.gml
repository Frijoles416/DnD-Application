//instance_create_depth(x, y, -1000, obj_player_cursor)
cursor_sprite = spr_cursor

//Global Variables
global.BaseSelection = 0
global.VariantSelection = 0
global.LanguageSelection = 0
global.SkillSelection = 0
global.ToolSelection = 0
global.TotalSelection = 0

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
RaceStrengthAdded = 0
ClassStrengthAdded = 0

InitialDexterity = 12
RaceDexterityAdded = 0
ClassDexterityAdded = 0

InitialConstitution = 12
RaceConstitutionAdded = 0
ClassConstitutionAdded = 0

InitialIntelligence = 12
RaceIntelligenceAdded = 0
ClassIntelligenceAdded = 0

InitialWisdom = 12
RaceWisdomAdded = 0
ClassWisdomAdded = 0

InitialCharisma = 12
RaceCharismaAdded = 0
ClassCharismaAdded = 0

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

//Skill Proficiencies (Will Be combined into one Prof. once Character Creation is over)

//Race
RaceProficiencyAcrobatics = false
RaceProficiencyAnimalHandling = false
RaceProficiencyArcana = false
RaceProficiencyAthletics = false
RaceProficiencyDeception = false
RaceProficiencyHistory = false
RaceProficiencyInsight = false
RaceProficiencyIntimidation = false
RaceProficiencyInvestigation = false
RaceProficiencyMedicine = false
RaceProficiencyNature = false
RaceProficiencyPerception = false
RaceProficiencyPerformance = false
RaceProficiencyPersuasion = false
RaceProficiencyReligion = false
RaceProficiencySleightofHand = false
RaceProficiencyStealth = false
RaceProficiencySurvival = false

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

//Character Creation Specific Data Structure creation

//Race
RaceTraitsList = ds_list_create()
RaceLanguagesList = ds_list_create()
RaceWeaponsList = ds_list_create()
RaceArmorList = ds_list_create()
RaceToolsList = ds_list_create()
RaceAttacks = ds_list_create()
RaceCantrips = ds_list_create()

//Class

ClassTraitsList = ds_list_create()
ClassInventoryList = ds_list_create()
ClassWeaponsList = ds_list_create()
ClassArmorList = ds_list_create()
ClassToolsList = ds_list_create()
ClassAttacks = ds_list_create()
ClassCantrips = ds_list_create()

//Background
BackgroundLanguagesList = ds_list_create()
BackgroundInventoryList = ds_list_create()

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