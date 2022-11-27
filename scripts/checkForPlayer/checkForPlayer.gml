// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function checkForPlayer(){
var distance = distance_to_object(oPlayerKnight);

if ((distance <= alertDistance) or alert) and distance > attackDistance {
	
	if calcPathTimer-- <= 0 {
		calcPathTimer = calcPathDelay

var foundPlayer = mp_grid_path(global.mp_grid, path, x,y, oPlayerKnight.x, oPlayerKnight.y, choose(0,1))
if foundPlayer {
	path_start(path, enemySpeed, path_action_stop, false)
}
	}
}
else {
	if distance < attackDistance {
		path_end();
	}
}
}
