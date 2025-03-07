if place_meeting(x,y,player_obj)
{
	touchedFog = true
	//image_alpha-=0.05
}
else
{
	//image_alpha+=0.001
}

if touchedFog
{
	image_alpha -= 0.02
}

if image_alpha > 1
{
	image_alpha = 1
}

if image_alpha <= 0
{
	instance_destroy()
}
