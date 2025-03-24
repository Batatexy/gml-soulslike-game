//Barra de Vida e Stamina do Player
draw_set_alpha(0.75)
var cameraX = x - 206
var cameraY = y - 114

var division = 3

//Hud
draw_rectangle_colour(cameraX + 1, cameraY + 1, cameraX + obj_player.maxLife / division, cameraY + 7, 100, 100, 100, 100, false);
draw_rectangle_colour(cameraX + 1, cameraY + 9, cameraX + obj_player.maxStamina / division, cameraY + 15, 100, 100, 100, 100, false);

draw_set_alpha(1)
if obj_player.life > 0
{
	draw_rectangle_colour(cameraX + 1, cameraY + 1, cameraX + obj_player.life / division, cameraY + 7, c_red, c_red, c_red, c_red, false);
}

if obj_player.stamina > 0
{
	draw_rectangle_colour(cameraX + 1, cameraY + 9, cameraX + obj_player.stamina / division, cameraY + 15, c_green, c_green, c_green, c_green, false);
}

//dmg
draw_set_alpha(1)
draw_set_color(c_white)
draw_text(x-206, y+96, "dmg:" + string(obj_player.dmg))





























//You Died
if obj_player.deathTimer > 660 and obj_player.deathTimer < 990
{
	youDiedAlpha += 0.025
	youDiedBarAlpha += 0.025
	
	youDiedXscale += 0.002125
	youDiedYscale += 0.00125
	
	
	draw_sprite_ext(spr_you_died, 0, x, y, youDiedBarXscale, youDiedBarYscale, 0, c_white, youDiedBarAlpha)
	draw_sprite_ext(spr_you_died, 1, x, y, youDiedXscale, youDiedYscale, 0, c_white, youDiedAlpha)
}

//Escurecer
if obj_player.deathTimer > 660 and obj_player.deathTimer <= 990{blackScreenAlpha += 0.003}

//Resetar valores do youDied e barra que tem atras dele
if obj_player.deathTimer < 655
{ 
	//Obrigado GameMaker!!!!!!
	youDiedBarXscale = youDiedBarXscaleVar
	youDiedBarYscale = youDiedBarYscaleVar
	youDiedBarAlpha = youDiedBarAlphaVar
	youDiedXscale = youDiedXscaleVar
	youDiedYscale = youDiedYscaleVar
	youDiedAlpha = youDiedAlphaVar
}

//Clarear
if obj_player.deathTimer < 650{ blackScreenAlpha -= 0.0075 }

//Evitar de ultrapassar os valores
if blackScreenAlpha < 0{ blackScreenAlpha = 0 }
if blackScreenAlpha > 1{ blackScreenAlpha = 1 }

draw_set_alpha(blackScreenAlpha)
draw_set_color(c_black)
draw_rectangle
(
	x - window_get_width(), 
	y - window_get_height(),
	x + window_get_width(),
	y + window_get_height(),
	false
)
