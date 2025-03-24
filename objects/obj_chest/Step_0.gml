if !global.pause
{

	if open = 0 and place_meeting(x,y,obj_player) and obj_player.actions[4]
	{
		audio_play_sound(sound,0,false)
		open = 1
	}

	if open = 1
	{
		obj_player.canMove = false
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
					obj_player.weapons[0][0] = true
					break
				}
				case 2:
				{
					obj_player.keys[0] = true
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

			obj_player.canMove = true
			open = 2
		}
	}
}