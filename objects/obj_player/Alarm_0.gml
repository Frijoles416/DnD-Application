//Character Creation Data Structures (Will be added together and then destroyed once character creation is confirmed)

//Race

if !ds_exists(RaceTraitsList, ds_type_list) RaceTraitsList = ds_list_create()
if !ds_exists(RaceLanguagesList, ds_type_list) RaceLanguagesList = ds_list_create()
if !ds_exists(RaceWeaponsList, ds_type_list) RaceWeaponsList = ds_list_create()
if !ds_exists(RaceArmorList, ds_type_list) RaceArmorList = ds_list_create()
if !ds_exists(RaceToolsList, ds_type_list) RaceToolsList = ds_list_create()
if !ds_exists(RaceAttacks, ds_type_list) RaceAttacks = ds_list_create()
if !ds_exists(RaceCantrips, ds_type_list) RaceCantrips = ds_list_create()

//Class

if !ds_exists(ClassTraitsList, ds_type_list) ClassTraitsList = ds_list_create()
if !ds_exists(ClassInventoryList, ds_type_list) ClassInventoryList = ds_list_create()
if !ds_exists(ClassWeaponsList, ds_type_list) ClassWeaponsList = ds_list_create()
if !ds_exists(ClassArmorList, ds_type_list) ClassArmorList = ds_list_create()
if !ds_exists(ClassToolsList, ds_type_list) ClassToolsList = ds_list_create()
if !ds_exists(ClassAttacks, ds_type_list) ClassAttacks = ds_list_create()
if !ds_exists(ClassCantrips, ds_type_list) ClassCantrips = ds_list_create()

//Background
if !ds_exists(BackgroundLanguagesList, ds_type_list) BackgroundLanguagesList = ds_list_create()
if !ds_exists(BackgroundInventoryList, ds_type_list) BackgroundInventoryList = ds_list_create()