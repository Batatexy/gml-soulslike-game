if !global.pause
{

	x = mouse_x
	y = mouse_y

	//Mouse em algum inimigo
	if place_meeting(x ,y, obj_character) and !place_meeting(x ,y, obj_player)
	{
		if obj_player.atk
		{
			image_index = 3
		}
		else
		{
			image_index = 2
		}
	}
	//Neutro
	else
	{
		if obj_player.atk
		{
			image_index = 1
		}
		else
		{
			image_index = 0
		}
	}
}