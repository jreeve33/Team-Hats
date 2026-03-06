
if instance_exists(oPlayer){
	if oPlayer.attackDirection == 2{
		dirx_offset = -16
	}
	
	if oPlayer.attackDirection == 0{
		dirx_offset = 16
	}
	
	if oPlayer.attackDirection == 1{
		diry_offset = -16
	}
	
	if oPlayer.attackDirection == 4{
		diry_offset = 16
	}
	
	x = oPlayer.x + dirx_offset
	y = oPlayer.y + diry_offset
}