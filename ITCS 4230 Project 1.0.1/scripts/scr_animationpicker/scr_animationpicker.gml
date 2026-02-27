function scr_animationpicker(){
	randomise()
	
	action = irandom_range(0,2)
	if action == 0{
		sprite_index = job
		speed = 0
	}
	
	if action == 1 {
		direction_go = random(360)
		if tilemap_get_at_pixel(tilemap, x + 1, y){
			direction_go = random_range(91, 269)
		}
		
		if tilemap_get_at_pixel(tilemap, x - 1, y){
			direction_go = random_range(1, 89) or random_range(271, 359)
		}
		
		if tilemap_get_at_pixel(tilemap, x, y + 1){
			direction_go =  random_range(1, 179)
		}
		
		if tilemap_get_at_pixel(tilemap, x, y - 1){
			direction_go = random_range(181, 359)
		}
		
		sprite_index = walk
		
		if direction_go >= 90 &&  direction_go <= 270{
			sprite_index = walkLeft
		}
		
		motion_add(direction_go, 0.5)	
	}

	if action == 2{
		sprite_index = idle
		speed = 0
	}
	
	
}