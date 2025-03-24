event_inherited();

if !global.pause
{
	if life > 0
	{
		if !atk and !hit and distance_to_object(obj_player) < distance and obj_player.visible = true
		{
			sides += 1
		
			var weapon = instance_create_layer(x, y, "EnemyWeapons", obj_weaponEnemy)
			weapon.object = self
		
			atk = true
		}

		//Seguir o player ou voltar pro spawn
		if atk
		{
			//spd = 0
			//speed = 0

			if path_exists(path)
			{
				path_clear_points(path)
			}
		}
		else
		{
			var x1 = x
			var y1 = y

			if global.triggerenemy1 < global.triggerenemyvar and obj_player.visible = true
			{
				var x2=(obj_player.x div obj_global.cell_t) * obj_global.cell_t + (obj_global.cell_t/2)
				var y2=(obj_player.y div obj_global.cell_t) * obj_global.cell_t + (obj_global.cell_t/2)

				if (mp_grid_path(obj_global.mp_grid,path,x1,y1,x2,y2,true))
				{
					path_start(path,spd,path_action_stop,false)
				}
			}
			else
			{
				//Melhorar sa porra em
				var x2 = (spawnx div obj_global.cell_t) * obj_global.cell_t + (obj_global.cell_t/2)
				var y2 = (spawny div obj_global.cell_t) * obj_global.cell_t + (obj_global.cell_t/2)

				if (mp_grid_path(obj_global.mp_grid,path,x1,y1,x2,y2,true))
				{
					path_start(path,spd,path_action_stop,false)
				}
			}
		}
		
		if hit
		{
			spd /= 1.05
			image_index = 1

			if hittimer <= 0
			{
				image_index = 0
			}
		}
	}
}

