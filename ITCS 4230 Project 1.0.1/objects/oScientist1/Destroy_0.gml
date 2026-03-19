instance_create_layer(x, y, "Instances", oXP)

global.enemiesKilled += 1

randomise()
chance = irandom_range(0,100)
if chance == 1{
	instance_create_layer(x, y, "Instances", oHealthPack)
}