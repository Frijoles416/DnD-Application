///Draw character information
draw_set_font(fnt_1)
if room = rm_character_creation
{
	draw_self()
	draw_set_color(c_lime)
	draw_text(32, 32, "Name : "  + string(CharacterName))
	draw_text(32, 48, "Class : " + string(CharacterClass))
	draw_text(32, 64, "Level : " + string(CharacterLevel))
	draw_text(32, 80, "Race : " + string(CharacterRace))
	draw_text(32, 96, "Alignment : " + string(CharacterAlignment))
	draw_text(32, 112, "Experience : " + string(CharacterExperience))
	draw_text(32, 128, "Background : " + string(CharacterBackground))

	draw_text(32, 144, "Dexterity : " + string(InitialDexterity))
	draw_text(256, 144, " +  " + string(DexterityAdded))

	draw_text(32, 160, "Constitution : " + string(InitialConstitution))
	draw_text(256, 160, " +  " + string(ConstitutionAdded))

	draw_text(32, 176, "Intelligence : " + string(InitialIntelligence))
	draw_text(256, 176, " +  " + string(IntelligenceAdded))

	draw_text(32, 192, "Wisdom : " + string(InitialWisdom))
	draw_text(256, 192, " +  " + string(WisdomAdded))

	draw_text(32, 208, "Charisma : " + string(InitialCharisma))
	draw_text(256, 208, " +  " + string(CharismaAdded))

	draw_text(32, 224, "Strength : " + string(InitialStrength))
	draw_text(256, 224, " +  " + string(StrengthAdded))

	draw_text(32, 240, "Speed : " + string(Speed))
	if Swim = true draw_text(32, 256, "Swim Speed : " + string(SwimSpeed)) 
	else draw_text(32, 256, "You cannot swim")
	draw_text(32, 288, "Size : " + string(Size))
	if Flight = true draw_text(32, 272, "Flight Speed : " + string(FlightSpeed)) 
	else draw_text(32, 272, "You cannot fly")
	draw_text(32, 288, "Size : " + string(Size))

	if ds_exists(TraitsList, ds_type_list) 
	{
		draw_text(32, 304, "Traits : ")
		var m
		for(m = 0; m < ds_list_size(TraitsList); m += 1)
		{
		    draw_text(32, 320 + (m * 16), ds_list_find_value(TraitsList, m))
		}
	}
	else draw_text(32, 304, "You have no traits")

	if ds_exists(LanguagesList, ds_type_list) 
	{
		draw_text(244, 304, "Languages Known: ")
		var m
		for(m = 0; m < ds_list_size(LanguagesList); m += 1)
		{
		    draw_text(244, 320 + (m * 16), ds_list_find_value(LanguagesList, m))
		}
	}
	else draw_text(196, 304, "You know no languages")

	if ds_exists(WeaponsList, ds_type_list) 
	{
		draw_text(416, 304, "Weapon Proficiencies: ")
		var m
		for(m = 0; m < ds_list_size(WeaponsList); m += 1)
		{
		    draw_text(416, 320 + (m * 16), ds_list_find_value(WeaponsList, m))
		}
	}
	else draw_text(400, 304, "No Weapon Proficiencies")

	if ds_exists(ArmorList, ds_type_list) 
	{
		draw_text(608, 304, "Armor Proficiencies: ")
		var m
		for(m = 0; m < ds_list_size(ArmorList); m += 1)
		{
		    draw_text(608, 320 + (m * 16), ds_list_find_value(ArmorList, m))
		}
	}
	else draw_text(608, 304, "No Armor Proficencies")

	if ds_exists(ToolsList, ds_type_list) 
	{
		draw_text(800, 304, "Tool Proficiencies: ")
		var m
		for(m = 0; m < ds_list_size(ToolsList); m += 1)
		{
		    draw_text(800, 320 + (m * 16), ds_list_find_value(ToolsList, m))
		}
	}
	else draw_text(796, 304, "No Tool Proficiencies")
}