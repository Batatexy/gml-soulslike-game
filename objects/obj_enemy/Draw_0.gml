event_inherited();





//Barra de Vida e Stamina
draw_set_alpha(0.75)
var division = maxLife / 32

var cameraX = x - 17
var cameraY = y - 20


if life > 0
{
	draw_rectangle_colour(cameraX + 1, cameraY + 1, cameraX + maxLife / division, cameraY + 5, 100, 100, 100, 100, false);

	draw_set_alpha(1)
	draw_rectangle_colour(cameraX + 1, cameraY + 1, cameraX + life / division, cameraY + 5, c_red, c_red, c_red, c_red, false);
}
