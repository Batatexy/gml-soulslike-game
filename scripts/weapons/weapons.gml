function WeaponSwing(object, value, sprite)
{
	visible = true
	sprite_index = global.weapons[object.selectedWeapon].sprites[sprite]

	if object.atktimer >= global.weapons[object.selectedWeapon].atktimer - 2
	{
		image_angle = object.directionAtk + (value * 270)
		direction = object.directionAtk + (value * 270)
	}
	if object.atktimer >= 0
	{
		image_angle += (value * global.weapons[object.selectedWeapon].angleIncrease)
	}
}