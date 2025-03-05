

if visible=true and spawnnumber>0
{
if atk=0 and hit=0 and distance_to_object(player_obj)<distance and player_obj.visible=true
{
//Desenvolver um sistema de id mesmo com vários objetos iguais
global.enemysides+=1
instance_create_layer(x, y, "Hud", weaponenemy1)
atk=1
}
if atk=1
{
triggertime-=1
spd=0
	if triggertime<=0
	{
	triggertime=triggervar
	atk=0
	}
}

//Seguir o player ou voltar pro spawn
if atk=0
{
var x1=x
var y1=y
spd=spdvar
	if global.triggerenemy1<global.triggerenemyvar and player_obj.visible=true
	{
	var x2=(player_obj.x div aim_obj.cell_t)*aim_obj.cell_t+(aim_obj.cell_t/2)
	var y2=(player_obj.y div aim_obj.cell_t)*aim_obj.cell_t+(aim_obj.cell_t/2)

		if (mp_grid_path(aim_obj.mp_grid,path,x1,y1,x2,y2,true))
		{
		path_start(path,spd,path_action_stop,false)
		}
	}
	else
	{//Melhorar sa porra em
	var x2=(spawnx div aim_obj.cell_t)*aim_obj.cell_t+(aim_obj.cell_t/2)
	var y2=(spawny div aim_obj.cell_t)*aim_obj.cell_t+(aim_obj.cell_t/2)

		if (mp_grid_path(aim_obj.mp_grid,path,x1,y1,x2,y2,true))
		{
		path_start(path,spd,path_action_stop,false)
		}
	}
}
else
{
if path_exists(path)
{
path_clear_points(path)
}
spd=0
speed=0
}

if place_meeting(x,y,weapon_obj) and hit=0 and global.weapon!=0 and global.atk!=0 and global.atkwall=0
{
hit=1
	if global.atk=1{life-=global.dmg}
}
if hit=1
{
hittimer-=1
spd/=1.05
sprite_index=Sprite19
	if hittimer<=0
	{
	sprite_index=Sprite1
	hittimer=hitvar
	hit=0
	}
}

}

if life<=0 and visible=true
{
spawnnumber-=1
visible=false
sprite_index=hollow

if spawnnumber<=0
{
visible=false
sprite_index=hollow
}
}

if global.morte=3
{
x=spawnx
y=spawny
visible=true
//Criar um esquema de aleatoridade de vida
life=lifevar
}


