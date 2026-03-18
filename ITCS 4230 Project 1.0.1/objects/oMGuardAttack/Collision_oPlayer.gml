
if other.hitCooldown <= 0{
	audio_play_sound(playerGettingHit, 1, false)
	other.currentHealth -= damage
	other.hitCooldown += 40
}

