var right = keyboard_check(ord("D")) or keyboard_check(vk_right)
var left = keyboard_check(ord("A")) or keyboard_check(vk_left)
var down = keyboard_check(ord("S")) or keyboard_check(vk_down)
var up = keyboard_check(ord("W")) or keyboard_check(vk_up)

if global.morte=0
{
	if mouse_check_button_pressed(mb_left) and selectedWeapon != 0 and global.atk=0 and global.playerhit = 0 
	{
		spd -= spdatk
		global.atk = 1
		global.sides += 1
		global.atktimer = atkvar
	}

   

	if global.atk = 1
	{
	   global.atktimer -= 1

		if global.atktimer <= 0
		{
			spd = global.spdvar
			global.atktimer = atkvar
			global.atk = 0
		}
	}

   if global.atk = 0
   {
      if keyboard_check_pressed(ord("1")) and weapons[0][0] = true
      {
         selectedWeapon = 1
         global.dmg = 3
         spdatk = global.spdvar / 1.1
         atkvar = 30
         weapon_obj.visible = true
      }
      else if keyboard_check_pressed(ord("2")) and weapons[1][0] = true
      {
         selectedWeapon = 2
         global.dmg = 3
         spdatk = global.spdvar/1.1
         atkvar = 30
         weapon_obj.visible = true
      }
      else if keyboard_check_pressed(ord("3")) and weapons[2][0] = true
      {
         selectedWeapon = 3
         global.dmg = 0
         spdatk=global.spdvar/1
         atkvar=100
         weapon_obj.visible=true
      }
      else if keyboard_check_pressed(ord("4")) and weapons[3][0] = true
      {
         selectedWeapon = 4
         global.dmg = 0
         spdatk=global.spdvar/1
         atkvar=10
         weapon_obj.visible=true
      }
   }
}


//Tomar Dano
if global.playerhit=1
{
   hittimer-=1
   sprite_index=Sprite20
   image_alpha=0.5

	if hittimer=27
	{
	   global.life-=global.dmgreceive
	}
	if hittimer<=0
	{
	   hittimer=hitvar
	   global.playerhit=0
	}
   
}
else
{
   sprite_index=Sprite3
   image_alpha=1
}

//Morte
if global.life<=0 and visible=true
{
	global.morte=1
	global.atk=0
	speed=0
	spd=0
	visible=false
	sprite_index=hollow
}

//Troca de Camera em algumas areas
if player_obj.visible=true
{
	if place_meeting(x,y,triggerarea1)
	{
		global.camera=1
	}
	else if place_meeting(x,y,triggerarea2)
	{
		global.camera=2
	}
	else if place_meeting(x,y,triggerarea3)
	{
		global.camera=3
	}
	else
	{
		global.camera=0
	}
}


//Movimentação
if global.morte=0{
if (right) && (up) and !place_meeting(x+hb,y-hb , wall)
{
   direction=45
   speed=spd
}
else if (right) && (down) and !place_meeting(x+hb,y+hb , wall)
{
   direction=315
   speed=spd
}
else if (left && up) and !place_meeting(x-hb,y-hb , wall)
{
   direction=135
   speed=spd
}
else if (left && down) and !place_meeting(x-hb,y+hb , wall)
{
   direction=225
   speed=spd
}
else if right and !place_meeting(x+hb,y , wall)
{
   direction=0
   speed=spd
}
else if up and !place_meeting(x,y-hb , wall)
{
   direction=90
   speed=spd
}
else if left and !place_meeting(x-hb,y , wall)
{
   direction=180
   speed=spd
}
else if down and !place_meeting(x,y+hb , wall)
{
   direction=270
   speed=spd
}
else
{
   speed=0
} 
}
else
{
   speed=0
}
	


