//Rotate and scale the attack to the directional input

size = ds_map_find_value(global.swipe, "range")
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
damage = ds_map_find_value(global.swipe, "damage");
damage *= oPlayer.damageMod

dirx_offset = 0
diry_offset = 0