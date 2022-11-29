/// @description Insert description here
// You can write your code in this editor

switch (global.spawnEnemy)
{
case enemies.NONE:
break;
case enemies.SKELETON:
instance_create_layer(x,y,"Instances",oSkeleton)
alarm[0] = 1
break;
case enemies.IMP:
instance_create_layer(x,y,"Instances",oImp)
alarm[0] = 1
break;
case enemies.SLIME:
instance_create_layer(x,y,"Instances",oSlime)
alarm[0] = 1
break;
}

