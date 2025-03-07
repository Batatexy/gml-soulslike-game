if player_obj.life > 0
{
	move_towards_point(player_obj.x,player_obj.y,spd)
}
else
{
	move_towards_point(0,0,0)
	atkmode = 0
	sprite_index = Sprite5
}

if atkmode=0//Modo de ataque OFF
{
sprite_index=Sprite5
	if open=0 and place_meeting(x,y,player_obj) and keyboard_check_pressed(ord("E"))
	{// Abriu o bau kkkkkkkkk
	open=1
	audio_play_sound(opensound,0,false)
	}
	if open=1
	{
		player_obj.speed=0
		player_obj.spd=0
		player_obj.atk=2
		if spdtimer<=0
		{
		sprite_index=Sprite8
		}
		if spdtimer>-140
		{
		spdtimer-=1
		}
		else
		{
		spdtimer=60
		sprite_index=Sprite5
		open=0
		global.life-=50
		atksoundon=1	
		}	
	}
}
else//Modo de ataque ON
{
	sprite_index = Sprite8
	spd = spdvar
	
	if place_meeting(x,y,player_obj)//Mimic encosta no Player
	{
		spd = 0
		atkmode = 0
		atksoundon = 1
		noatktimer = 1
		sprite_index = Sprite5
		
		if player_obj.playerhit = 0
		{
			global.dmgreceive = dmg
			player_obj.playerhit = 1
		}
	}
}
if noatktimer = 1
{
	atkmode = 0
	noatktimer1 -= 1

	if noatktimer1 <= 0
	{
		noatktimer1 = noatkvar
		noatktimer = 0
	}
}

if atksoundon=1
{
atksound=irandom_range(1,3)
	if atksound=1{audio_play_sound(Mimic6,0,false,0.6)}
	if atksound=2{audio_play_sound(Mimic7,0,false,0.6)}
	if atksound=3{audio_play_sound(Mimic8,0,false,0.6)}
atksoundon=0
}
///////////////////////Dano que o bau toma/////////////////////////////////////////////////////////
if place_meeting(x,y,weapon_obj) and hit=0 and player_obj.selectedWeapon!=0 and noatktimer=0 and player_obj.atk=1 and global.atkwall=0
{
hit=1
dmgsound=irandom_range(1,3)
	if dmgsound=1{audio_play_sound(Mimic1,0,false,0.6)}
	if dmgsound=2{audio_play_sound(Mimic2,0,false,0.6)}
	if dmgsound=3{audio_play_sound(Mimic3,0,false,0.6)}
	
	if player_obj.atk=1{life-=global.dmg}
}

if hit=1{
	if atkmode=0{
	sprite_index=Sprite10
	}else{
	spd/=2
	sprite_index=Sprite9}
	hittimer-=1

	if hittimer<=0 and noatktimer=0{
	sprite_index=Sprite8
	hittimer=hitvar
	atkmode=1
	hit=0
	}
}


if life<=0{
	instance_destroy()
}


//if global.morte=3
//{
//	x=spawnx
//	y=spawny
//	visible=true
//	//Criar um esquema de aleatoridade de vida
//	life=lifevar
//}