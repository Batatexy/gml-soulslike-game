if object.atk = 1
{
	//Armas que rodam:
	if global.weapons[object.selectedWeapon].type = "swing"
	{
		x = object.x
		y = object.y
				
		if object.sides = 0
		{
			visible = true
			sprite_index = global.weapons[object.selectedWeapon].sprites[0]

			if object.atktimer >= global.weapons[object.selectedWeapon].atktimer - 1
			{
				image_angle = point_direction(x, y, mouse_x, mouse_y) - 90
				direction = point_direction(x, y, mouse_x, mouse_y) - 90
			}
			if object.atktimer >= 0
			{
				image_angle += global.weapons[object.selectedWeapon].angleIncrease
			}
		}
		if object.sides = 1//Armas que rodam:
		{
			visible = true
			sprite_index = global.weapons[object.selectedWeapon].sprites[1]

			if object.atktimer >= global.weapons[object.selectedWeapon].atktimer - 1
			{
				image_angle = point_direction(x, y, mouse_x, mouse_y) + 90
				direction = point_direction(x, y, mouse_x, mouse_y) + 90
			}
			if object.atktimer >= 0
			{
				image_angle -= global.weapons[object.selectedWeapon].angleIncrease
			}
		}
	}
		
		
		
		
		
		
		
	//Lanças
	else if global.weapons[object.selectedWeapon].type = "thrust"
	{
		//Determinar a direção da lança
		if object.atktimer >= global.weapons[object.selectedWeapon].atktimer - 1
		{
			x = object.x
			y = object.y
			image_angle = point_direction(x, y, mouse_x, mouse_y)
			direction = point_direction(x, y, mouse_x, mouse_y)
		}
		
		//Velocidade que vai pra frente
		if object.atktimer > 24
		{
			visible = true
			sprite_index = global.weapons[object.selectedWeapon].sprites[0]
			speed = 9
		}
		
		//Velocidade que vai pra trás
		if object.atktimer >= 0 and object.atktimer <= 24
		{
			visible = true
			sprite_index = global.weapons[object.selectedWeapon].sprites[0]
			direction = point_direction(x, y, object.x, object.y)
			speed = 1.8

			if place_meeting(x,y,object)
			{
				visible = false
				sprite_index = spr_hollow
			}
		}
		if object.atktimer <= 0
		{
			visible = false
			sprite_index = spr_hollow
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//Relou na parede, soma 1 no atkWall
	if place_meeting(x,y,obj_wall)
	{
		if (object.atkWallTrigger)
		{
			object.atkWallTrigger = false
			object.atkWall++
			object.atkWallTimer = object.atkWallTimerVar
		
			//Resetar o AtkWall se passar de 3
			if object.atkWall > 3
			{
				object.atkWall = 0
			}
		}
	
	}
	else
	{
		if object.atkWall > 0
		{
			object.atkWallTimer--
	
			if 	object.atkWallTimer < 0
			{
				object.atkWall = 0
				object.atkWallTrigger = true
				object.atkWallTimer = object.atkWallTimerVar
			}
		}
	}

	if 	(object.atkWallTimer = 0 or (object.atkWallTimer = object.atkWallTimerVar * 0.25) or
		(object.atkWallTimer = object.atkWallTimerVar * 0.5) )
	{
		object.atkWall--
	
		if object.atkWall = 0
		{
			object.atkWallTimer = object.atkWallTimerVar
		}
	}


	//Resetar o wall trigger quando nao estiver atacando
	if object.atk = 0
	{
		object.atkWallTrigger = true
	}
}
//Atk = 0
else
{
	instance_destroy()
}



