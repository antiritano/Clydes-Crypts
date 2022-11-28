/// @description Insert description here
// You can write your code in this editor

instance_destroy()
	repeat(20){
					instance_create_layer(x,y,"Projectile",oParticle)
					oParticle.image_blend = c_orange
					oParticle.image_xscale = choose(.5,1,1.5)
					oParticle.image_yscale = choose(.5,1,1.5)
					}
instance_create_layer(x,y,"Instances",oBoxBroken)
