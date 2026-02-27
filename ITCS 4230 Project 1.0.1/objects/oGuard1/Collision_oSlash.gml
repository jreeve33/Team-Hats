if hitCooldown <= 0{
	health_guard -= other.damage
	hitCooldown += 20
}

if health_guard <= 0{
	instance_create_layer(x, y, "Instances", oEnemyExplode)
	instance_destroy()
}