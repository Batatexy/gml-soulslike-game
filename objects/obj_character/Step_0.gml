if !global.pause
{

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
	
	
	
	
	
	
	
	
	
	
	
	
	
		if atkWall > 0
		{
			atkWallTimer--
	
			if 	atkWallTimer < 0
			{
				atkWall = 0
				atkWallTrigger = true
				atkWallTimer = atkWallTimerVar
			}
		}
		
		//Ir diminuindo atkWall conforme o timer vai diminuindo
		if 	(atkWallTimer = 0 or (atkWallTimer = atkWallTimerVar * 0.25) or
			(atkWallTimer = atkWallTimerVar * 0.5) )
		{
			atkWall--
	
			if atkWall <= 0
			{
				atkWallTimer = atkWallTimerVar
			}
		}

		//Resetar o wall trigger quando nao estiver atacando
		if atk = 0
		{
			atkWallTrigger = true
		}
		
	}
	else
	{
		if self.object_index != obj_player
		{
			spawnnumber -= 1
			global.deadEnemys[array_length(global.deadEnemys)] = self
	
			//Fazer animação de morrer antes de ser destruido
			instance_destroy()
		}
	}
}