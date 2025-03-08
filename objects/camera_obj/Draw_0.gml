//You Died
if player_obj.deathTimer > 660 and player_obj.deathTimer < 990
{
	youDiedValues[0][2] += 0.025
	
	youDiedValues[1][0] += 0.002125
	youDiedValues[1][1] += 0.00125
	youDiedValues[1][2] += 0.025
	
	draw_sprite_ext(you_died_spr, 0, x, y, youDiedValues[0][0], youDiedValues[0][1], 0, c_white, youDiedValues[0][2]);
	draw_sprite_ext(you_died_spr, 1, x, y, youDiedValues[1][0], youDiedValues[1][1], 0, c_white, youDiedValues[1][2]);
}

//Escurecer
if player_obj.deathTimer > 660 and player_obj.deathTimer <= 990
{
	blackScreenAlpha += 0.003
}

if player_obj.deathTimer = 655
{
	youDiedValues = defaultYouDiedValues
}

//Clarear
if player_obj.deathTimer < 650
{
	blackScreenAlpha -= 0.0075
}



draw_set_color(c_white)
draw_text(x-120, y+50, youDiedValues)





draw_set_alpha(blackScreenAlpha);
draw_set_color(c_black)
draw_rectangle
(
	x - window_get_width(), 
	y - window_get_height(),
	x + window_get_width(),
	y + window_get_height(),
	false
)