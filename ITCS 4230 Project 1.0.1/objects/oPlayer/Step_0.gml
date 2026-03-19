// If the game is paused...

if (global.paused)
{
	// Exit this event while paused.
	exit;
}

//if health 
if currentHealth <= 0 {
	global.paused = true
	if !instance_exists(oYouDied){
		instance_create_layer(x, y, "pause_menu_buttons", oYouDied)
	}
} 

_speed = ds_map_find_value(global.traits, "speed");
_vision = ds_map_find_value(global.traits, "vision");
_immunity = ds_map_find_value(global.traits, "immunity");
_rage = ds_map_find_value(global.traits, "rage");
_knockback = ds_map_find_value(global.traits, "lunge");

scr_playerMovement()
	
scr_playerSpriteHandler()

scr_playerAttacks()

if attackCdr >= 0{
	attackCdr--
}

if hitCooldown >= 0{
	hitCooldown--
}

if _immunity{
	if invuln_timer >= 0{
		invuln_timer--
	}
}

if current_XP >= xpForLevel{
	if currentHealth < 70{
		currentHealth += 30
	}
	currentHealth = 100
	scr_levelUp()
}

if _rage{
	rage_damage_mod = 10
}


//Collision

mask_index = sSaturnDown

if place_meeting(x + hspeed + .1, y , tilemap){
	hspeed = 0
}

if place_meeting(x, y + vspeed , tilemap){
	vspeed = 0
}

if tilemap_get_at_pixel(escape_pad_id,x, y) and near_exit == false{
	near_exit = true
}
else if !tilemap_get_at_pixel(escape_pad_id,x, y){
	near_exit = false
}





