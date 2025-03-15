if trigger = 0
{
	trigger = 1
	
	if global.enemysides = 0
	{
		sprite_index = swordatkenemy2
		image_angle = point_direction(x, y, player_obj.x, player_obj.y) + 130
		direction = point_direction(x, y, player_obj.x, player_obj.y) + 90
		sides = 0
	}
	else
	{
		sprite_index=swordatkenemy1
		image_angle = point_direction(x, y, player_obj.x, player_obj.y) - 130
		direction = point_direction(x, y, player_obj.x, player_obj.y) - 90
		sides = 1
	}
}

if trigger = 1
{
	visible = true
	triggertimer -= 1
	
	if sides = 0
	{
		image_angle -= spd
	}
	else
	{
		image_angle += spd
	}
	
	if triggertimer <= 0
	{
		instance_destroy()
	}
}
if place_meeting(x,y,player_obj) and player_obj.playerhit = 0
{
	player_obj.life -= 2.5
	player_obj.playerhit = 1
	
	if sides = 0
	{
		sprite_index = swordatkenemy2hit
	}
	else
	{
		sprite_index = swordatkenemy1hit
	}
}