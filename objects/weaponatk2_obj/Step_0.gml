x=player_obj.x
y=player_obj.y
image_angle=point_direction(x,y,mouse_x,mouse_y)

if global.weapon=1{
		if player_obj.atkfat=0{
				
				sprite_index=Sprite21

		}else{
				sprite_index=Sprite24}
		



	}
	
if global.atk=0 and global.weapon!=0{
	visible=true
}else{visible=false}