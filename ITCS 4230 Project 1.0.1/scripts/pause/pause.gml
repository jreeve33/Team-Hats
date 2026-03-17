function pause(){
	// Pause the game.
	global.paused = true;
	global.canAttack = false
	if instance_exists(oGuard1){
		oGuard1.canSwing = false
	}
	// Apply the following code to all instances...
	with (all) {
		// Save the instance's speed.
		paused_speed = speed;
	
		// Save the animation speed.
		paused_animation = image_speed;
	
		// Stop moving the instance.
		speed = 0;
	
		// Stop animation.
		//image_speed = 0;
	}
	
}