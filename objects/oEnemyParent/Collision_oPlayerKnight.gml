/// @description Insert description here
// You can write your code in this editor

if (canAttack and oPlayerKnight.dashing = false) {
		canAttack = false;
		alarm[0] = attackCooldown
		damageEntinty(oPlayerKnight, oEnemyParent, damage, knockbackTime);
		other.knockbackTime = 5
	}