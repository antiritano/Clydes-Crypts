/// @description Insert description here
// You can write your code in this editor


switch(state) {
	case states.IDLE:
		calcEntintyMovement();
		checkForPlayer()
		if path_index != -1 state = states.MOVE
		enemyAnimation()
	break;

	case states.MOVE:
		calcEntintyMovement();
		checkForPlayer();
		checkFacing();
		if path_index == -1 state = states.IDLE
		enemyAnimation();
	break;
	
	case states.ATTACK:
		calcEntintyMovement();
		checkForPlayer();
		checkFacing();
		if path_index == -1 state = states.IDLE
		enemyAnimation()
	break;
	
	case states.KNOCKBACK:
		calcKnockbackMovement();
		enemyAnimation()
	break;
	
	case states.DEAD:
		calcEntintyMovement();
		enemyAnimation()
		instance_destroy()
	break;
}












