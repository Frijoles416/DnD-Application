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
	draw_text(200, 144, "((Base) " + string(InitialDexterity) +  " + (Race) " +  string(RaceDexterityAdded) +  " + (Class) " +  string(ClassDexterityAdded) +")")
	draw_text(488, 144, "Modifier : + " + string(DexterityModifier))

	draw_text(32, 160, "Constitution : " + string(ActualConstitution))
	draw_text(200, 160, "((Base) " + string(InitialConstitution) +  " + (Race) " +  string(RaceConstitutionAdded) +  " + (Class) " +  string(ClassConstitutionAdded) +")")
	draw_text(488, 160, "Modifier : + " + string(ConstitutionModifier))

	draw_text(32, 176, "Intelligence : " + string(ActualIntelligence))
	draw_text(200, 176, "((Base) " + string(InitialIntelligence) +  " + (Race) " +  string(RaceIntelligenceAdded) +  " + (Class) " +  string(ClassIntelligenceAdded) +")")
	draw_text(488, 176, "Modifier : + " + string(IntelligenceModifier))

	draw_text(32, 192, "Wisdom : " + string(ActualWisdom))
	draw_text(200, 192, "((Base) " + string(InitialWisdom) +  " + (Race) " +  string(RaceWisdomAdded) +  " + (Class) " +  string(ClassWisdomAdded) +")")
	draw_text(488, 192, "Modifier : + " + string(WisdomModifier))

	draw_text(32, 208, "Charisma : " + string(ActualCharisma))
	draw_text(200, 208, "((Base) " + string(InitialCharisma) +  " + (Race) " +  string(RaceCharismaAdded) +  " + (Class) " +  string(ClassCharismaAdded) +")")
	draw_text(488, 208, "Modifier : + " + string(CharismaModifier))

	draw_text(32, 224, "Strength : " + string(ActualStrength))
	draw_text(200, 224, "((Base) " + string(InitialStrength) +  " + (Race) " +  string(RaceStrengthAdded) +  " + (Class) " +  string(ClassStrengthAdded) +")")
	draw_text(488, 224, "Modifier : + " + string(StrengthModifier))
	
	draw_text(32, 240, "Speed : " + string(Speed))
	if Swim = true draw_text(32, 256, "Swim Speed : " + string(SwimSpeed)) 
	else draw_text(32, 256, "You cannot swim")
	draw_text(32, 288, "Size : " + string(Size))
	if Flight = true draw_text(32, 272, "Flight Speed : " + string(FlightSpeed)) 
	else draw_text(32, 272, "You cannot fly")
	draw_text(32, 288, "Size : " + string(Size))
	
	draw_set_halign(fa_center)
	draw_text(room_width/2, 320, "Added By Race")
	draw_set_halign(fa_left)
	draw_text(32, 336, "Stength : " + string(RaceStrengthAdded))
	draw_text(160, 336, "Dexterity : " + string(RaceDexterityAdded))
	draw_text(288, 336, "Constitution : " + string(RaceConstitutionAdded))
	draw_text(416, 336, "Intelligence : " + string(RaceIntelligenceAdded))
	draw_text(544, 336, "Wisdom : " + string(RaceWisdomAdded))
	draw_text(672, 336, "Charisma : " + string(RaceCharismaAdded))
	
	
	draw_text(32, 352, "Traits : ")
	var m
	for(m = 0; m < ds_list_size(RaceTraitsList); m += 1)
	{
		draw_text(32, 368 + (m * 16), ds_list_find_value(RaceTraitsList, m))
	}
	
	draw_text(244, 352, "Languages Known: ")
	var m
	for(m = 0; m < ds_list_size(RaceLanguagesList); m += 1)
	{
		draw_text(244, 368 + (m * 16), ds_list_find_value(RaceLanguagesList, m))
	}

	draw_text(416, 356, "Weapon Proficiencies: ")
	var m
	for(m = 0; m < ds_list_size(RaceWeaponsList); m += 1)
	{
		draw_text(416, 368 + (m * 16), ds_list_find_value(RaceWeaponsList, m))
	}

	draw_text(608, 356, "Armor Proficiencies: ")
	var m
	for(m = 0; m < ds_list_size(RaceArmorList); m += 1)
	{
		draw_text(608, 368 + (m * 16), ds_list_find_value(RaceArmorList, m))
	}

	draw_text(800, 356, "Tool Proficiencies: ")
	var m
	for(m = 0; m < ds_list_size(RaceToolsList); m += 1)
	{
		draw_text(800, 368 + (m * 16), ds_list_find_value(RaceToolsList, m))
	}
	
	draw_text(992, 356, "Attacks: ")
	var m
	for(m = 0; m < ds_list_size(RaceAttacks); m += 1)
	{
		draw_text(992, 368 + (m * 16), ds_list_find_value(RaceAttacks, m))
	}
	
	draw_text(1184, 356, "Cantrips: ")
	var m
	for(m = 0; m < ds_list_size(RaceCantrips); m += 1)
	{
		draw_text(1184, 368 + (m * 16), ds_list_find_value(RaceCantrips, m))
	}
	
	draw_set_halign(fa_center)
	draw_text(room_width/2, 464, "Added By Class")
	draw_set_halign(fa_left)
	draw_text(32, 480, "Stength : " + string(ClassStrengthAdded))
	draw_text(160, 480, "Dexterity : " + string(ClassDexterityAdded))
	draw_text(288, 480, "Constitution : " + string(ClassConstitutionAdded))
	draw_text(416, 480, "Intelligence : " + string(ClassIntelligenceAdded))
	draw_text(544, 480, "Wisdom : " + string(ClassWisdomAdded))
	draw_text(672, 480, "Charisma : " + string(ClassCharismaAdded))
	
	
	draw_text(32, 496, "Traits : ")
	var m
	for(m = 0; m < ds_list_size(ClassTraitsList); m += 1)
	{
		draw_text(32, 512 + (m * 16), ds_list_find_value(ClassTraitsList, m))
	}
	
	draw_text(244, 496, "Equipment: ")
	var m
	for(m = 0; m < ds_list_size(ClassInventoryList); m += 1)
	{
		draw_text(244, 512 + (m * 16), ds_list_find_value(ClassInventoryList, m))
	}

	draw_text(416, 496, "Weapon Proficiencies: ")
	var m
	for(m = 0; m < ds_list_size(ClassWeaponsList); m += 1)
	{
		draw_text(416, 512 + (m * 16), ds_list_find_value(ClassWeaponsList, m))
	}

	draw_text(608, 496, "Armor Proficiencies: ")
	var m
	for(m = 0; m < ds_list_size(ClassArmorList); m += 1)
	{
		draw_text(608, 512 + (m * 16), ds_list_find_value(ClassArmorList, m))
	}

	draw_text(800, 496, "Tool Proficiencies: ")
	var m
	for(m = 0; m < ds_list_size(ClassToolsList); m += 1)
	{
		draw_text(800, 512 + (m * 16), ds_list_find_value(ClassToolsList, m))
	}
	
	draw_text(992, 496, "Attacks: ")
	var m
	for(m = 0; m < ds_list_size(ClassAttacks); m += 1)
	{
		draw_text(992, 512 + (m * 16), ds_list_find_value(ClassAttacks, m))
	}
	
	draw_text(1120, 496, "Cantrips: ")
	var m
	for(m = 0; m < ds_list_size(ClassCantrips); m += 1)
	{
		draw_text(1120, 512 + (m * 16), ds_list_find_value(ClassCantrips, m))
	}
	
	draw_set_halign(fa_center)
	draw_text(room_width/8, 576, "Added By Background")
	draw_set_halign(fa_left)
	
	draw_text(32, 592, "Languages : ")
	var m
	for(m = 0; m < ds_list_size(BackgroundLanguagesList); m += 1)
	{
		draw_text(32, 608 + (m * 16), ds_list_find_value(BackgroundLanguagesList, m))
	}
	
	draw_text(244, 592, "Equipment: ")
	var m
	for(m = 0; m < ds_list_size(BackgroundInventoryList); m += 1)
	{
		draw_text(244, 608 + (m * 16), ds_list_find_value(BackgroundInventoryList, m))
	}
	
	draw_text(room_width/2 , 32, "Acrobatics + " + string(DexterityModifier))
	draw_text(room_width/2 , 48, "Animal Handling + " + string(WisdomModifier))
	draw_text(room_width/2, 64, "Arcana + " + string(IntelligenceModifier))
	draw_text(room_width/2, 80, "Athletics + " + string(StrengthModifier))
	draw_text(room_width/2, 96, "Deception + " + string(CharismaModifier))
	draw_text(room_width/2, 112, "History + " + string(IntelligenceModifier))
	draw_text(room_width/2, 128, "Insight + " + string(WisdomModifier))
	draw_text(room_width/2, 144, "Intimidation + " + string(CharismaModifier))
	draw_text(room_width/2, 160, "Investigation + " + string(IntelligenceModifier))
	draw_text(room_width/2, 176, "Medicine + " + string(WisdomModifier))
	draw_text(room_width/2, 192, "Nature + " + string(IntelligenceModifier))
	draw_text(room_width/2, 208, "Perception + " + string(WisdomModifier))
	draw_text(room_width/2, 224, "Performance + " + string(CharismaModifier))
	draw_text(room_width/2, 240, "Persuasion + " + string(CharismaModifier))
	draw_text(room_width/2, 256, "Religion + " + string(IntelligenceModifier))
	draw_text(room_width/2, 272, "Sleight of Hand + " + string(DexterityModifier))
	draw_text(room_width/2, 288, "Stealth + " + string(DexterityModifier))
	draw_text(room_width/2, 304, "Survival + " + string(WisdomModifier))
	
	draw_text(room_width/2 + 192, 32, "Saving Throws")
	draw_text(room_width/2 + 192, 32 + 32, "Strength + " + string(StrengthModifier))
	draw_text(room_width/2 + 192, 48 + 32, "Dexterity + " + string(DexterityModifier))
	draw_text(room_width/2 + 192, 64 + 32, "Constitution + " + string(ConstitutionModifier))
	draw_text(room_width/2 + 192, 80 + 32, "Intelligence + " + string(IntelligenceModifier))
	draw_text(room_width/2 + 192, 96 + 32, "Wisdom + " + string(WisdomModifier))
	draw_text(room_width/2 + 192, 112 + 32, "Charisma + " + string(CharismaModifier))
	
}



/*
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