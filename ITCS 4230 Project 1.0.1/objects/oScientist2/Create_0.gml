//TileMap
var lay = layer_get_id("collision_map")

tilemap = layer_tilemap_get_id(lay)

walk = sScientist2Walk
walkLeft = sScientist2WalkLeft
idle = sScientist2idle
job = sScientist2job
run = sScientist2run
runLeft = sScientist2runLeft

hitCooldown = 0

health_scientist = 5