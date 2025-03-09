if place_meeting(x,y,player_obj) and player_obj.actions[4]
{
	player_obj.secretWallsRevealed[0] = true
}

if player_obj.secretWallsRevealed[0] = true
{
	image_alpha -= 0.01
}

if image_alpha <= 0
{
	instance_destroy(secretWall_01_colision)
	instance_destroy()
}