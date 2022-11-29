/// @description Insert description here
// You can write your code in this editor
instance_destroy()
repeat(5)
{
with (instance_create_layer(x,y,"Projectile",oParticle)) {
	image_blend = c_white
}
}

