function scr_attackPlayer(){
	alarm[0] = 1
	if point_distance(x, y, oPlayer.x, oPlayer.y) < 16{ 
		direction = point_direction(x, y, oPlayer.x, oPlayer.y)
		speed = 0
		
		if direction >= 90 &&  direction <= 270{
			sprite_index = swingLeft
		}
		
		else{
			sprite_index = swing
		}
	}
}