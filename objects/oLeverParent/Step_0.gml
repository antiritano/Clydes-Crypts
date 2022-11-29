/// @description Insert description here
// You can write your code in this editor

if (distance_to_object(oPlayerPar) < 5 and sprite_index = sLever)
{
	if (keyboard_check_pressed(ord("E")) || keyboard_check_pressed(vk_enter)){
	sprite_index = sLeverOn
	alarm[1] = 1
	if (stayActive = false) alarm[0] = 20
	}
}