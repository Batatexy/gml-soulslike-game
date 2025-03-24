event_inherited();

if !global.pause
{

	if life > 0
	{
		if place_meeting(x,y,obj_weaponPlayer) and !hit
		{
			life -= obj_weaponPlayer.object.dmg
			hit = true
		}
	}

}