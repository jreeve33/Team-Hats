randomise()
chance = irandom_range(0,3)
instance_create_layer(x, y, "Instances", oXPLarge)
if chance == 1{
	instance_create_layer(x, y, "Instances", oHealthPack)
}
