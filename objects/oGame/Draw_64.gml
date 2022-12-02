


//Stamina Bar
draw_sprite_stretched(sStaminaBar,
0,
55,
62,
(oPlayerKnight.stamina/oPlayerKnight.staminaMax) * staminaBarWidth,
staminaBarHeight)
draw_sprite_stretched(sEnergyBarBorder
,0
,20
,50
,250
,50)


//Health Bar
draw_sprite_stretched(sHealthBar,
0,
55,
32,
(oGame.hp/oPlayerKnight.maxHealth) * healthBarWidth,
healthBarHeight)
draw_sprite_stretched(sEnergyBarBorder
,0
,20
,20
,250
,50)




//Coin counter

draw_sprite_stretched(sUiFrame,0,20,930,200,100)
draw_sprite_stretched(sUiBackground,0,20,935,200,80)
draw_sprite(sUiCoin,0,70,980)
draw_set_font(fMedium)
draw_set_color(c_black)
draw_text(90,980,"x")
draw_set_font(fLarge)
if (oGame.coins < 100){
draw_text(125,955,oGame.coins)
}
 else draw_text(110,955,oGame.coins)
 
	



//Left & Right Mouse Button
draw_set_font(fMedium)
draw_set_color(c_white)
draw_sprite_stretched(oPlayerKnight.equippedLeftSprite,0,1650,20,100,100)
draw_text(1680,120,"LMB")
draw_sprite_stretched(oPlayerKnight.equippedRightSprite,0,1770,20,100,100)
draw_text(1800,120,"RMB")



