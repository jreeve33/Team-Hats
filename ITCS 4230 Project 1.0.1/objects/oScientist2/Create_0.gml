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
paused_speed = 0
health_scientist = 1

//knockback
kb_speed = 0;
kb_dir = 0;
kb_friction = 0.5;   // how fast knockback slows down

