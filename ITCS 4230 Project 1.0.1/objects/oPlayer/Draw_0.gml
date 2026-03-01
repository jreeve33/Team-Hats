//rage shader
if rage == true{
	shader_set(sdr_rageMain)

	shader_set_uniform_f(sh_handle_range1, 1);
	shader_set_uniform_f(sh_handle_match1, 
		colorMatchMain.toShaderValue(colorMatchMain.red),
		colorMatchMain.toShaderValue(colorMatchMain.green),
		colorMatchMain.toShaderValue(colorMatchMain.blue)
	);

	shader_set_uniform_f(sh_handle_replace1, 
		colorMatchMain.toShaderValue(colorReplaceMain.red),
		colorMatchMain.toShaderValue(colorReplaceMain.green),
		colorMatchMain.toShaderValue(colorReplaceMain.blue)
	);
	
	shader_set_uniform_f(sh_handle_match2, 
		colorMatchHighlight.toShaderValue(colorMatchHighlight.red),
		colorMatchHighlight.toShaderValue(colorMatchHighlight.green),
		colorMatchHighlight.toShaderValue(colorMatchHighlight.blue)
	);

	shader_set_uniform_f(sh_handle_replace2, 
		colorMatchHighlight.toShaderValue(colorReplaceHighlight.red),
		colorMatchHighlight.toShaderValue(colorReplaceHighlight.green),
		colorMatchHighlight.toShaderValue(colorReplaceHighlight.blue)
	);
	
	shader_set_uniform_f(sh_handle_match3, 
		colorMatchLowlight.toShaderValue(colorMatchLowlight.red),
		colorMatchLowlight.toShaderValue(colorMatchLowlight.green),
		colorMatchLowlight.toShaderValue(colorMatchLowlight.blue)
	);

	shader_set_uniform_f(sh_handle_replace3, 
		colorMatchLowlight.toShaderValue(colorReplaceLowlight.red),
		colorMatchLowlight.toShaderValue(colorReplaceLowlight.green),
		colorMatchLowlight.toShaderValue(colorReplaceLowlight.blue)
	);
}

draw_self()

//Lunge Trait
if lunge == true{
	if ((sprite_index == sSaturnLeft) || sprite_index == sSaturnStoppedLeft){
		lunge_sprite_index = sLungeLeft
	}

	if ((sprite_index == sSaturnRight) || sprite_index == sSaturnStoppedRight){
		lunge_sprite_index = sLungeRight
	}

	if ((sprite_index == sSaturnDown) || sprite_index == sSaturnStoppedDown){
		lunge_sprite_index = sLungeDown
	}

	if ((sprite_index == sSaturnUp) || sprite_index == sSaturnStoppedUp){
		lunge_sprite_index = sLungeUp
	}
	
	draw_sprite_ext(lunge_sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
	
}
	
//Speed Trait
if speedUp == true{
	#region
	if ((sprite_index == sSaturnLeft) || sprite_index == sSaturnStoppedLeft){
		speed_sprite_index = sMoveSpeedLeft
	}

	if ((sprite_index == sSaturnRight) || sprite_index == sSaturnStoppedRight){
		speed_sprite_index = sMoveSpeedRight
	}

	if ((sprite_index == sSaturnUp) || sprite_index == sSaturnStoppedUp){
		speed_sprite_index = sMoveSpeedUp
	}
	
	if ((sprite_index == sSaturnDown) || sprite_index == sSaturnStoppedDown){
		speed_sprite_index = sMoveSpeedDown
	}
	
	
	draw_sprite_ext(speed_sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
	#endregion
}

shader_reset()