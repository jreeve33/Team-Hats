//TileMap
var lay = layer_get_id("collision_map")

tilemap = layer_tilemap_get_id(lay)


image_xscale = 1
image_yscale = 1

canSwing = true

runLeft = sMGuardRunLeft
run = sMGuardRun

swingLeft = sMGuardSwingLeft
swing = sMGuardSwing

attackCooldown = 0
hitCooldown = 0
paused_speed = 0
health_guard = 10 + global.levelForHealthScaling * 1.15

//knockback
kb_speed = 0;
kb_dir = 0;
kb_friction = 0.5;   // how fast knockback slows down

var _dir = point_direction(other.x, other.y, x, y); // away from enemy
kb_dir = _dir;
kb_speed = 8; // tweak strength