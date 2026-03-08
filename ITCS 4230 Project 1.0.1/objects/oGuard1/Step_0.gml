scr_huntPlayer()
scr_attackPlayer()
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