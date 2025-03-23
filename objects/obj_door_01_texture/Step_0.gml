if place_meeting(x,y,obj_player) and !obj_player.doors[0] and obj_player.actions[4] and obj_player.keys[0]
{
	image_index++
	obj_player.doors[0] = true
	instance_destroy(obj_door_01_colision)
}

if obj_player.doors[0]
{
	if timer >= sprites[1]
	{
		timer--
	}
	
	if timer > sprites[1]
	{
		image_angle += 2;
	}
	
	if timer = sprites[0]
	{
		image_index++
		image_angle = 0
	}
	
	if timer = sprites[1]
	{
		image_index++
		image_angle = 0
	}
	
	
}



if image_alpha <= 0
{
	instance_destroy()
}