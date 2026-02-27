//Rotate and scale the attack to the directional input
if oPlayer.attackDirection == 4{
	image_xscale = 0.25 * oPlayer.attackSize
	image_yscale = 0.25 * oPlayer.attackSize
}

if oPlayer.attackDirection == 1{
	image_xscale = 0.25 * oPlayer.attackSize
	image_yscale = -0.25 * oPlayer.attackSize
}

if oPlayer.attackDirection == 0{
	image_angle = 70
	image_xscale = 0.25 * oPlayer.attackSize
	image_yscale = 0.25 * oPlayer.attackSize
}

if oPlayer.attackDirection == 2{
	image_angle = 250
	image_xscale = 0.25 * oPlayer.attackSize
	image_yscale = 0.25 * oPlayer.attackSize
}

global.slashDamage *= oPlayer.damageMod

