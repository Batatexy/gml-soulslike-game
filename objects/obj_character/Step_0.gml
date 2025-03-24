if !global.pause
{
	if instance_exists(obj_player) and object_index != obj_player
	{
		directionAtk = point_direction(x,y,obj_player.x,obj_player.y)
	}
	

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
	
	
	
	
	
	
	
		if atk
		{
			atktimer -= 1
			spd = defaultSpd * global.weapons[selectedWeapon].spdatk

			if atktimer <= 0
			{
				atk = false
				spd = defaultSpd
				atktimer = global.weapons[selectedWeapon].atktimer
			}
		}
		else
		{
			atktimer = global.weapons[selectedWeapon].atktimer
			
			if !hit
			{
				spd = defaultSpd
			}
			
			//Resetar o wall trigger quando nao estiver atacando
			atkWallTrigger = true
		}
	
	
	
		if hit
		{
			hittimer -= 1
			spd /= 1.05
			image_index = 1

			if hittimer <= 0
			{
				image_index = 0
				hittimer = hitvar
				hit = false
			}
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