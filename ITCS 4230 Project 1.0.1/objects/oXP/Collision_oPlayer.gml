if instance_exists(oPlayer){
	audio_play_sound(xpCollect, 1, false)
	oPlayer.current_XP += xpValue
	
}
instance_destroy()