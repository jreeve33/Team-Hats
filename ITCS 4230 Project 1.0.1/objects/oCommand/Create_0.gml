players = 0
scr_playerSpawn()
display_reset(0, true)
window_set_fullscreen(true)

traits_reset()
global.paused = false

global.guardSpawnChance = 0.25

global.CDRreduction = 1

global.scientistSpawnChance = 1

global.canAttack = true

global.attackRange = 1

global.timer = 300

global.rageCDRreduction = 1

clamp(global.guardSpawnChance, 0, 1)

clamp(global.scientistSpawnChance, 0, 1)

global.levelForHealthScaling = 0 

global.enemiesKilled = 0

global.accessibleMode = false

cheatsEnabled = false