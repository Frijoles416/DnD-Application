if mouse_check_button_released(mb_left) && place_meeting(x, y, obj_player) && global.TotalSelection = Total
{
	global.BaseSelection = 0
	global.VariantSelection = 0
	global.LanguageSelection = 0
	global.WeaponsSelection = 0
	global.ToolSelection = 0
	global.SkillSelection = 0
	global.StatSelection = 0
	global.SpellSelection = 0
	
	obj_info.x = 0
	obj_info.y = 0
			
	room_goto(rm_character_creation)
}