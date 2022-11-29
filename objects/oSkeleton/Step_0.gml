/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

firingdelay -= 1;


if (state = states.ATTACK)
{

	if (firingdelay < 0) 
	{
				
			firingdelay = random_range(60,300);
		
			with (instance_create_layer(x,y,"Projectile",oBone))
			{
				randomize()
				speed = 2;
				image_xscale = .6
				image_yscale = .6
				direction = point_direction(x,y,oPlayerPar.x,oPlayerPar.y)
				image_angle = point_direction(x,y,oPlayerPar.x ,oPlayerPar.y) - 90;
			}
					
		} 
	
}
