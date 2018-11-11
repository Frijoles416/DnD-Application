if room = rm_Deving_Buttons
{
	if keyboard_check_pressed(vk_alt) 
	{
		ObjectMenu = true
		make = true
	}
	else if keyboard_check_released(vk_alt) ObjectMenu = false
	
	if ObjectMenu && make
	{
		instance_create_depth(32, 32, 0, obj_language_selection)
		instance_create_depth(32, 64, 0, obj_skill_selection)
		instance_create_depth(32, 96, 0, obj_stat_menu)
		instance_create_depth(32, 128, 0, obj_tool_selection)
		instance_create_depth(32, 160, 0, obj_equipment_selection)
		instance_create_depth(32, 192, 0, obj_bard_spells)
		instance_create_depth(32, 224, 0, obj_wizard_spells)
		make = false
	}
	else if ObjectMenu = false
	{
		if instance_exists(obj_language_selection) instance_destroy(obj_language_selection)
		if instance_exists(obj_skill_selection) instance_destroy(obj_skill_selection)
		if instance_exists(obj_stat_menu) instance_destroy(obj_stat_menu)
		if instance_exists(obj_tool_selection) instance_destroy(obj_tool_selection)
		if instance_exists(obj_equipment_selection) instance_destroy(obj_equipment_selection)
		if instance_exists(obj_bard_spells) instance_destroy(obj_bard_spells)
		if instance_exists(obj_wizard_spells) instance_destroy(obj_wizard_spells)
	}
}