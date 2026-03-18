if other.hitCooldown <= 0{
	other.currentHealth -= damage
	other.hitCooldown += 40
	audio_play_sound(playerGettingHit, 1, false)
}
instance_destroy()