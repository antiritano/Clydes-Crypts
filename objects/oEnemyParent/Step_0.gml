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
		repeat(irandom_range(coinsMin,coinsMax))
		{
		instance_create_layer(x+random_range(0,8),y+random_range(0,8),"Instances",oCoin)
		oCoin.image_xscale = .7
		oCoin.image_yscale = .7
		}
		instance_destroy()
	break;
}












