function scr_autoAttack() {

    // Get attack speed modifier
    var _attackCDR = ds_map_find_value(global.swipe, "attack_speed");

    // Find nearest enemy (replace oEnemy with your parent enemy object if needed)
    var _target = instance_nearest(x, y, oEnemy);

    if (instance_exists(_target)) {

        var _dist = point_distance(x, y, _target.x, _target.y);
        var _range = 48; // tweak this for how far player can attack

        // Only attack if close enough
        if (_dist <= _range) {

            if (oPlayer.attackCdr <= 0) {

                // Reset cooldown
                oPlayer.attackCdr = 25 * _attackCDR;

                // Get direction to enemy
                var _dir = point_direction(x, y, _target.x, _target.y);

                // Determine cardinal direction
                if (_dir >= 45 && _dir < 135) {
                    // UP
                    oPlayer.attackDirection = 1;
                    if (oPlayer.speed <= 0) {
                        sprite_index = sSaturnStoppedUp;
                        oPlayer.direction = 90;
                    }
                    instance_create_layer(x, y - 16 - speed, "Instances", oSlash);

                } else if (_dir >= 135 && _dir < 225) {
                    // LEFT
                    oPlayer.attackDirection = 2;
                    if (oPlayer.speed <= 0) {
                        sprite_index = sSaturnStoppedLeft;
                        oPlayer.direction = 180;
                    }
                    instance_create_layer(x - 16 - speed, y, "Instances", oSlash);

                } else if (_dir >= 225 && _dir < 315) {
                    // DOWN
                    oPlayer.attackDirection = 4;
                    if (oPlayer.speed <= 0) {
                        sprite_index = sSaturnStoppedDown;
                        oPlayer.direction = 270;
                    }
                    instance_create_layer(x, y + 16 + speed, "Instances", oSlash);

                } else {
                    // RIGHT
                    oPlayer.attackDirection = 0;
                    if (oPlayer.speed <= 0) {
                        sprite_index = sSaturnStoppedRight;
                        oPlayer.direction = 0;
                    }
                    instance_create_layer(x + 16 + speed, y, "Instances", oSlash);
                }
            }
        }
    }
}