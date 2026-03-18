
if other.hitCooldown <= 0{
	audio_play_sound(playerGettingHit, false, 1)
	other.currentHealth -= damage
	other.hitCooldown += 40
	instance_create_layer(x, y, "Instances", oDamageNumber)
}

