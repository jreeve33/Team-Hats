/*
if instance_exists(oPlayer) && oPlayer._knockback{
		show_debug_message("HIT FRAME2");
	var _dir = point_direction(x, y, oPlayer.x, oPlayer.y) + 180; // away from enemy
	
	kb_dir = _dir;
	kb_speed = 6; // tweak strength
	moving = true
}
*/
if hitCooldown <= 0{
	show_debug_message("HIT FRAME1");
	health_scientist -= other.damage
	hitCooldown += 10
	instance_create_layer(x, y - 20, "Instances", oDamageNumber)
	if instance_exists(oPlayer) && oPlayer._knockback{
		show_debug_message("HIT FRAME2");
		var _dir = point_direction(x, y, oPlayer.x, oPlayer.y) + 180; // away from enemy
	
		kb_dir = _dir;
		kb_speed = 6; // tweak strength
		moving = true
	}
}


