

//Horizontal collision
key_left = (keyboard_check(vk_left))
key_right = (keyboard_check(vk_right))
key_up = (keyboard_check(vk_up))
key_down = (keyboard_check(vk_down))



var moveHorizontal = key_right - key_left;
hsp = moveHorizontal * playerSpeed;
var moveVertical = key_down - key_up;
vsp = moveVertical * playerSpeed;

if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);	
	}
	hsp = 0;
}
x = x  + hsp;

//Vertical Collision


if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);	
	}
	vsp = 0;
}

y = y  + vsp;

//Animation

if (hsp > 0) sprite_index = sKnightMovingRight
if (hsp < 0) sprite_index = sKnightMovingLeft



