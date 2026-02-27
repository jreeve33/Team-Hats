function scr_playerSpawn(){
	randomise()
	while players < 1{
		spawn_x = irandom_range(0, room_width)
		spawn_y = irandom_range(0, room_height)
		if tilemap_get_at_pixel(layer_tilemap_get_id("player_spawn"), spawn_x, spawn_y){
			instance_create_layer(spawn_x, spawn_y, "Instances", oPlayer)
			players++
		}
	}
}