//TileMap
var lay = layer_get_id("collision_map")

tilemap = layer_tilemap_get_id(lay)

walk = sScientist3Walk
idle = sScientist3idle
job = sScientist3job
run = sScientist3run
runLeft = sScientist3runLeft
walkLeft = sScientist3WalkLeft

hitCooldown = 0

health_scientist = 5