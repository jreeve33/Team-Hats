audio_play_sound(enemyDying, 1, false)
randomise()
chance = irandom_range(0,8)
instance_create_layer(x, y, "Instances", oXPLarge)
if chance == 1{
	instance_create_layer(x, y, "Instances", oHealthPack)
}

global.enemiesKilled += 1
