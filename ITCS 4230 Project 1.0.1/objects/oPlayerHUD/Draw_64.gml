if instance_exists(oPlayer){
	var _xp = oPlayer.current_XP;
    var _level = max(1, oPlayer.xpForLevel); 
    var _xpPercent = clamp(_xp / _level, 0, 1);
    var _xpNum = 285 * _xpPercent;
	var _max = 400;
	var _invuln_percent = 1 - (oPlayer.invuln_timer / _max);
	var _invulnmeter = 60 * _invuln_percent;
	
	draw_sprite(sHUDhp, 1, 8, 0)
	draw_healthbar(175, 35, 460, 56, oPlayer.currentHealth, noone, c_red, c_red, 0, true, true)
	draw_sprite_stretched(sXPbarempty, 0, 175, 72, 285, 21)
	draw_sprite_stretched_ext(sXPbarfull, 0, 175, 72, _xpNum, 21, c_aqua, 1)
	draw_set_font(silver)
	draw_text(185, 122, "Level: " + string(oPlayer.currentLevel))
	
	
	
	
	if (variable_instance_exists(oPlayer, "_knockback") && oPlayer._knockback) {
        draw_sprite(sLungeIcon, 1, 60, 205);
    }
	
	if (variable_instance_exists(oPlayer, "_speed") && oPlayer._speed) {
        draw_sprite(sMoveSpeedIcon, 1, 112, 205);
    }
	
	if (variable_instance_exists(oPlayer, "_immunity") && oPlayer._immunity) {
		if oPlayer.invuln_timer == 0{
			draw_sprite(sInvulnIcon1, 1, 124, 205)
		}
		else{
			draw_sprite_stretched(sInvulnIcon1, 0, 134, 176, _invulnmeter, 58);
		}
    }
	
	if (variable_instance_exists(oPlayer, "_rage") && oPlayer._rage) {
        draw_sprite(sRageIcon, 1, 226, 208);
    }
	
	if (variable_instance_exists(oPlayer, "_vision") && oPlayer._vision) {
        draw_sprite(sVisionIcon, 1, 324, 205);
    }
	//draw_text(900, 8, string(global.timer))
	
}