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
	firingdelayLeft -= 1;
	if (mouse_check_button(leftAttackButton) && firingdelayLeft < 0) 
	{
		switch(equippedLeft){		
		case oKnife:
		if stamina >= 15 {
			firingdelayLeft = 30;
			stamina -= 15
			with (instance_create_layer(x,y,"Projectile",oKnife))
			{
				speed = 4;
				direction = point_direction(x,y,mouse_x,mouse_y)
				image_angle = point_direction(x,y,mouse_x,mouse_y) - 90;
			}
					}
					break;
		case oBomb:
		if stamina >= 30 {
			firingdelayLeft = 30;
			stamina -= 30
			with (instance_create_layer(x,y,"Projectile",oBomb))
			{
			
				direction = point_direction(x,y,mouse_x,mouse_y)
				move_towards_point(mouse_x,mouse_y,oBomb.throwSpeed)
			
				
			}
					}
					break;
		case oAxe:
		if (stamina >= 30 && instance_exists(oAxe)= false) {
			firingdelayLeft = 30;
			stamina -= 30
			with (instance_create_layer(x,y,"Projectile",oAxe))
			{
			
				direction = point_direction(x,y,mouse_x,mouse_y)
				move_towards_point(mouse_x,mouse_y,3)
			
				
			}
					}
					break;
		}
		
	}
	
	//Right Attack	
	firingdelayRight -= 1;
	if (mouse_check_button(RightAttackButton) && firingdelayRight < 0) 
	{
		switch(equippedRight){		
		case oWarHammer:
		if stamina >= 40 {
			firingdelayRight = 60;
			stamina -= 40
			instance_create_layer(x,y,"Projectile",oWarHammer)
			oWarHammer.image_angle = point_direction(oPlayerKnight.x,oPlayerKnight.y,mouse_x,mouse_y)
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









