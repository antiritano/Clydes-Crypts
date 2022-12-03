// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function resetVariables() {
	left = 0
	right = 0
	up = 0
	down = 0
}


function getInput() {
	if keyboard_check(ord("A")) || keyboard_check(vk_left) left = 1;
	if keyboard_check(ord("D")) || keyboard_check(vk_right) right = 1;
	if keyboard_check(ord("W")) || keyboard_check(vk_up) up = 1;
	if keyboard_check(ord("S")) || keyboard_check(vk_down) down = 1;
}


function calcMovement() {
	aimDir = point_direction(x,y,mouse_x, mouse_y)
	hMove = right - left;
	yMove = down - up;
		
	var _facing = (aimDir < 90 or aimDir > 270)
	if _facing == 0 _facing = -1;
	facing = _facing
	
	if hMove != 0 or yMove != 0 {
		//get direction we are moving
		var _dir = point_direction(0,0,hMove, yMove)
		//get distance we are moving
		hMove = lengthdir_x(playerSpeed, _dir)
		yMove = lengthdir_y(playerSpeed, _dir)
		
		//add movement to player position
		x += hMove
		y += yMove
		
	}
	
}

function collision() {
	var _tx = x
	var _ty = y
	//move back to last position out of collision
	x = xprevious
	y = yprevious
	
	//get distance to move
	var _disx = abs(_tx - x)
	var _disy = abs(_ty - y)
	repeat(_disx) {
		if !place_meeting(x + sign(_tx - x),y, oSolid) x+=sign(_tx - x)
	}
		repeat(_disy) {
		if !place_meeting(x,y + sign(_ty - y), oSolid) y+=sign(_ty - y)
	}
}

function anim() {
	if hMove != 0 or yMove != 0 {
		sprite_index = sKnightMoving
	} else sprite_index = sKnightIdle
}
		
function dash() {
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
}

function knightAttacks() {
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
		
		break;
		case oQuake:
		if stamina >= 40 {
			firingdelayRight = 60;
			stamina -= 40
			instance_create_layer(x,y,"Projectile",oQuake)
			oQuake.image_angle = point_direction(x,y,mouse_x,mouse_y) - 90;
			oQuake.image_xscale = 1.5
			oQuake.image_yscale = 1.5
		}
		}
		break;
	}
}