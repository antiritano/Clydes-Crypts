/// @description Insert description here
// You can write your code in this editor

particleSystem = part_system_create()

particleTypeDash = part_type_create()

//part_type_sprite(particleTypeDash,oPlayerKnight.image_index,0,0,1)
part_type_size(particleTypeDash, 1,1,0,0);

part_type_life( particleTypeDash, 20,20)
part_type_alpha3(particleTypeDash,0.5,0.3,0.1)

part_type_color1(particleTypeDash,c_white)