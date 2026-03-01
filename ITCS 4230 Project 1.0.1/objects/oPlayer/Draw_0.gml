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

shader_reset()