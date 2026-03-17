//TileMap
var lay = layer_get_id("collision_map")

tilemap = layer_tilemap_get_id(lay)

walk = sScientist4Walk
idle = sScientist4idle
job = sScientist4job
run = sScientist4run
runLeft = sScientist4runLeft
walkLeft = sScientist4WalkLeft

hitCooldown = 0
paused_speed = 0
health_scientist = 1

//knockback
kb_speed = 0;
kb_dir = 0;
kb_friction = 0.5;   // how fast knockback slows down

