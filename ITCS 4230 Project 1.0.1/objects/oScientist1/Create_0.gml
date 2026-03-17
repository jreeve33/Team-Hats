//TileMap
var lay = layer_get_id("collision_map")

tilemap = layer_tilemap_get_id(lay)

walk = sScientist1Walk
idle = sScientist1idle
job = sScientist1job
run = sScientist1run
runLeft = sScientist1runLeft
walkLeft = sScientist1WalkLeft

hitCooldown = 0

health_scientist = 1

kb_speed = 0;
kb_dir = 0;
kb_friction = 0.5;   // how fast knockback slows down

