if !global.pause
{

	if obj_player.life > 0
	{
		move_towards_point(obj_player.x,obj_player.y,spd)
	}
	else
	{
		move_towards_point(0,0,0)
		atkmode = 0
		image_index = 0
	}

	if atkmode = 0//Modo de ataque OFF
	{
	sprite_index = spr_chest
		if open = 0 and place_meeting(x,y,obj_player) and obj_player.actions[4]
		{
			// Abriu o bau kkkkkkkkk
			obj_player.canMove = false
			open = 1
			audio_play_sound(opensound,0,false)
		}
	
		if open = 1
		{
			if spdtimer <= 0
			{
				image_index = 2
			}
		
			if spdtimer >- 140
			{
				spdtimer -= 1
			}
			else
			{
				spdtimer = 60
				image_index = 0
				open = 0
				obj_player.life -= 50
				atksoundon = 1	
				obj_player.canMove = true
			}	
		}
	}
	else//Modo de ataque ON
	{
		image_index = 2
		spd = defaultSpd
	
		if place_meeting(x,y,obj_player)//Mimic encosta no Player
		{
			spd = 0
			atkmode = 0
			atksoundon = 1
			noatktimer = 1
			image_index = 0
		
			if obj_player.playerhit = 0
			{
				obj_player.life -= dmg
				obj_player.playerhit = 1
			}
		}
	}
	if noatktimer = 1
	{
		atkmode = 0
		noatktimer1 -= 1

		if noatktimer1 <= 0
		{
			noatktimer1 = noatkvar
			noatktimer = 0
		}
	}

	if atksoundon = 1
	{
		atksound = irandom_range(1,3)
	
		if atksound = 1{audio_play_sound(sfx_mimic_atk_02,0,false,0.6)}
		if atksound = 2{audio_play_sound(sfx_mimic_atk_01,0,false,0.6)}
		if atksound = 3{audio_play_sound(sfx_mimic_atk_03,0,false,0.6)}
	
		atksoundon = 0
	}
	///////////////////////Dano que o bau toma/////////////////////////////////////////////////////////
	if place_meeting(x,y,obj_weapon) and hit = 0 and noatktimer = 0 and obj_player.atk = 1
	{
		hit = 1
		dmgsound = irandom_range(1,3)
	
		if dmgsound = 1{audio_play_sound(sfx_mimic_hit_01,0,false,0.6)}
		if dmgsound = 2{audio_play_sound(sfx_mimic_hit_02,0,false,0.6)}
		if dmgsound = 3{audio_play_sound(sfx_mimic_hit_03,0,false,0.6)}
	
		if obj_player.atk = 1
		{
			life -= obj_player.dmg
		}
	}

	if hit = 1
	{
		hittimer -= 1
	
		if atkmode = 0
		{
			image_index = 4
		}
		else
		{
			spd /= 2
			image_index = 3
		}
	
		if hittimer <= 0 and noatktimer = 0
		{
			//sprite_index = Sprite8
			hittimer = hitvar
			atkmode = 1
			hit = 0
		}
	}


	if life <= 0 
	{
		instance_destroy()
	}


	//if global.morte=3
	//{
	//	x=spawnx
	//	y=spawny
	//	visible=true
	//	//Criar um esquema de aleatoridade de vida
	//	life=lifevar
	//}
}