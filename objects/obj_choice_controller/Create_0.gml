switch(obj_player.CharacterClass)
{
	case "Barbarian":
	{
		weapon0 = instance_create_depth(room_width/2 - 320, 256, 0, obj_equipment_selection)
		obj_equipment_selection.choice1 = "A Greataxe"
		obj_equipment_selection.choice2 = "One Martial Melee Weapon"
		
		weapon1 = instance_create_depth(room_width/2, 128, 0, obj_equipment_selection)
		weapon2 = instance_create_depth(room_width/2, 192, 0, obj_equipment_selection)
		weapon3 = instance_create_depth(room_width/2, 256, 0, obj_equipment_selection)
		weapon4 = instance_create_depth(room_width/2, 320, 0, obj_equipment_selection)
		weapon5 = instance_create_depth(room_width/2, 384, 0, obj_equipment_selection)
		weapon6 = instance_create_depth(room_width/2, 448, 0, obj_equipment_selection)
		
		weapon7 = instance_create_depth(room_width/2 + 128, 128, 0, obj_equipment_selection)
		weapon8 = instance_create_depth(room_width/2 + 128, 192, 0, obj_equipment_selection)
		weapon9 = instance_create_depth(room_width/2 + 128, 256, 0, obj_equipment_selection)
		weapon10 = instance_create_depth(room_width/2 + 128, 320, 0, obj_equipment_selection)
		weapon11 = instance_create_depth(room_width/2 + 128, 384, 0, obj_equipment_selection)
		weapon12 = instance_create_depth(room_width/2 + 128, 448, 0, obj_equipment_selection)
		
		weapon13 = instance_create_depth(room_width/2 + 256, 128, 0, obj_equipment_selection)
		weapon14 = instance_create_depth(room_width/2 + 256, 192, 0, obj_equipment_selection)
		weapon15 = instance_create_depth(room_width/2 + 256, 256, 0, obj_equipment_selection)
		weapon16 = instance_create_depth(room_width/2 + 256, 320, 0, obj_equipment_selection)
		weapon17 = instance_create_depth(room_width/2 + 256, 384, 0, obj_equipment_selection)
		weapon18 = instance_create_depth(room_width/2 + 256, 448, 0, obj_equipment_selection)
		
		weapon0.image_index = 17
		
		weapon1.image_index = 14
		weapon2.image_index = 15
		weapon3.image_index = 16
		weapon4.image_index = 17
		weapon5.image_index = 18
		weapon6.image_index = 19
		
		weapon7.image_index = 20
		weapon8.image_index = 21
		weapon9.image_index = 22
		weapon10.image_index = 23
		weapon11.image_index = 24
		weapon12.image_index = 25
		
		weapon13.image_index = 26
		weapon14.image_index = 27
		weapon15.image_index = 28
		weapon16.image_index = 29
		weapon17.image_index = 30
		weapon18.image_index = 31
		
	break;
	}
}