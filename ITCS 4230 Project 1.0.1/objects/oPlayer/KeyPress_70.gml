if _immunity{
	if invuln_timer <= 0{
		instance_create_layer(x,y,"Instances", oBubble)
		invuln_timer = 400
	}
}
