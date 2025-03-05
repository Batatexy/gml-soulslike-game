if place_meeting(x,y,player_obj) and keyboard_check(ord("E"))
{
global.wall01=1
}
if global.wall01=1
{
image_alpha-=0.01
}
if image_alpha<=-0.15
{
instance_destroy(walldoor2)
instance_destroy()
}