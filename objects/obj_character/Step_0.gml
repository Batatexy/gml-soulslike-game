//Troca de lado de ataque do Player
if life > 0
{
	if sides >= 2
	{
		sides = 0
	}
	
	if atkWall = 0
	{
		dmg = global.weapons[0].dmg
	}
	else if atkWall = 1
	{
		dmg = global.weapons[selectedWeapon].dmg * 0.666
	}
	else if atkWall = 2
	{
		dmg = global.weapons[selectedWeapon].dmg * 0.333
	}
	else 
	{
		dmg = 0
	}
}
