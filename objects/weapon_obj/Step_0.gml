if global.morte = 0
{
	if global.atk = 1
	{
		if global.sides = 0//Armas que rodam:
		{
			if player_obj.selectedWeapon = 1//Espada
			{
				x=player_obj.x
				y=player_obj.y
				visible=true
				sprite_index=swordatk1

				if global.atktimer>=29
				{
					image_angle = point_direction(x, y, mouse_x, mouse_y)-90
					direction=point_direction(x, y, mouse_x, mouse_y)-90
				}
				if global.atktimer>=0
				{
					image_angle+=6.7
				}
			}
		}
		if global.sides = 1//Armas que rodam:
		{
			if player_obj.selectedWeapon = 1//Espada
			{
				x=player_obj.x
				y=player_obj.y
				visible=true
				sprite_index=swordatk2

				if global.atktimer>=29
				{
					image_angle = point_direction(x, y, mouse_x, mouse_y)+90
					direction=point_direction(x, y, mouse_x, mouse_y)+90
				}
				if global.atktimer>=0
				{
					image_angle-=6.7
				}
			}	
		}
				
		if player_obj.selectedWeapon = 2//Lança
		{
			if global.atktimer>=29//Determinar a direção da lança
			{		
				x=player_obj.x
				y=player_obj.y
				image_angle = point_direction(x, y, mouse_x, mouse_y)
				direction=point_direction(x, y, mouse_x, mouse_y)
			}
			if global.atktimer>24//Velocidade que vai pra frente
			{
				visible=true
				sprite_index=spear
				speed=9
			}
			if global.atktimer>=0 and global.atktimer<=24//Velocidade que vai pra trás
			{
				direction=point_direction(x, y, player_obj.x, player_obj.y)
				speed=1.8

				if place_meeting(x,y,player_obj)
				{
				visible=false
				sprite_index=hollow
				}
			}
			if global.atktimer<=0
			{
			visible=false
			sprite_index=hollow
			}
		}
	}
	else
	{
		visible=false
		sprite_index=hollow
	}
}
else
{
	visible=false
	sprite_index=hollow
}

if place_meeting(x,y,wall)
{
	global.atkwall=1
}
else
{
	global.atkwall=0
}
