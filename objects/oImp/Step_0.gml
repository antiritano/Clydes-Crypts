/// @description Insert description here
// You can write your code in this editor


// Inherit the parent event
event_inherited();

firingdelay -= 1;


if (state = states.ATTACK)
{

	if (firingdelay < 0 && instance_number(oFireball) < 4) 
	{
				
			firingdelay = random_range(60,300);
		
			with (instance_create_layer(x,y,"Projectile",oFireball))
			{
				randomize()
				image_xscale = .25
				image_yscale = .25
				speed = 2;
				direction = point_direction(x,y,oPlayerPar.x,oPlayerPar.y)
				image_angle = point_direction(x,y,oPlayerPar.x ,oPlayerPar.y) - 90;
			}
					
		} 
	
}
