switch(state) {
	default:
	resetVariables()
	getInput()
	calcMovement()
	anim()
	//stamina
	if (stamina < 100 && stamina >= 0) stamina += .4;
	
	if (stamina < 0) stamina = 0
	//Left Attack	
	firingdelay -= 1;
	if (mouse_check_button(leftAttackButton) && firingdelay < 0) 
	{
		switch(equippedLeft){		
		case oKnife:
		if stamina >= 15 {
			firingdelay = 30;
			stamina -= 15
			with (instance_create_layer(x,y,"Projectile",oKnife))
			{
				speed = 4;
				direction = point_direction(x,y,mouse_x,mouse_y)
				image_angle = point_direction(x,y,mouse_x,mouse_y) - 90;
			}
					}
		}
		break;
	}
	
	//Right Attack	
	firingdelay -= 1;
	if (mouse_check_button(RightAttackButton) && firingdelay < 0) 
	{
		switch(equippedRight){		
		case oWarHammer:
		if stamina >= 40 {
			firingdelay = 60;
			stamina -= 40
			instance_create_layer(x,y,"Projectile",oWarHammer)
		}
		}
		break;
	}
	
	
	
	
	//dash
	if (dashDelay < 0) playerSpeed = 1;
	playerMoving = false
	dashDelay -= 1
	if (keyboard_check_pressed(rollButton) && stamina >= 10 && dashDelay < 0 && sprite_index != sKnightIdle)
	{
	alarm[0] = iFrames
	dashing = true
	dashDelay = 3;
	stamina -= 20;
	playerSpeed = 10;
	
	
	if (dashing = true) 
	{
	
		
		part_type_sprite(oParticleSystem.particleTypeDash,oPlayerKnight.sprite_index,0,0,1)
		part_type_scale(oParticleSystem.particleTypeDash,facing,1)
		part_particles_create(oParticleSystem.particleSystem,x,y,oParticleSystem.particleTypeDash, 1)
	}

	}
	break;
}









