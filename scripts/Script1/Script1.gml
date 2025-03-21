function WeaponSwing(object, value, sprite)
{
	visible = true
	sprite_index = global.weapons[object.selectedWeapon].sprites[sprite]

	if object.atktimer >= global.weapons[object.selectedWeapon].atktimer - 2
	{
		var add = 0;
		
		if (object.object_index == obj_player)
		{
			add += (value * 270)
		}
		
		image_angle = object.directionAtk + add
		direction = object.directionAtk + add
	}
	if object.atktimer >= 0
	{
		image_angle += (value * global.weapons[object.selectedWeapon].angleIncrease)
	}
}