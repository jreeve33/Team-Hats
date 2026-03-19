//current_XP += xpForLevel
if near_exit && currentLevel >= 25{
	audio_stop_all()
	room_goto(LeavingLab)
}

currentHealth -= 100