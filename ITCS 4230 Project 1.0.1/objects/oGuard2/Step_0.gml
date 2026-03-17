if (global.paused) exit;
if (kb_speed > 0) {
    hsp = lengthdir_x(kb_speed, kb_dir);
    vsp = lengthdir_y(kb_speed, kb_dir);

    kb_speed -= kb_friction;

    if (kb_speed < 0) kb_speed = 0;
}
else{
	scr_huntPlayer()
	if (point_distance(x, y, oPlayer.x, oPlayer.y) < 80) and global.canAttack == true{ 
		direction = point_direction(x, y, oPlayer.x, oPlayer.y)
		speed = 0
		
		if direction >= 90 &&  direction <= 270{
			sprite_index = swingLeft
		}
		
		else{
			sprite_index = swing
		}
		
		if canSwing == true{
			canSwing = false
			instance_create_depth(x, y, -1, oBullet)
		}
	}

	if hitCooldown > 0{
		hitCooldown--
	}

	if attackCooldown > 0{
		attackCooldown--
	}
}

var buffer = 12; // pixels away from wall

// Horizontal collision
if (hspeed != 0) {
    var dir = sign(hspeed);
    var remaining = abs(hspeed);

    while (remaining > 0) {
        // Check buffer distance ahead
        if (tilemap_get_at_pixel(tilemap, x + dir * (1 + buffer), y)) break;
        x += dir;
        remaining -= 1;
    }

    hspeed = 0;
}

// Vertical collision
if (vspeed != 0) {
    var dir = sign(vspeed);
    var remaining = abs(vspeed);

    while (remaining > 0) {
        if (tilemap_get_at_pixel(tilemap, x, y + dir * (1 + buffer))) break;
        y += dir;
        remaining -= 1;
    }

    vspeed = 0;
}