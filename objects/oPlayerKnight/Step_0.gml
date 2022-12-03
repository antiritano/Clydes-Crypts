switch(state) {
	default:
	resetVariables()
	getInput()
	calcMovement()
	anim()
	dash()
	knightAttacks()
	//stamina
	if (stamina < 100 && stamina >= 0) stamina += .4;
	if (stamina < 0) stamina = 0
	break;
}











