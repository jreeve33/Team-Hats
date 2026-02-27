alarm[0] = spawnRate
randomise()
scientistSpawn = random_range(0,1)
if scientistSpawn <= global.scientistSpawnChance{
	scr_spawn()
}
