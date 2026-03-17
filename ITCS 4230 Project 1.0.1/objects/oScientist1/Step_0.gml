if (global.paused){
	hspeed = 0
	vspeed = 0
}

if (kb_speed > 0) {
    hspeed = lengthdir_x(kb_speed, kb_dir);
    vspeed = lengthdir_y(kb_speed, kb_dir);

    kb_speed -= kb_friction;

    if (kb_speed < 0){
		moving = false
		kb_speed = 0
	}
	
}

else{
	//if player is close, run away
	scr_playerDetectionScientist()
}
if health_scientist <= 0{
	instance_create_layer(x, y, "Instances", oEnemyExplode)
	instance_destroy()
}

if hitCooldown > 0{
	hitCooldown--
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