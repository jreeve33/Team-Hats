x = oPlayer.x
y = oPlayer.y

if ((oPlayer.sprite_index == sSaturnLeft) || oPlayer.sprite_index == sSaturnStoppedLeft){
	lunge_sprite_index = sLungeLeft
}

if ((oPlayer.sprite_index == sSaturnRight) || oPlayer.sprite_index == sSaturnStoppedRight){
	lunge_sprite_index = sLungeRight
}

if ((oPlayer.sprite_index == sSaturnDown) || oPlayer.sprite_index == sSaturnStoppedDown){
	lunge_sprite_index = sLungeDown
}

if ((oPlayer.sprite_index == sSaturnUp) || oPlayer.sprite_index == sSaturnStoppedUp){
	lunge_sprite_index = sLungeUp
}

if oPlayer.lunge == false{
	instance_destroy()
}