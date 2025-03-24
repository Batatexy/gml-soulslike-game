if !global.pause
{

	if object.atk = 1 and instance_exists(object)
	{
		//Armas que rodam:
		if global.weapons[object.selectedWeapon].type = "swing"
		{
			x = object.x
			y = object.y
				
			if object.sides = 0
			{
				WeaponSwing(object, 1, 0)
			}
			if object.sides = 1//Armas que rodam:
			{
				WeaponSwing(object, -1, 1)
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
			object.atkWallTimer = object.atkWallTimerVar
		
			if (object.atkWallTrigger)
			{
				object.atkWallTrigger = false
				object.atkWall++
					
				//Resetar o AtkWall se passar de 3
				if object.atkWall > 3
				{
					//Cansar o personagem no 4º hit na parede
					object.atktimer = global.weapons[object.selectedWeapon].atktimer * 2
					object.atkWall = 0
					instance_destroy()
				}
			}
	
		}
	}
	//Atk = 0
	else
	{
		instance_destroy()
	}

}

