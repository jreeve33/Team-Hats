if hitCooldown <= 0{
	health_scientist -= other.damage
	hitCooldown += 20
	instance_create_layer(x, y - 20, "Instances", oDamageNumber)
}


