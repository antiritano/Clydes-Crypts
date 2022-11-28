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
		//if (object_index == oSlime)
		//{
		//if path_index == -1 state = states.IDLE
		//} 
		enemyAnimation()
	break;
	
	case states.KNOCKBACK:
		calcKnockbackMovement();
		enemyAnimation()
	break;
	
	case states.DEAD:
		calcEntintyMovement();
		enemyAnimation()
		instance_create_layer(x,y,"Instances",oExplosion)
				oExplosion.image_xscale = .25
		oExplosion.image_yscale = .25
	spawnCoins(coinsMin,coinsMax)
		instance_destroy()
	break;
}












