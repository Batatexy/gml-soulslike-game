if open=0 and place_meeting(x,y,player_obj) and keyboard_check(ord("E"))
{
	open=1
	audio_play_sound(sound,0,false)
}

if open=1
{
	player_obj.speed=0
	opentimer-=1

	if opentimer<=0
	{
		image_index = 1
	}
	
	if opentimer<-50
	{
		if place=1
		{
			player_obj.weapons[0][0] = true
		}
		if place=2
		{
			global.key1=1
		}
		if place=3
		{
			player_obj.weapons[1][0] = true
		}
		if place=4
		{
			player_obj.weapons[2][0] = true
		}
		if place=5
		{
			player_obj.weapons[3][0] = true
		}

		
	open=2
	}
}