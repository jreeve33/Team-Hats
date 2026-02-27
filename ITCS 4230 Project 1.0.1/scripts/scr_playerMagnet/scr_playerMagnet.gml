function scr_playerMagnet(){
	if point_distance(x, y, oPlayer.x, oPlayer.y) < 75{
		direction = point_direction(x, y, oPlayer.x, oPlayer.y)
		speed = 0.25
	}
	else{
		speed = 0
	}
}