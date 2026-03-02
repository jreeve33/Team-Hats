draw_set_font(silverForDamageNumber)
font_enable_effects(silverForDamageNumber, true, {
	outlineEnable: true,
	outlineColor: c_black
})
var damage = ds_map_find_value(global.swipe, "damage");
draw_text(x, y, string(damage))
