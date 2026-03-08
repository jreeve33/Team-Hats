scr_huntPlayer()
scr_attackPlayer()
if scr_attackPlayer() == true{
	speed = 0
	if canSwing == true{
		canSwing = false
		instance_create_layer(x, y, "Instances", oMGuardAttack)
	}
}
if hitCooldown > 0{
	hitCooldown--
}

if attackCooldown > 0{
	attackCooldown--
}

if place_meeting(x + hspeed, y , tilemap){
	speed = 0
}

if place_meeting(x, y + vspeed, tilemap){
	speed = 0
}