
function calcEntintyMovement() {
	//apply movement
	x += hsp;
	y += vsp;
	
	//slowdown
	
	hsp *= global.drag
	vsp *= global.drag
	
	checkIfStopped() 
}

function calcKnockbackMovement() {
	x+=hsp;
	y+=vsp
	hsp *= 0.91
	vsp *= 0.91
	
	checkIfStopped()
	if knockbackTime <= 0 state = states.IDLE
}
	
function checkIfStopped() {
	if abs(hsp) < 0.1 hsp = 0
	if abs(vsp) < 0.1 vsp = 0
}

function checkFacing() {
	if knockbackTime <= 0 {
	var _facing = sign(x - xp);
	if _facing != 0 facing = _facing
	}
}


function checkForPlayer(){
var distance = distance_to_object(oPlayerKnight);

if ((distance <= alertDistance) or alert) and distance > attackDistance {
	alert = true
	//should path be calculated
	if calcPathTimer-- <= 0 {
		calcPathTimer = calcPathDelay
		
//can we make a path to player
if x == xp and y == yp var _type = 0 else var _type = 1;
var foundPlayer = mp_grid_path(global.mp_grid, path, x,y, oPlayerKnight.x, oPlayerKnight.y, _type)
if foundPlayer {
	path_start(path, enemySpeed, path_action_stop, false)
}
	}
}
else {
	//are we close enough to attack
	if distance < attackDistance {
		state = states.ATTACK
	}
}
}


function enemyAnimation(){
switch(state) {
	case states.IDLE:
	sprite_index = sIdle

	break;

	case states.MOVE:
	sprite_index = sWalk

	break;
	
	case states.ATTACK:
	break;
	
	case states.DEAD:
	break;
}
//update previous position
xp = x;
yp = y;
}

function showHealthBar() {
	if hp != hpMax and hp > 0 {
		draw_healthbar(x-7,y-16,x+7,y-14, hp/hpMax*100, $003300, $3232FF, $00B200,0,1,1)
	}
}

