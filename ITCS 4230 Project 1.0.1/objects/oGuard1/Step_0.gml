

if hitCooldown > 0{
	hitCooldown--
}

if place_meeting(x + hspeed, y , tilemap){
	speed = 0
}

if place_meeting(x, y + vspeed, tilemap){
	speed = 0
}