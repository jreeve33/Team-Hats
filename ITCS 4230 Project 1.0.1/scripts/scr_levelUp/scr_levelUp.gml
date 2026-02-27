function scr_levelUp(){
	if instance_exists(oPlayer){
		oPlayer.xpForLevel *= 1.5
		oPlayer.currentLevel++
		oPlayer.current_XP = 0
	}
	global.scientistSpawnChance /= 1.15
	global.guardSpawnChance *= 1.15
}