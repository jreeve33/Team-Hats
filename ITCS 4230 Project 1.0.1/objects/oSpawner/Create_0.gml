global.currentEnemyBudget = 0
alarm[0] = spawnRate
global.enemyBudget = 400

scientistSpawn = random_range(0,1)
var lay = layer_get_id("enemy_spawn_area")


tilemapSpawn = layer_tilemap_get_id(lay)

