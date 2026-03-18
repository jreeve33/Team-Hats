draw_set_font(fnt_large)
if near_exit && currentLevel >= 25{
	draw_text(600, 400, "Press E to escape!")
}
else if near_exit && currentLevel <= 25{
	draw_text(600, 400, "I'm not strong enough to break through the door yet!")
}