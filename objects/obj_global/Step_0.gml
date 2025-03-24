//Resetar a sala
if keyboard_check(ord("R")) { game_restart() }

//Deixar em fullscreen com alt + enter
var alt = keyboard_check(vk_alt) 
var enter = keyboard_check_pressed(vk_enter)

if alt and enter { window_set_fullscreen(!window_get_fullscreen()) }

if global.triggerenemy1 >= global.triggerenemyvar
{
	global.triggerenemy1 = global.triggerenemyvar
}

if global.triggerenemy1 <= 0
{
	global.triggerenemy1 = 0
}

mp_grid_destroy(mp_grid)