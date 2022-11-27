/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(sprite_index, image_index, x,y, facing, 1, 0, c_white,1)

	if knockbackTime-- > 0 {
	shader_set(shWhite);
	draw_self();
	shader_reset()
	}