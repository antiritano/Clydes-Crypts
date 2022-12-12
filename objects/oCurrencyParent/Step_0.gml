/// @description Insert description here
// You can write your code in this editor

if place_meeting(x,y,oSolid)
{
move_towards_point(oPlayerPar.x,oPlayerPar.y,10)
} 

if (distance_to_object(oPlayerPar) < 500)
{
	moveSpeed += .2
move_towards_point(oPlayerPar.x,oPlayerPar.y,moveSpeed)

} 

