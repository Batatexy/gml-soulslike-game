x = mouse_x
y = mouse_y

//Mouse em algum inimigo
if place_meeting(x ,y, obj_character) and !place_meeting(x ,y, obj_player)
{
	if obj_player.atk = 0
	{
		image_index = 2
	}
	else
	{
		image_index = 3
	}
}
//Neutro d
else
{
	if obj_player.atk = 0
	{
		image_index = 0
	}
	else
	{
		image_index = 1
	}
}