switch(obj_player.CharacterClass)
{
	case "Barbarian":
	{
		
		if obj_equipment_selection.EquipChosen = 1
		{
			obj_equipment_selection.choice1 = "Two Handaxes"
			obj_equipment_selection.choice2 = "One Simple Weapon"
			
			weapon0.image_index = 3
		
			weapon1.image_index = 0
			weapon2.image_index = 1
			weapon3.image_index = 2
			weapon4.image_index = 3
			weapon5.image_index = 4
			weapon6.image_index = 5
		
			weapon7.image_index = 6
			weapon8.image_index = 7
			weapon9.image_index = 8
			weapon10.image_index = 9
			
			instance_destroy(weapon11)
			instance_destroy(weapon12)
			instance_destroy(weapon13)
			instance_destroy(weapon14)
			instance_destroy(weapon15)
			instance_destroy(weapon16)
			instance_destroy(weapon17)
			instance_destroy(weapon18)
		
		}
		
	break;
	}
}
