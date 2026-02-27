//if player is close, run away
scr_playerDetectionScientist()

if health_scientist <= 0{
	instance_create_layer(x, y, "Instances", oEnemyExplode)
	instance_destroy()
}

if hitCooldown > 0{
	hitCooldown--
}

if place_meeting(x + hspeed, y , tilemap){
	speed = 0
}

if place_meeting(x, y + vspeed, tilemap){
	speed = 0
}