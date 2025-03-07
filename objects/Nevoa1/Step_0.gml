if place_meeting(x,y,player_obj)
{
	trigger=1
	//image_alpha-=0.05
}
else
{
	//image_alpha+=0.001
}

if trigger=1
{
	image_alpha-=0.02
}

if image_alpha<0
{
	image_alpha=0
}
if image_alpha>1
{
	image_alpha=1
}

