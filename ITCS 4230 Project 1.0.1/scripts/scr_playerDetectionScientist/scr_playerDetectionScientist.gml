function scr_playerDetectionScientist(){
	alarm[0] = 1
	if point_distance(x, y, oPlayer.x, oPlayer.y) < 100{ 
		var pd = point_direction(x, y, oPlayer.x, oPlayer.y);
		hspeed = lengthdir_x(1, pd + 180);
		vspeed = lengthdir_y(1, pd + 180);
		
		if direction >= 90 &&  direction <= 270{
			sprite_index = runLeft
		}
		
		else{
			sprite_index = run
		}
	}
	
}