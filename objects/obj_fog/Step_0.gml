if speedFadeOut == 0
{
	//Rapido
	if place_meeting(x,y,obj_player)
	{
		speedFadeOut = 1
	}
	
	//Medio
	if (place_meeting(x,y,obj_door_01_texture) and obj_player.doors[0])
	{
		speedFadeOut = 2
	}

	//Muito Lento
	if (place_meeting(x,y,obj_secretWall_01_texture) and obj_player.secretWallsRevealed[0])
	{
		speedFadeOut = 3
	}
}





if speedFadeOut = 1
{
	image_alpha -= 0.025
}

if speedFadeOut = 2
{
	image_alpha -= 0.075
}

if speedFadeOut = 3
{
	image_alpha -= 0.01
}



if image_alpha <= 0
{
	instance_destroy()
}