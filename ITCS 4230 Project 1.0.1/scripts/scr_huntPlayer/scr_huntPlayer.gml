function scr_huntPlayer(){
	alarm[0] = 1
	if point_distance(x, y, oPlayer.x, oPlayer.y) < 100{ 
		direction = point_direction(x, y, oPlayer.x, oPlayer.y)
		speed = 1
		
		if direction >= 90 &&  direction <= 270{
			sprite_index = runLeft
		}
		
		else{
			sprite_index = run
		}
	}
}