if place_meeting(x,y,player_obj) and !player_obj.doors[0] and player_obj.actions[4] and player_obj.keys[0]
{
	image_index++
	player_obj.doors[0] = true
	instance_destroy(door_01_colision)
}

if player_obj.doors[0]
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
		image_index++;
		image_angle = 0;
	}
	
	if timer = sprites[1]
	{
		image_index++;
		image_angle = 0
	}
	
	
}



if image_alpha <= 0
{
	instance_destroy()
}