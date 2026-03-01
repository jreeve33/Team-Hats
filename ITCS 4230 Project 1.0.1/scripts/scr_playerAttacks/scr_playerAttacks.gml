function scr_playerAttacks(){
	if (keyboard_check(vk_down)){
		if oPlayer.attackCdr <= 0{
			oPlayer.attackCdr += 40
			oPlayer.attackDirection = 4
			speed = 0
			sprite_index = sSaturnStoppedDown
			oPlayer.direction = 270
			instance_create_layer(x,y + 16 + speed, "Instances", oSlash)
		}
	}
	
	if (keyboard_check(vk_left)){
		if oPlayer.attackCdr <= 0{
			oPlayer.attackCdr += 40
			oPlayer.attackDirection = 2
			speed = 0
			sprite_index = sSaturnStoppedLeft
			oPlayer.direction = 180
			instance_create_layer(x - 16 - speed, y, "Instances", oSlash)
		}
	}
	
	if (keyboard_check(vk_up)){
		if oPlayer.attackCdr <= 0{
			oPlayer.attackCdr += 40
			oPlayer.attackDirection = 1
			speed = 0
			sprite_index = sSaturnStoppedUp
			oPlayer.direction = 90
			instance_create_layer(x,y - 16 - speed, "Instances", oSlash)
		}
	}
	
	if (keyboard_check(vk_right)){
		if oPlayer.attackCdr <= 0{
			oPlayer.attackCdr += 40
			oPlayer.attackDirection = 0
			speed = 0
			sprite_index = sSaturnStoppedRight
			oPlayer.direction = 0
			instance_create_layer(x + 16 + speed,y , "Instances", oSlash)
		}
	}
	
}