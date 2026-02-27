function scr_dealEnemyDamage(){
	obj_player.player_health -= value
	if obj_player.player_health <= 0{
		instance_destroy(obj_player)
	}
}