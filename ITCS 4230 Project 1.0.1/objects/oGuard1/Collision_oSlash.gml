if hitCooldown <= 0{
	health_guard -= other.damage
	hitCooldown += 20
	instance_create_layer(x, y - 20, "Instances", oDamageNumber)
	
	if instance_exists(oPlayer) && oPlayer._knockback{
		var _dir = point_direction(other.x, other.y, x, y); // away from enemy
		kb_dir = _dir;
		kb_speed = 8; // tweak strength
	}
	
}

if health_guard <= 0{
	instance_create_layer(x, y, "Instances", oEnemyExplode)
	instance_destroy()
}