if can_escape and instance_exists(oPlayer){
	rotation = point_direction(x,y, oPlayer.x, oPlayer.y)
	var _cx = display_get_gui_width() / 2;
	var _cy = display_get_gui_height() / 2;

	draw_sprite_ext(sArrowOut, 0, _cx, _cy - 150, 4, 4, rotation +90, c_white, 1);
}