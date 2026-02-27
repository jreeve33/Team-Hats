if instance_exists(oPlayer){
	var _xp = oPlayer.current_XP
	var _level = oPlayer.xpForLevel
	var _xpPercent = _xp / _level	
	var _xpNum = 285 * _xpPercent
	
	draw_sprite(sHUDhp, 1, 8, 0)
	draw_healthbar(175, 35, 460, 56, oPlayer.totalHealth, noone, c_fuchsia, c_red, 0, true, true)
	draw_sprite_stretched(sXPbarempty, 0, 175, 72, 285, 21)
	draw_sprite_stretched_ext(sXPbarfull, 0, 175, 72, _xpNum, 21, c_aqua, 1)
	draw_set_font(silver)
	draw_text(185, 112, "Level: " + string(oPlayer.currentLevel))
	
	draw_text(900, 8, string(global.timer))
	
}