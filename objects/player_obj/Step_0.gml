var right = keyboard_check(ord("D")) or keyboard_check(vk_right)
var left = keyboard_check(ord("A")) or keyboard_check(vk_left)
var down = keyboard_check(ord("S")) or keyboard_check(vk_down)
var up = keyboard_check(ord("W")) or keyboard_check(vk_up)

if life > 0
{
	if mouse_check_button_pressed(mb_left) and selectedWeapon != 0 and atk=0 and playerhit = 0 
	{
		spd -= spdatk
		atk = 1
		global.sides += 1
		player_obj.atktimer = atkvar
	}

	if player_obj.atk = 1
	{
	   player_obj.atktimer -= 1

		if player_obj.atktimer <= 0
		{
			spd = spdvar
			player_obj.atktimer = atkvar
			player_obj.atk = 0
		}
	}

   if atk = 0
   {
      if keyboard_check_pressed(ord("1")) and weapons[0][0] = true
      {
         selectedWeapon = 1
         global.dmg = 3
         spdatk = spdvar / 1.1
         atkvar = 30
         weapon_obj.visible = true
      }
      else if keyboard_check_pressed(ord("2")) and weapons[1][0] = true
      {
         selectedWeapon = 2
         global.dmg = 3
         spdatk = spdvar/1.1
         atkvar = 30
         weapon_obj.visible = true
      }
      else if keyboard_check_pressed(ord("3")) and weapons[2][0] = true
      {
         selectedWeapon = 3
         global.dmg = 0
         spdatk = spdvar/1
         atkvar = 100
         weapon_obj.visible = true
      }
      else if keyboard_check_pressed(ord("4")) and weapons[3][0] = true
      {
         selectedWeapon = 4
         global.dmg = 0
         spdatk = global.spdvar/1
         atkvar = 10
         weapon_obj.visible = true
      }
   }
   
   //Tomar Dano
	if playerhit = 1
	{
	   hittimer -= 1
	   sprite_index = Sprite20
	   image_alpha = 0.5

		if hittimer = 27
		{
		   life -= dmgreceive
		}
		
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

	//Troca de Camera em algumas areas
	if player_obj.visible = true
	{
		if place_meeting(x,y,triggerarea1)
		{
			global.camera = 1
		}
		else if place_meeting(x,y,triggerarea2)
		{
			global.camera = 2
		}
		else if place_meeting(x,y,triggerarea3)
		{
			global.camera = 3
		}
		else
		{
			global.camera = 0
		}
	}
   
	//Movimentação
	if (right) && (up) and !place_meeting(x+hb,y-hb , wall)
	{
		direction = 45
		speed = spd
	}
	else if (right) && (down) and !place_meeting(x+hb,y+hb , wall)
	{
		direction = 315
		speed = spd
	}
	else if (left && up) and !place_meeting(x-hb,y-hb , wall)
	{
		direction = 135
		speed = spd
	}
	else if (left && down) and !place_meeting(x-hb,y+hb , wall)
	{
		direction = 225
		speed = spd
	}
	else if right and !place_meeting(x+hb,y , wall)
	{
		direction = 0
		speed = spd
	}
	else if up and !place_meeting(x,y-hb , wall)
	{
		direction = 90
		speed = spd
	}
	else if left and !place_meeting(x-hb,y , wall)
	{
		direction = 180
		speed = spd
	}
	else if down and !place_meeting(x,y+hb , wall)
	{
		direction = 270
		speed = spd
	}
	else
	{
		speed = 0
	} 
}
//Morte
else
{
	atk = 0
	speed = 0
	spd = 0
	
	x = player_obj.x
	y = player_obj.y
	
	global.tp = 1
	deathTimer -= 1
	
	if deathTimer > 1000 and deathTimer < deathTimerVar
	{
		aim_obj.image_alpha -= 0.025
	}
	
	//You Died
	if deathTimer = 1000
	{
		instance_create_layer(x,y,"Hitboxes",blackbar)
		instance_create_layer(x,y,"Hud",youdied)
	}
	
	//Escurecer
	if deathTimer > 630 and deathTimer <= 850
	{
		
	}
	
	//Tp pra fogueira
	if deathTimer = 630
	{
		camera_obj.smooth = 1
		aim_obj.image_alpha = 1
		instance_destroy(blackbar)
		instance_destroy(youdied)
		
		//Tp nas fogueiras
		player_obj.x = global.tpplacex
		player_obj.y = global.tpplacey
	}

	//Reviver
	if deathTimer > 440 and deathTimer <= 530
	{
		player_obj.life = player_obj.maxLife
		player_obj.spd += 0.02
		player_obj.atk = 2

		if player_obj.spd > player_obj.spdvar
		{
			player_obj.spd = player_obj.spdvar
		}
	}
	if deathTimer = 435
	{
		player_obj.atk = 0
	}


	if deathTimer <= 300
	{
		global.tp = 0
		deathTimer = deathTimerVar
	}
}





	


