if place_meeting(x,y,obj_player) and obj_player.actions[4]
{
	obj_player.secretWallsRevealed[0] = true
}

if obj_player.secretWallsRevealed[0] = true
{
	image_alpha -= 0.01
}

if image_alpha <= 0
{
	instance_destroy(obj_secretWall_01_colision)
	instance_destroy()
}