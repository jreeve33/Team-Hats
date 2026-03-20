draw_sprite(sShowControlsButton, 0, x, y);
draw_set_colour(c_white)
if show_controls{
	//controls
	draw_sprite(sControlsPanel,0, x - 600, y + 10)
	draw_text_transformed(x-840, y -270, "Use the arrow keys", 2.5, 2.5, 0)
	draw_text_transformed(x-840, y - 170, "to do a directional", 2.5, 2.5, 0)
	draw_text_transformed(x-840, y - 70, "attack.", 2.5, 2.5, 0)
	
	draw_sprite(sW, 0, x- 720, y + 40)
	draw_sprite(sA, 0, x- 640, y + 37)
	draw_sprite(sS, 0, x- 560, y + 37)
	draw_sprite(sD, 0, x- 480, y + 37)
	draw_text_transformed(x-820, y +80, "Use WASD to move.", 2.5, 2.5, 0)
	
	draw_text_transformed(x - 820, y + 180, "Press X to turn", 2.5, 2.5, 0)
	draw_text_transformed(x - 820, y + 280, "on Auto Attack", 2.5, 2.5, 0)
	
	
	if room == Lab
	//cheat codes
	draw_sprite(sMenuBacking,0, x + 600, y + 10)
	draw_text_transformed(x+370, y -340, "Cheat Codes", 2.5, 2.5, 0)
	
	draw_text_transformed(x+370, y -240, "M - Enable cheats", 2.5, 2.5, 0)
	draw_text_transformed(x+370, y -140, "P - Hit Level 20", 2.5, 2.5, 0)
	draw_text_transformed(x+370, y -40, "L - Level up once", 2.5, 2.5, 0)
	draw_text_transformed(x+370, y +60, "O - Escapefacility", 2.5, 2.5, 0)
	draw_text_transformed(x+370, y +160, "K - Kill thineself", 2.5, 2.5, 0)
}