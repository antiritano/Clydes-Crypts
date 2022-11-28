/// @description Insert description here
// You can write your code in this editor
repeat(5)
{
with (instance_create_layer(x,y,"Projectile",oParticle)) {
	image_blend = c_orange
}
}
instance_destroy()
