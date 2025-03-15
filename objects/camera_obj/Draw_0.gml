//You Died
if player_obj.deathTimer > 660 and player_obj.deathTimer < 990
{
	youDiedAlpha += 0.025
	youDiedBarAlpha += 0.025
	
	youDiedXscale += 0.002125
	youDiedYscale += 0.00125
	
	
	draw_sprite_ext(you_died_spr, 0, x, y, youDiedBarXscale, youDiedBarYscale, 0, c_white, youDiedBarAlpha);
	draw_sprite_ext(you_died_spr, 1, x, y, youDiedXscale, youDiedYscale, 0, c_white, youDiedAlpha);
}

//Escurecer
if player_obj.deathTimer > 660 and player_obj.deathTimer <= 990{blackScreenAlpha += 0.003}

//Resetar valores do youDied e barra que tem atras dele
if player_obj.deathTimer < 655
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
if player_obj.deathTimer < 650{ blackScreenAlpha -= 0.0075 }

//Evitar de ultrapassar os valores
if blackScreenAlpha < 0{ blackScreenAlpha = 0 }
if blackScreenAlpha > 1{ blackScreenAlpha = 1 }

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



draw_set_alpha(1);
draw_set_color(c_white)

//for (var i = 0; i < array_length(player_obj.buttons); i++)
//{
//	draw_text(x,y, player_obj.buttons[i])
//	draw_text(x,y + 20, player_obj.actions[i])
//}



//draw_text(x,y,player_obj.keys)
//draw_text(x,y+ 15,player_obj.doors)


