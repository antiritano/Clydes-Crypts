switch(state) {
	default:
	resetVariables()
	getInput()
	calcMovement()
	anim()
	//stamina
	if (stamina < 100 && stamina >= 0) stamina += .4;
	
	if (stamina < 0) stamina = 0
	//Attack
	firingdelay -= 1;
	if (mouse_check_button(attackButton) && firingdelay < 0 && stamina >= 25) 
	{
			firingdelay = 30;
			stamina -= 25
			with (instance_create_layer(x,y,"Projectile",oKnife))
			{
				speed = 4;
				direction = point_direction(x,y,mouse_x,mouse_y)
				image_angle = point_direction(x,y,mouse_x,mouse_y) - 90;
			
			}
	}
	//dash
	if (dashDelay < 0) playerSpeed = 1;
	dashing = false
	playerMoving = false
	dashDelay -= 1
	if (keyboard_check_pressed(rollButton) && stamina >= 10 && dashDelay < 0 && sprite_index != sKnightIdle)
	{
	dashDelay = 2;
	stamina -= 20;
	playerSpeed = 10;
	dashing = true
	if (dashing = true) 
	{
		part_type_sprite(oParticleSystem.particleTypeDash,oPlayerKnight.sprite_index,0,0,1)
		part_particles_create(oParticleSystem.particleSystem,x,y,oParticleSystem.particleTypeDash, 1)
	}

	}
	break;
}









