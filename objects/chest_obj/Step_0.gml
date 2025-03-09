if open = 0 and place_meeting(x,y,player_obj) and player_obj.actions[4]
{
	audio_play_sound(sound,0,false)
	open = 1
}

if open = 1
{
	player_obj.canMove = false
	opentimer--

	if opentimer < 45
	{
		image_index = 1
	}
	
	if opentimer < 0
	{
		switch(place)
		{
			case 1:
			{
				player_obj.weapons[0][0] = true
				break
			}
			case 2:
			{
				player_obj.keys[0] = true
				break
			}
			case 3:
			{
				
				break
			}
			case 4:
			{
				
				break
			}
			case 5:
			{
				
				break
			}
			case 6:
			{
				
				break
			}
		}

		player_obj.canMove = true
		open = 2
	}
}