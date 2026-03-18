draw_set_font(silverForDamageNumber)
font_enable_effects(silverForDamageNumber, true, {
	outlineEnable: true,
	outlineColor: c_black
})
var damage = ds_map_find_value(global.swipe, "damage");
if instance_exists(oPlayer){
	damage += oPlayer.rage_damage_mod
}
draw_text(x, y, string(damage))
