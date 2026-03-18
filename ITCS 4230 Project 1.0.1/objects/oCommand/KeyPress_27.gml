if !instance_exists(oPauseMenu) && !global.paused{
	instance_create_layer(x,y, "pause_menu", oPauseMenu)
}
else if instance_exists(oPauseMenu){
	instance_destroy(oPauseMenu)
}