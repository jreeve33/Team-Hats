function scr_wallCheck(){
	if tilemap_get_at_pixel(layer_tilemap_get_id("collision_map"), spawn_x + 34 , spawn_y + 34) or 
		tilemap_get_at_pixel(layer_tilemap_get_id("collision_map"), spawn_x - 34 , spawn_y - 34){
			return true
	}
	return false
}