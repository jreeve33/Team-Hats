var lay = layer_get_id("collision_map")

tilemap = layer_tilemap_get_id(lay)

if instance_exists(oPlayer){
	direction = point_direction(x,y,oPlayer.x, oPlayer.y)
	speed = 1
}

image_xscale = 0.5
image_yscale = 0.5

dir = point_direction(x,y, oPlayer.x, oPlayer.y)
image_angle = dir + 90