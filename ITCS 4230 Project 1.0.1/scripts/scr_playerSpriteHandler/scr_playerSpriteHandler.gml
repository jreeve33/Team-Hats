function scr_playerSpriteHandler(){
	// If sprite is not the hit sprite,
	// meaning the hero isn't currently being hit...
	if (sprite_index != sSaturnSheet){
		// If speed is over 0...
		if (hspeed > 0)
		{
			// Set sprite to the running sprite.
			sprite_index = sSaturnRight;
		}
		
		if (hspeed < 0)
		{
			// Set sprite to the running sprite.
			sprite_index = sSaturnLeft;
		}
		
		if (vspeed < 0)
		{
			// Set sprite to the running sprite.
			sprite_index = sSaturnUp;
		}
		
		if (vspeed > 0)
		{
			// Set sprite to the running sprite.
			sprite_index = sSaturnDown;
		}
	
		if speed == 0{
			if direction > 135 &&  direction < 225{
				sprite_index = sSaturnStoppedLeft
			}
			
			if direction > 225 &&  direction < 315{
				sprite_index = sSaturnStoppedDown
			}
			
			if (direction > 315 &&  direction <= 360) or (direction >= 0 &&  direction <= 45){
				sprite_index = sSaturnStoppedRight
			}
			
			if direction > 45 &&  direction < 135{
				sprite_index = sSaturnStoppedUp
			}
		}
	}
}