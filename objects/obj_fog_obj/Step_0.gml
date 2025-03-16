//Rapido
if place_meeting(x,y,obj_player)
{
	touchedFog = 1
}

//Medio
if (place_meeting(x,y,obj_door_01_texture) and obj_player.doors[0])
{
	touchedFog = 2
}

//Muito Lento
if (place_meeting(x,y,obj_secretWall_01_texture) and obj_player.secretWallsRevealed[0])
{
	touchedFog = 3
}

if touchedFog = 1
{
	image_alpha -= 0.025
}

if touchedFog = 2
{
	image_alpha -= 0.075
}

if touchedFog = 3
{
	image_alpha -= 0.01
}



if image_alpha <= 0
	{
		instance_destroy()
	}