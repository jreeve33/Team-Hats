function scr_levelUp(){
	if instance_exists(oPlayer){
		oPlayer.currentLevel++
		pause()
		instance_create_depth(oPlayer.x, oPlayer.y, -2, obj_upgrade_screen)
		oPlayer.current_XP -= oPlayer.xpForLevel
		oPlayer.xpForLevel *= 1.5
	}
	global.scientistSpawnChance /= 1.15
	global.guardSpawnChance *= 1.15
}