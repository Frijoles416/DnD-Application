draw_set_color(c_lime)
//draw_text_ext(x , y , info, 16, (room_width - 224))
if height > 0 && !race_info
{
	draw_set_color(c_black)
	draw_rectangle(128 + 32, room_height - 127, room_width, room_height, false)
	draw_rectangle(128 + 32, 0, room_width, 31, false)
}

//Deving
draw_text(room_width - 32, 16, global.TotalSelection)
if instance_exists(obj_confirm_button)
draw_text(room_width - 32, 32, obj_confirm_button.Total)


///Draw character information

draw_set_font(fnt_1)
draw_set_halign(fa_left)

if room = rm_character_creation
{
	draw_set_color(c_lime)
	draw_text(x + 32, y + 32, "Name : "  + string(obj_player.CharacterName))
	draw_text(x + 32, y + 48, "Class : " + string(obj_player.CharacterClass))
	draw_text(x + 32, y + 64, "Level : " + string(obj_player.CharacterLevel))
	draw_text(x + 32, y + 80, "Race : " + string(obj_player.CharacterRace))
	draw_text(x + 32, y + 96, "Alignment : " + string(obj_player.CharacterAlignment))
	draw_text(x + 32, y + 112, "Experience : " + string(obj_player.CharacterExperience))
	draw_text(x + 32, y + 128, "Background : " + string(obj_player.CharacterBackground))
	
	draw_text(x + 32, y + 144, "Dexterity : " + string(obj_player.ActualDexterity))
	draw_text(x + 200, y + 144, "((Base) " + string(obj_player.InitialDexterity) +  " + (Race) " +  string(obj_player.RaceDexterityAdded) +  " + (Class) " +  string(obj_player.ClassDexterityAdded) +")")
	draw_text(x + 488, y + 144, "Modifier : + " + string(obj_player.DexterityModifier))

	draw_text(x + 32, y + 160, "Constitution : " + string(obj_player.ActualConstitution))
	draw_text(x + 200, y + 160, "((Base) " + string(obj_player.InitialConstitution) +  " + (Race) " +  string(obj_player.RaceConstitutionAdded) +  " + (Class) " +  string(obj_player.ClassConstitutionAdded) +")")
	draw_text(x + 488, y + 160, "Modifier : + " + string(obj_player.ConstitutionModifier))

	draw_text(x + 32, y + 176, "Intelligence : " + string(obj_player.ActualIntelligence))
	draw_text(x + 200, y + 176, "((Base) " + string(obj_player.InitialIntelligence) +  " + (Race) " +  string(obj_player.RaceIntelligenceAdded) +  " + (Class) " +  string(obj_player.ClassIntelligenceAdded) +")")
	draw_text(x + 488, y + 176, "Modifier : + " + string(obj_player.IntelligenceModifier))

	draw_text(x + 32, y + 192, "Wisdom : " + string(obj_player.ActualWisdom))
	draw_text(x + 200, y + 192, "((Base) " + string(obj_player.InitialWisdom) +  " + (Race) " +  string(obj_player.RaceWisdomAdded) +  " + (Class) " +  string(obj_player.ClassWisdomAdded) +")")
	draw_text(x + 488, y + 192, "Modifier : + " + string(obj_player.WisdomModifier))

	draw_text(x + 32, y + 208, "Charisma : " + string(obj_player.ActualCharisma))
	draw_text(x + 200, y + 208, "((Base) " + string(obj_player.InitialCharisma) +  " + (Race) " +  string(obj_player.RaceCharismaAdded) +  " + (Class) " +  string(obj_player.ClassCharismaAdded) +")")
	draw_text(x + 488, y + 208, "Modifier : + " + string(obj_player.CharismaModifier))

	draw_text(x + 32, y + 224, "Strength : " + string(obj_player.ActualStrength))
	draw_text(x + 200, y + 224, "((Base) " + string(obj_player.InitialStrength) +  " + (Race) " +  string(obj_player.RaceStrengthAdded) +  " + (Class) " +  string(obj_player.ClassStrengthAdded) +")")
	draw_text(x + 488, y + 224, "Modifier : + " + string(obj_player.StrengthModifier))
	
	draw_text(x + 32, y + 240, "Speed : " + string(obj_player.Speed))
	if obj_player.Swim = true draw_text(x + 32, 256, "Swim Speed : " + string(obj_player.SwimSpeed)) 
	else draw_text(x + 32, y + 256, "You cannot swim")
	if obj_player.Flight = true draw_text(32, 272, "Flight Speed : " + string(obj_player.FlightSpeed)) 
	else draw_text(x + 32, y + 272, "You cannot fly")
	draw_text(x + 32, y + 288, "Size : " + string(obj_player.Size))
	
	draw_text(x + 32, y + 320, "Saving Throws")
	draw_text(x + 32, y + 336, "Strength + " + string(obj_player.StrengthModifier))
	draw_text(x + 32, y + 352, "Dexterity + " + string(obj_player.DexterityModifier))
	draw_text(x + 32, y + 368, "Constitution + " + string(obj_player.ConstitutionModifier))
	draw_text(x + 32, y + 384, "Intelligence + " + string(obj_player.IntelligenceModifier))
	draw_text(x + 32, y + 400, "Wisdom + " + string(obj_player.WisdomModifier))
	draw_text(x + 32, y + 416, "Charisma + " + string(obj_player.CharismaModifier))
	
	draw_text(x + 32, y + 448, "Acrobatics + " + string(obj_player.DexterityModifier))
	draw_text(x + 32, y + 464, "Animal Handling + " + string(obj_player.WisdomModifier))
	draw_text(x + 32, y + 480, "Arcana + " + string(obj_player.IntelligenceModifier))
	draw_text(x + 32, y + 496, "Athletics + " + string(obj_player.StrengthModifier))
	draw_text(x + 32, y + 512, "Deception + " + string(obj_player.CharismaModifier))
	draw_text(x + 32, y + 528, "History + " + string(obj_player.IntelligenceModifier))
	draw_text(x + 32, y + 544, "Insight + " + string(obj_player.WisdomModifier))
	draw_text(x + 32, y + 560, "Intimidation + " + string(obj_player.CharismaModifier))
	draw_text(x + 32, y + 576, "Investigation + " + string(obj_player.IntelligenceModifier))
	draw_text(x + 32, y + 592, "Medicine + " + string(obj_player.WisdomModifier))
	draw_text(x + 32, y + 608, "Nature + " + string(obj_player.IntelligenceModifier))
	draw_text(x + 32, y + 624, "Perception + " + string(obj_player.WisdomModifier))
	draw_text(x + 32, y + 640, "Performance + " + string(obj_player.CharismaModifier))
	draw_text(x + 32, y + 656, "Persuasion + " + string(obj_player.CharismaModifier))
	draw_text(x + 32, y + 672, "Religion + " + string(obj_player.IntelligenceModifier))
	draw_text(x + 32, y + 688, "Sleight of Hand + " + string(obj_player.DexterityModifier))
	draw_text(x + 32, y + 704, "Stealth + " + string(obj_player.DexterityModifier))
	draw_text(x + 32, y + 720, "Survival + " + string(obj_player.WisdomModifier))
	
	draw_text(x + 32, y + 768, "Personality Traits : ")
	draw_text_ext(x + 32, y + 784, obj_player.PersonalityTraits, 16, 512)
	
	draw_text(x + room_width/2, y + 32, "Added By Race")
	draw_text(x + room_width/2, y + 48, "Traits : ")
	var m
	for(m = 0; m < ds_list_size(obj_player.RaceTraitsList); m += 1)
	{
		draw_text(x + room_width/2, y + 64 + (m * 16), ds_list_find_value(obj_player.RaceTraitsList, m))
	}
	
	draw_text(x + room_width/2, y + 192, "Languages Known : ")
	var m
	for(m = 0; m < ds_list_size(obj_player.RaceLanguagesList); m += 1)
	{
		draw_text(x + room_width/2, y + 208 + (m * 16), ds_list_find_value(obj_player.RaceLanguagesList, m))
	}

	draw_text(x + room_width/2, y + 384, "Weapon Proficiencies : ")
	var m
	for(m = 0; m < ds_list_size(obj_player.RaceWeaponsList); m += 1)
	{
		draw_text(x + 416, y + 400 + (m * 16), ds_list_find_value(obj_player.RaceWeaponsList, m))
	}

	draw_text(x + room_width/2, y + 528, "Armor Proficiencies : ")
	var m
	for(m = 0; m < ds_list_size(obj_player.RaceArmorList); m += 1)
	{
		draw_text(x + 608, y + 544 + (m * 16), ds_list_find_value(obj_player.RaceArmorList, m))
	}

	draw_text(x + room_width/2, y + 672, "Tool Proficiencies: ")
	var m
	for(m = 0; m < ds_list_size(obj_player.RaceToolsList); m += 1)
	{
		draw_text(x + 800, y + 688 + (m * 16), ds_list_find_value(obj_player.RaceToolsList, m))
	}
	
	draw_text(x + room_width/2, y + 816, "Attacks: ")
	var m
	for(m = 0; m < ds_list_size(obj_player.RaceAttacks); m += 1)
	{
		draw_text(x + 992, y + 832 + (m * 16), ds_list_find_value(obj_player.RaceAttacks, m))
	}
	
	draw_text(x + room_width/2, y + 960, "Cantrips: ")
	var m
	for(m = 0; m < ds_list_size(obj_player.RaceCantrips); m += 1)
	{
		draw_text(x + 1184, y + 976 + (m * 16), ds_list_find_value(obj_player.RaceCantrips, m))
	}
	
	draw_text(x + room_width/1.50, y + 32, "Added By Class")
	draw_text(x + room_width/1.50, y + 48, "Traits : ")
	var m
	for(m = 0; m < ds_list_size(obj_player.ClassTraitsList); m += 1)
	{
		draw_text(x + room_width/1.50, y + 64 + (m * 16), ds_list_find_value(obj_player.ClassTraitsList, m))
	}
	
	draw_text(x + room_width/1.50, y + 192, "Equipment: ")
	var m
	for(m = 0; m < ds_list_size(obj_player.ClassInventoryList); m += 1)
	{
		draw_text(x + room_width/1.50, y + 208 + (m * 16), ds_list_find_value(obj_player.ClassInventoryList, m))
	}

	draw_text(x + room_width/1.50, y + 384, "Weapon Proficiencies: ")
	var m
	for(m = 0; m < ds_list_size(obj_player.ClassWeaponsList); m += 1)
	{
		draw_text(x + room_width/1.50, y + 400 + (m * 16), ds_list_find_value(obj_player.ClassWeaponsList, m))
	}

	draw_text(x + room_width/1.50, y + 528, "Armor Proficiencies: ")
	var m
	for(m = 0; m < ds_list_size(obj_player.ClassArmorList); m += 1)
	{
		draw_text(x + room_width/1.50, y + 544 + (m * 16), ds_list_find_value(obj_player.ClassArmorList, m))
	}

	draw_text(x + room_width/1.50, y + 672, "Tool Proficiencies: ")
	var m
	for(m = 0; m < ds_list_size(obj_player.ClassToolsList); m += 1)
	{
		draw_text(x + room_width/1.50, y + 688 + (m * 16), ds_list_find_value(obj_player.ClassToolsList, m))
	}
	
	draw_text(x + room_width/1.50, y + 816, "Attacks: ")
	var m
	for(m = 0; m < ds_list_size(obj_player.ClassAttacks); m += 1)
	{
		draw_text(x + room_width/1.75, y + 832 + (m * 16), ds_list_find_value(obj_player.ClassAttacks, m))
	}
	
	draw_text(x + room_width/1.50, y + 960, "Cantrips: ")
	var m
	for(m = 0; m < ds_list_size(obj_player.ClassCantrips); m += 1)
	{
		draw_text(x + room_width/1.75, y + 976 + (m * 16), ds_list_find_value(obj_player.ClassCantrips, m))
	}
	

	draw_text(x + room_width/1.25, y + 32, "Added By Background")
	draw_text(x + room_width/1.25, y + 48, "Languages : ")
	var m
	for(m = 0; m < ds_list_size(obj_player.BackgroundLanguagesList); m += 1)
	{
		draw_text(x + room_width/1.25, y + 64 + (m * 16), ds_list_find_value(obj_player.BackgroundLanguagesList, m))
	}
	
	draw_text(x + room_width/1.25, y + 192, "Equipment: ")
	var m
	for(m = 0; m < ds_list_size(obj_player.BackgroundInventoryList); m += 1)
	{
		draw_text(x + room_width/1.25, y + 208 + (m * 16), ds_list_find_value(obj_player.BackgroundInventoryList, m))
	}
	
	draw_text(x + room_width/1.25, y + 448, "Background Traits : ")
	draw_text_ext(x + room_width/1.25, y + 464, obj_player.BackgroundFeatures, 16, 256)
	
	
	draw_set_color(c_black)
	draw_rectangle(0, room_height - 96, room_width, room_height, false)
	
}


if room = rm_race_selection
{
	
	draw_set_color(c_black)
	draw_rectangle(2, room_height - 192, room_width - 256 - 128, room_height - 16, false)
	
	
	draw_set_color(c_lime)
	draw_text_ext(x + 8 , y , info, 16, room_width - 256 - 136)
	
	draw_set_color(c_white)
	draw_rectangle(2, room_height - 192, room_width - 256 - 128, room_height - 16, true)
	draw_set_color(c_white)
	draw_rectangle(3, room_height - 191, room_width - 256 - 127, room_height - 15, true)
	
	draw_set_color(c_black)
	draw_rectangle(0, 0, room_width - 256 - 128, room_height - 193, false)
	draw_set_color(c_black)
	draw_rectangle(0, room_height - 14, room_width - 256 - 128, room_height, false)
}
