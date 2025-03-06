if player_obj.life <= 0
{
	x=player_obj.x
	y=player_obj.y
	trigger=1
	alphavalue=0.0001
	image_alpha=0
	timer=timervar
	trigger=1
	global.tp=1
	
	timer-=1
	

	if timer>1000 and timer<timervar
	{
		aim_obj.image_alpha-=0.025
	}
	
	//You Died
	if timer=1000
	{
		instance_create_layer(x,y,"Hitboxes",blackbar)
		instance_create_layer(x,y,"Hud",youdied)
	}
	
	//Escurecer
	if timer>=630 and timer<=850
	{
		alphavalue+=0.00005
		image_alpha+=alphavalue
	}
	if image_alpha>=1
	{
		image_alpha=1	
	}
	//Tp pra fogueira
	if timer>=625 and timer<=630
	{
		camera_obj.smooth=1
		aim_obj.image_alpha=1
		instance_destroy(blackbar)
		instance_destroy(youdied)
		player_obj.life = player_obj.maxLife
		player_obj.visible=true
		//Tp nas fogueiras
		player_obj.x=global.tpplacex
		player_obj.y=global.tpplacey
	}
	//Clarear
	if timer<=600
	{
		image_alpha-=0.007
	}

	//Reviver
	if timer<=530 and timer>440
	{
		player_obj.spd+=0.02
		global.atk=2

		if player_obj.spd > player_obj.spdvar
		{
			player_obj.spd = player_obj.spdvar
		}
	}
	if timer=435
	{
		global.atk=0
	}


	if image_alpha<0
	{
		image_alpha=0
	}

	if timer<=300
	{
		global.tp=0
		timer=timervar
		trigger=0
	}
}






