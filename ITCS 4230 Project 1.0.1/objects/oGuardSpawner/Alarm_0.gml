alarm[0] = spawnRate
randomise()
guardSpawn = random_range(0,1)
if (guardSpawn < global.guardSpawnChance) && (oPlayer.currentLevel > 2){
	scr_spawn()
}