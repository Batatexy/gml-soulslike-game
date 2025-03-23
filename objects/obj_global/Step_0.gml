//Resetar a sala
if keyboard_check(ord("R"))
{
	game_restart()
}

if global.triggerenemy1 >= global.triggerenemyvar
{
	global.triggerenemy1 = global.triggerenemyvar
}

if global.triggerenemy1 <= 0
{
	global.triggerenemy1 = 0
}



mp_grid_destroy(mp_grid)