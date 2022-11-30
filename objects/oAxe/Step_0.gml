/// @description Insert description here
// You can write your code in this editor


image_angle += 12


if(point_distance(x,y,destinationX,destinationY)<speed){
returning = true
}




if (returning)  {
move_towards_point(oPlayerKnight.x,oPlayerKnight.y,3)
if place_meeting(x,y,oPlayerKnight){
	instance_destroy()
}
}