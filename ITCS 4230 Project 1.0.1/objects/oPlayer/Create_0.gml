//TileMap
var lay = layer_get_id("collision_map")

tilemap = layer_tilemap_get_id(lay)

//Sprite info
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index)
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index)
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index)
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index)


//XP System
totalXP = 0

current_XP = 0
xpForLevel = 100
currentLevel = 0

xpPercentage = current_XP / xpForLevel



//Health
totalHealth = 100

currentHealth = 100

//Attack Input
attackDirection = 0
damageMod = 1
attackSize = 1

//Traits Unlocked
dashAttack = false
invincibility = false
rage = false
speedUp = false
goodEyes = false


