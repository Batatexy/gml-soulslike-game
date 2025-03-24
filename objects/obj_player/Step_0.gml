event_inherited();



if !global.pause
{

	//Comandos
	for (var i = 0; i < array_length(buttons); i++)
	{
		//Mouse:
		if buttons[i][0] = mb_left or buttons[i][0] = mb_right
		{
			if buttons[i][1] = ""
			{
				actions[i] = mouse_check_button(buttons[i][0])
			}
			else if buttons[i][1] = "pressed"
			{
				actions[i] = mouse_check_button_pressed(buttons[i][0])
			}
		}
		//Teclado
		else
		{
			if buttons[i][1] = ""
			{
				actions[i] = keyboard_check(buttons[i][0])
			}
			else if buttons[i][1] = "pressed"
			{
				actions[i] = keyboard_check_pressed(buttons[i][0])
			}
		}
	}

	if life > 0
	{
		//Direção do Ataque é sempre em direção ao Mouse
		directionAtk = point_direction(x, y, mouse_x, mouse_y)
	
		//Abrir baus, portas
		if canMove
		{
			if actions[13] and selectedWeapon != 0 and !atk and !hit
			{
				atk = true
				sides += 1
				
				var weapon = instance_create_layer(x, y, "PlayerWeapons", obj_weaponPlayer)
				weapon.object = self
			}

			

			if !atk
			{
				if actions[9] and global.weapons[0].unlocked = true
				{
					selectedWeapon = 1 
				}
				else if actions[10] and global.weapons[1].unlocked = true
				{
					selectedWeapon = 2
				}
				else if actions[11] and global.weapons[2].unlocked = true
				{
					selectedWeapon = 3
				}
				else if actions[12] and global.weapons[3].unlocked = true
				{
					selectedWeapon = 4
				}
			}
			
			
			
			if place_meeting(x,y,obj_weaponEnemy) and !hit
			{
				life -= obj_weaponEnemy.object.dmg
				hit = true
			}
			
			
			
		
			//Tomar Dano
			if hit
			{
				image_index = 1
				image_alpha = 0.5
			}
			else
			{
				image_index = 0
				image_alpha = 1
			}
	
			//Movimentação
			if (actions[3] && actions[0]) and !place_meeting(x+hb,y-hb , obj_wall)
			{
				direction = 45
				speed = spd
			}
			else if (actions[3] && actions[2]) and !place_meeting(x+hb,y+hb , obj_wall)
			{
				direction = 315
				speed = spd
			}
			else if (actions[1] && actions[0]) and !place_meeting(x-hb,y-hb , obj_wall)
			{
				direction = 135
				speed = spd
			}
			else if (actions[1] && actions[2]) and !place_meeting(x-hb,y+hb , obj_wall)
			{
				direction = 225
				speed = spd
			}
			else if (actions[3]) and !place_meeting(x+hb,y , obj_wall)
			{
				direction = 0
				speed = spd
			}
			else if (actions[0]) and !place_meeting(x,y-hb , obj_wall)
			{
				direction = 90
				speed = spd
			}
			else if (actions[1]) and !place_meeting(x-hb,y , obj_wall)
			{
				direction = 180
				speed = spd
			}
			else if (actions[2]) and !place_meeting(x,y+hb , obj_wall)
			{
				direction = 270
				speed = spd
			}
			else
			{
				speed = 0
			} 
		}
		else
		{
			speed = 0
		}
	
	

		//Troca de Camera em algumas areas
		if place_meeting(x,y,obj_triggerEnemysArea_01)
		{
			obj_camera.camera = 1
		}
		else if place_meeting(x,y,obj_triggerEnemysArea_02)
		{
			obj_camera.camera = 2
		}
		else if place_meeting(x,y,obj_triggerEnemysArea_03)
		{
			obj_camera.camera = 3
		}
		else
		{
			obj_camera.camera = 0
		}
	
	
	
	}
	//Morte
	else
	{
		deathTrigger = true
		life = 0
		obj_cursor.image_alpha -= 0.025
	
		atk = false
		speed = 0
		spd = 0
		global.tp = 1
	}


	if deathTrigger
	{
		deathTimer--
	
		//Tp pra fogueira
		if deathTimer = 655
		{
			obj_camera.smooth = 1
			obj_cursor.image_alpha = 1
		
			//Tp nas fogueiras
			x = global.tpplacex
			y = global.tpplacey
		}
	
		//Reviver
		if deathTimer = 650
		{
			life = maxLife
			//atk = 2
		}

		//Reviver // Começa caminhando meio lento
		if deathTimer < 650
		{
			spd += 0.02
		
			if spd >= defaultSpd
			{
				spd = defaultSpd
				atk = false
				global.tp = 0
			}
		}
	
		if deathTimer < 450
		{
			deathTimer = deathTimerVar
			deathTrigger = false
		}
	}
}




	


