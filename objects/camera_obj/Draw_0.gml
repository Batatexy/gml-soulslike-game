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

//Escurecer
if player_obj.deathTimer > 660 and player_obj.deathTimer <= 990
{
	blackScreenAlpha += 0.003
}

if player_obj.deathTimer <= 650
{
	blackScreenAlpha -= 0.0075
}

