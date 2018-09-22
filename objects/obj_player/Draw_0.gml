///Draw character information

draw_set_font(fnt_1)
draw_set_halign(fa_left)
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

	draw_text(32, 144, "Dexterity : " + string(ActualDexterity))
	draw_text(200, 144, "(" + string(InitialDexterity) +  " + " +  string(DexterityAdded) + ")")
	draw_text(296, 144, "Modifier : + " + string(DexterityModifier))

	draw_text(32, 160, "Constitution : " + string(ActualConstitution))
	draw_text(200, 160, "(" + string(InitialConstitution) +  " + " +  string(ConstitutionAdded) + ")")
	draw_text(296, 160, "Modifier : + " + string(ConstitutionModifier))

	draw_text(32, 176, "Intelligence : " + string(ActualIntelligence))
	draw_text(200, 176, "(" + string(InitialIntelligence) +  " + " +  string(IntelligenceAdded) + ")")
	draw_text(296, 176, "Modifier : + " + string(IntelligenceModifier))

	draw_text(32, 192, "Wisdom : " + string(ActualWisdom))
	draw_text(200, 192, "(" + string(InitialWisdom) +  " + " +  string(WisdomAdded) + ")")
	draw_text(296, 192, "Modifier : + " + string(WisdomModifier))

	draw_text(32, 208, "Charisma : " + string(ActualCharisma))
	draw_text(200, 208, "(" + string(InitialCharisma) +  " + " +  string(CharismaAdded) + ")")
	draw_text(296, 208, "Modifier : + " + string(CharismaModifier))

	draw_text(32, 224, "Strength : " + string(ActualStrength))
	draw_text(200, 224, "(" + string(InitialStrength) +  " + " +  string(StrengthAdded) + ")")
	draw_text(296, 224, "Modifier : + " + string(StrengthModifier))

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

	if ds_exists(LanguagesList, ds_type_list) 
	{
		draw_text(244, 304, "Languages Known: ")
		var m
		for(m = 0; m < ds_list_size(LanguagesList); m += 1)
		{
		    draw_text(244, 320 + (m * 16), ds_list_find_value(LanguagesList, m))
		}
	}

	if ds_exists(WeaponsList, ds_type_list) 
	{
		draw_text(416, 304, "Weapon Proficiencies: ")
		var m
		for(m = 0; m < ds_list_size(WeaponsList); m += 1)
		{
		    draw_text(416, 320 + (m * 16), ds_list_find_value(WeaponsList, m))
		}
	}

	if ds_exists(ArmorList, ds_type_list) 
	{
		draw_text(608, 304, "Armor Proficiencies: ")
		var m
		for(m = 0; m < ds_list_size(ArmorList); m += 1)
		{
		    draw_text(608, 320 + (m * 16), ds_list_find_value(ArmorList, m))
		}
	}

	if ds_exists(ToolsList, ds_type_list) 
	{
		draw_text(800, 304, "Tool Proficiencies: ")
		var m
		for(m = 0; m < ds_list_size(ToolsList); m += 1)
		{
		    draw_text(800, 320 + (m * 16), ds_list_find_value(ToolsList, m))
		}
	}
}