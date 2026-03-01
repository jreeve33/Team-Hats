//TileMap
var lay = layer_get_id("collision_map")

tilemap = layer_tilemap_get_id(lay)

//Sprite info
#region
sprite_bbox_left = sprite_get_bbox_left(sprite_index) - sprite_get_xoffset(sprite_index)
sprite_bbox_right = sprite_get_bbox_right(sprite_index) - sprite_get_xoffset(sprite_index)
sprite_bbox_top = sprite_get_bbox_top(sprite_index) - sprite_get_yoffset(sprite_index)
sprite_bbox_bottom = sprite_get_bbox_bottom(sprite_index) - sprite_get_yoffset(sprite_index)
#endregion


//XP System
#region
totalXP = 0

current_XP = 0
xpForLevel = 100
currentLevel = 0

xpPercentage = current_XP / xpForLevel

#endregion

//Health
#region
totalHealth = 100

currentHealth = 100
#endregion

//Attack Input
#region
attackDirection = 0
attackCdr = 0
damageMod = 1
attackSize = 1
#endregion

//Traits Unlocked
#region
lungeNum = 0
lunge = false
invincibility = false
rage = false
speedUp = false
goodEyes = false
#endregion

//Rage Shader
#region
color = function(r, g, b) constructor{
	red = r;
	blue = b;
	green = g;
	
	static toShaderValue = function(value){
		return value / 255;
	}
};

colorMatchMain = new color(251, 190, 190);
colorReplaceMain = new color(183, 5, 5);

colorMatchHighlight = new color(247, 217, 217)
colorReplaceHighlight = new color(219, 5, 5)

colorMatchLowlight = new color(202, 154, 154)
colorReplaceLowlight = new color(145, 5, 5)

sh_handle_range1 = shader_get_uniform(sdr_rageMain, "range");
sh_handle_match1 = shader_get_uniform(sdr_rageMain, "colorMatch1");
sh_handle_replace1 = shader_get_uniform(sdr_rageMain, "colorReplace1");

sh_handle_match2 = shader_get_uniform(sdr_rageMain, "colorMatch2");
sh_handle_replace2 = shader_get_uniform(sdr_rageMain, "colorReplace2");

sh_handle_match3 = shader_get_uniform(sdr_rageMain, "colorMatch3");
sh_handle_replace3 = shader_get_uniform(sdr_rageMain, "colorReplace3");
#endregion

