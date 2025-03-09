if place_meeting(x,y,player_obj)
{
	touchedFog = true
}

if touchedFog
{
	image_alpha -= 0.025
	
	if image_alpha <= 0
	{
		instance_destroy()
	}
}
