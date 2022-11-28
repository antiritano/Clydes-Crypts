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
		