// If the game is paused...
/*
if (global.paused)
{
	// Exit this event while paused.
	exit;
}
*/

scr_playerMovement()
	
scr_playerSpriteHandler()

scr_playerAttacks()

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




