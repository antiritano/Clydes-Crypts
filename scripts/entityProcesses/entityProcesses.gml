// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function damageEntinty(_tid,_sid,_damage,_time){
	///@arg tid taget_id
	///@arg  source_id
	///@arg  how much damage
	///@arg  how long to knockback
	
	with(_tid) {
		hp -= _damage;
		var _dead = isDead();
		path_end();
		//set knockback distance
		if _dead var _dis = 1 else var _dis = 1;
		var _dir = point_direction(_sid.x, _sid.y, x, y)
		hsp += lengthdir_x(_dis,_dir);
		vsp += lengthdir_y(_dis,_dir)
		alert = true;
		knockbackTime = _time
		return _dead;
			
}
}

function isDead(){
	if state != states.DEAD {
		if hp <= 0 {
			state = states.DEAD
			hp = 0;
			switch(object_index) {
				default:
					repeat(20){
					instance_create_layer(x,y,"Projectile",oParticleBlood)
					oParticleBlood.image_xscale = choose(1,2,3)
					oParticleBlood.image_yscale = choose(1,2,3)
					}
	
				break;
				case oPlayerKnight:
						repeat(20){
						instance_create_layer(x,y,"Projectile",oParticleBlood)
						oParticleBlood.image_xscale = choose(1,2,3)
						oParticleBlood.image_yscale = choose(1,2,3)
						}
	
				break;
			}
			return true;
					
		}
	} else return true;
}


	