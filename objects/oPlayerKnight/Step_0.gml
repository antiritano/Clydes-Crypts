//stamina
if (stamina < 100 && stamina >= 25) stamina += .2;
if (stamina < 25 && stamina >= 0) stamina += .1
if (stamina < 0) stamina = 0


//Horizontal collision
var moveHorizontal = (keyboard_check(key_right)) - (keyboard_check(key_left));
hsp = moveHorizontal * playerSpeed;
var moveVertical = (keyboard_check(key_down)) - (keyboard_check(key_up));
vsp = moveVertical * playerSpeed;
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);	
	}
	hsp = 0;
}
x = x  + hsp;

//Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);	
	}
	vsp = 0;
}

y = y  + vsp;


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
if (keyboard_check(key_right) || keyboard_check(key_left) || keyboard_check(key_up) || keyboard_check(key_down)) 
{
playerMoving = true
}
dashDelay -= 1
if (keyboard_check_pressed(rollButton) && stamina >= 10 && dashDelay < 0 && playerMoving = true)
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


//Animation
if (hsp > 0) sprite_index = sKnightMovingRight
if (hsp < 0) sprite_index = sKnightMovingLeft
if (keyboard_check_released(key_left)  && !keyboard_check(key_right)) sprite_index = sKnightIdleLeft
if (keyboard_check_released(key_right)  && !keyboard_check(key_left)) sprite_index = sKnightIdleRight

if (keyboard_check_released(key_up))
{
	if (sprite_index = sKnightMovingLeft || sprite_index = sKnightIdleLeft){
	sprite_index = sKnightIdleLeft
}
	else {
	sprite_index = sKnightIdleRight
	}
}

if (keyboard_check_released(key_down))
{	
	if (sprite_index = sKnightMovingLeft || sprite_index = sKnightIdleLeft){
	sprite_index = sKnightIdleLeft
}
	else {
	sprite_index = sKnightIdleRight
	}
}
	




