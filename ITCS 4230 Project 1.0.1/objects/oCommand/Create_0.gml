players = 0
scr_playerSpawn()

global.paused = false

global.guardSpawnChance = 0.25

global.CDRreduction = 1

global.scientistSpawnChance = 1



global.attackRange = 1

global.timer = 300

global.rageCDRreduction = 1

clamp(global.guardSpawnChance, 0, 1)

clamp(global.scientistSpawnChance, 0, 1)