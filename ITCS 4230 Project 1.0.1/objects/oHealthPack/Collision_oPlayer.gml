if instance_exists(oPlayer){
	if oPlayer.currentHealth > 70{
		oPlayer.currentHealth += (100 - oPlayer.currentHealth)
	}
	else{
		oPlayer.currentHealth += 30
	}
}
instance_destroy()