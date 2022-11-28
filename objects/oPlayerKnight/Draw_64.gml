/// @description Insert description here
// You can write your code in this editor


draw_sprite(sStaminaBackground,0,staminaBarX,staminaBarY)
draw_sprite_stretched(sStaminaBar,0,staminaBarX,staminaBarY,(stamina/staminaMax) * staminaBarWidth, staminaBarHeight)
draw_sprite(sStaminaBorder,0,staminaBarX,staminaBarY)

draw_sprite(sHealthBackground,0,healthBarX,healthBarY)
draw_sprite_stretched(sHealthBar,0,healthBarX,healthBarY,(hp/maxHealth) * healthBarWidth, healthBarHeight)
draw_sprite(sHealthBorder,0,healthBarX,healthBarY)

