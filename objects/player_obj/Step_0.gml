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
	//Abrir baus, portas
	if canMove
	{
		if actions[13] and selectedWeapon != 0 and atk = 0 and playerhit = 0 
		{
			spd -= weapons[selectedWeapon][3]
			atk = 1
			sides += 1
			atktimer = weapons[selectedWeapon][4]
		}

		if atk = 1
		{
			atktimer -= 1

			if atktimer <= 0
			{
				spd = defaultSpd
				atktimer = weapons[selectedWeapon][4]
				atk = 0
			}
		}

		if atk = 0
		{
			if actions[9] and weapons[0][0] = true
			{
				selectedWeapon = 1 
				weapon_obj.visible = true
			}
			else if actions[10] and weapons[1][0] = true
			{
				selectedWeapon = 2
				weapon_obj.visible = true
			}
			else if actions[11] and weapons[2][0] = true
			{
				selectedWeapon = 3
				weapon_obj.visible = true
			}
			else if actions[12] and weapons[3][0] = true
			{
				selectedWeapon = 4
				weapon_obj.visible = true
			}
		}
   
		//Tomar Dano
		if playerhit = 1
		{
			hittimer -= 1
			sprite_index = Sprite20
			image_alpha = 0.5
		
			if hittimer <= 0
			{
				hittimer = hitvar
				playerhit = 0
			}
		}
		else
		{
			sprite_index = Sprite3
			image_alpha = 1
		}
	
		//Movimentação
		if (actions[3] && actions[0]) and !place_meeting(x+hb,y-hb , wall)
		{
			direction = 45
			speed = spd
		}
		else if (actions[3] && actions[2]) and !place_meeting(x+hb,y+hb , wall)
		{
			direction = 315
			speed = spd
		}
		else if (actions[1] && actions[0]) and !place_meeting(x-hb,y-hb , wall)
		{
			direction = 135
			speed = spd
		}
		else if (actions[1] && actions[2]) and !place_meeting(x-hb,y+hb , wall)
		{
			direction = 225
			speed = spd
		}
		else if (actions[3]) and !place_meeting(x+hb,y , wall)
		{
			direction = 0
			speed = spd
		}
		else if (actions[0]) and !place_meeting(x,y-hb , wall)
		{
			direction = 90
			speed = spd
		}
		else if (actions[1]) and !place_meeting(x-hb,y , wall)
		{
			direction = 180
			speed = spd
		}
		else if (actions[2]) and !place_meeting(x,y+hb , wall)
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
	if place_meeting(x,y,triggerArea_01_colision)
	{
		camera_obj.camera = 1
	}
	else if place_meeting(x,y,triggerArea_02_colision)
	{
		camera_obj.camera = 2
	}
	else if place_meeting(x,y,triggerArea_03_colision)
	{
		camera_obj.camera = 3
	}
	else
	{
		camera_obj.camera = 0
	}
	
	
	//Troca de lado de ataque do Player
	if player_obj.sides >= 2
	{
		player_obj.sides = 0
	}
	
	if atkWall = 0
	{
		dmg = weapons[selectedWeapon][2]
	}
	else if atkWall = 1
	{
		dmg = weapons[selectedWeapon][2] * 0.666
	}
	else if atkWall = 2
	{
		dmg = weapons[selectedWeapon][2] * 0.333
	}
	else 
	{
		dmg = 0
	}
}
//Morte
else
{
	deathTrigger = true
	life = 0
	aim_obj.image_alpha -= 0.025
	
	atk = 0
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
		camera_obj.smooth = 1
		aim_obj.image_alpha = 1
		
		//Tp nas fogueiras
		x = global.tpplacex
		y = global.tpplacey
	}
	
	//Reviver
	if deathTimer = 650
	{
		life = maxLife
		atk = 2
	}

	//Reviver // Começa caminhando meio lento
	if deathTimer < 650
	{
		spd += 0.02
		
		if spd >= defaultSpd
		{
			spd = defaultSpd
			atk = 0
			global.tp = 0
		}
	}
	
	if deathTimer < 450
	{
		deathTimer = deathTimerVar
		deathTrigger = false
	}
}





	


