draw_set_font(silver)
draw_set_colour(c_white)
draw_set_halign(fa_center)
var _str = ""
var _str2 = ""

switch total_clicks{
	case 0:
		_str = "Wake up Saturn!"
		break
	case 1:
		_str = "I have freed you from those evil people."
		break
	case 2:
		_str = "You must get stronger and exact "
		_str2 ="your revenge on those who tortured you!"
		break
	case 3:
		_str ="Find the exit, and break"
		_str2 = "free from their grasp forever!"
		break
}

draw_text_transformed(1920 /2, 768 / 2, _str, 3,3,0)
draw_text_transformed(1920 /2, 768 / 2 + 75, _str2, 3,3,0)

draw_set_halign(fa_left)