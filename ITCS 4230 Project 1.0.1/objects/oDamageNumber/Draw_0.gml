draw_set_font(silverForDamageNumber)
font_enable_effects(silverForDamageNumber, true, {
	outlineEnable: true,
	outlineColor: c_black
})

draw_text(x, y, string(global.slashDamage))
