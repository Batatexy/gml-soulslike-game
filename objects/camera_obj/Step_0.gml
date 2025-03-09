//Camera
if (follow!=noone)
{
	xto = follow.x
	yto = follow.y
}
x += (xto-x)/smooth
y += (yto-y)/smooth

camera_set_view_pos(view_camera[0],x-(zoomx*0.5),y-(zoomy*0.5))

/////////////////////////////////////////////////////////////////////////////////////////

if camera = 0
{
	follow = player_obj
	smooth = hard
}
else if camera = 1
{
	follow = cam1
	smooth = soft
}
else if camera = 2
{
//camera_set_view_size(view_camera[0],zoomx,zoomy)
	follow = player_obj
	smooth = soft
}
else if camera = 3
{
	follow = cam2
	smooth = soft
}

/////////////////////////////////////////////////////////////////////////////////////////



