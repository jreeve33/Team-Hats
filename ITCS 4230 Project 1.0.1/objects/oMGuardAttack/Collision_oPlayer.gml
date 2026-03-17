
if other.hitCooldown <= 0{
	other.currentHealth -= damage
	other.hitCooldown += 40
	instance_create_layer(x, y, "Instances", oDamageNumber)
}

