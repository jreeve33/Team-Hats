if oPlayer.attackDirection == 4{
	image_xscale = 0.25 * size
	image_yscale = 0.25 * size
	diry_offset = 16
	
}

if oPlayer.attackDirection == 1{
	image_xscale = 0.25 * size
	image_yscale = -0.25 * size
	diry_offset = -16
	
}

if oPlayer.attackDirection == 0{
	image_angle = 70
	image_xscale = 0.25 * size
	image_yscale = 0.25 * size
	dirx_offset = 16
	
}

if oPlayer.attackDirection == 2{
	image_angle = 250
	image_xscale = 0.25 * size
	image_yscale = 0.25 * size
	dirx_offset = -16
	
}
if oGuard1.direction > 135 &&  oGuard1.direction < 225{
	image_angle = 250
}
			
if oGuard1.direction > 225 &&  oGuard1.direction < 315{
	image_angle = 70
}
			
if (oGuard1.direction > 315 &&  oGuard1.direction <= 360) or (oGuard1.direction >= 0 &&  oGuard1.direction <= 45){
	image_yscale = -1
}
			
if oGuard1.direction > 45 &&  oGuard1.direction < 135{
	sprite_index = sSaturnStoppedUp
}
	