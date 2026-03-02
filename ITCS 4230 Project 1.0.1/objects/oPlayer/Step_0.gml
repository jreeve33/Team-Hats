// If the game is paused...

if (global.paused)
{
	// Exit this event while paused.
	exit;
}

_speed = ds_map_find_value(global.traits, "speed");
_vision = ds_map_find_value(global.traits, "vision");
_immunity = ds_map_find_value(global.traits, "immunity");
_rage = ds_map_find_value(global.traits, "rage");
_lunge = ds_map_find_value(global.traits, "lunge");

scr_playerMovement()
	
scr_playerSpriteHandler()

scr_playerAttacks()

if attackCdr >= 0{
	attackCdr--
}


if current_XP >= xpForLevel{
	scr_levelUp()
}



//Collision

mask_index = sSaturnDown

if place_meeting(x + hspeed + .1, y , tilemap){
	hspeed = 0
}

if place_meeting(x, y + vspeed , tilemap){
	vspeed = 0
}
alarm[0] = game_get_speed(fps) / 2




