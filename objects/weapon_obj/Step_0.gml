if player_obj.life > 0 and player_obj.stamina > 0 and player_obj.canMove
{
	if player_obj.atk = 1
	{
		//Armas que rodam:
		if player_obj.weapons[player_obj.selectedWeapon][1] = "swing"
		{
			x = player_obj.x
			y = player_obj.y
				
			if player_obj.sides = 0
			{
				visible = true
				sprite_index = player_obj.weapons[player_obj.selectedWeapon][5][0]

				if player_obj.atktimer >= 29
				{
					image_angle = point_direction(x, y, mouse_x, mouse_y) - 90
					direction = point_direction(x, y, mouse_x, mouse_y) - 90
				}
				if player_obj.atktimer >= 0
				{
					image_angle += 6.7
				}
			}
			if player_obj.sides = 1//Armas que rodam:
			{
				visible = true
				sprite_index = player_obj.weapons[player_obj.selectedWeapon][5][1]

				if player_obj.atktimer >= 29
				{
					image_angle = point_direction(x, y, mouse_x, mouse_y) + 90
					direction = point_direction(x, y, mouse_x, mouse_y) + 90
				}
				if player_obj.atktimer >= 0
				{
					image_angle -= 6.7
				}
			}
		}
		
		
		
		
		
		
		
		//Lanças
		else if player_obj.weapons[player_obj.selectedWeapon][1] = "thrust"
		{
			if player_obj.atktimer >= 29//Determinar a direção da lança
			{		
				x = player_obj.x
				y = player_obj.y
				image_angle = point_direction(x, y, mouse_x, mouse_y)
				direction = point_direction(x, y, mouse_x, mouse_y)
			}
			if player_obj.atktimer > 24//Velocidade que vai pra frente
			{
				visible = true
				sprite_index = spear
				speed = 9
			}
			if player_obj.atktimer >= 0 and player_obj.atktimer <= 24//Velocidade que vai pra trás
			{
				direction = point_direction(x, y, player_obj.x, player_obj.y)
				speed = 1.8

				if place_meeting(x,y,player_obj)
				{
					visible = false
					sprite_index = hollow
				}
			}
			if player_obj.atktimer <= 0
			{
				visible = false
				sprite_index = hollow
			}
		}
	}
	else
	{
		visible = false
		sprite_index = hollow
	}
}
else
{
	visible = false
	sprite_index = hollow
}

//Relou na parede, soma 1 no atkWall
if place_meeting(x,y,wall)
{
	if (atkWallTrigger)
	{
		atkWallTrigger = false
		player_obj.atkWall++
		atkWallTimer = atkWallTimerVar
		
		//Resetar o AtkWall se passar de 3
		if player_obj.atkWall > 3
		{
			player_obj.atkWall = 0
		}
	}
	
}
else
{
	if player_obj.atkWall > 0
	{
		atkWallTimer--
	
		if 	atkWallTimer < 0
		{
			player_obj.atkWall = 0
			atkWallTrigger = true
			atkWallTimer = atkWallTimerVar
		}
	}
}

if 	(atkWallTimer = 0 or (atkWallTimer = atkWallTimerVar * 0.25) or (atkWallTimer = atkWallTimerVar * 0.5) )
{
	player_obj.atkWall--
	
	if player_obj.atkWall = 0
	{
		atkWallTimer = atkWallTimerVar
	}
}




//Resetar o trigger quando o player nao estiver atacando
if player_obj.atk = 0
{
	atkWallTrigger = true
}
