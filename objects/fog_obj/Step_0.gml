//Rapido
if place_meeting(x,y,player_obj)
{
	touchedFog = 1
}

//Medio
if (place_meeting(x,y,door_01_texture) and player_obj.doors[0])
{
	touchedFog = 2
}

//Muito Lento
if (place_meeting(x,y,secretWall_01_texture) and player_obj.secretWallsRevealed[0])
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