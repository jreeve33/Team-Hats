function scr_spawn(){
view_x = camera_get_view_x(view_camera[0])
view_y = camera_get_view_y(view_camera[0])
view_w = camera_get_view_width(view_camera[0])
view_h = camera_get_view_height(view_camera[0])
if global.currentEnemyBudget < global.enemyBudget{
	spawn_x = irandom_range(0, room_width)
	spawn_y = irandom_range(0, room_height)
	if tilemap_get_at_pixel(tilemapSpawn, spawn_x + 16 , spawn_y + 32) and scr_wallCheck() == false{//if in spawnarea
		if not (spawn_x >= view_x - 100 && spawn_x <= view_x + view_w + 100  && spawn_y >= view_y - 100 && spawn_y <= view_y + view_h + 100) {//if not in camera view
			nearest_enemy = instance_nearest(spawn_x, spawn_y, oScientist1)
			if nearest_enemy == noone or point_distance(spawn_x, spawn_y, nearest_enemy.x, nearest_enemy.y) > 48{//dont spawn on another enemy
				instance_create_layer(spawn_x, spawn_y, "Instances", obj_type)
				global.currentEnemyBudget += obj_type.spawnValue
			}
		}
	}
}

}