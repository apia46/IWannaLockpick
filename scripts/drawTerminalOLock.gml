var i, lX, lY, lC, tempW, tempH, tempX, tempY, lInd;
i = argument0
lX = argument1
lY = argument2
lC = argument3
if (oCol[i] == 0)
{
    tempW = sprite_get_width(sprLockAny)
    tempH = sprite_get_height(sprLockAny)
    tempX = (lX - sprite_get_xoffset(sprLockAny))
    tempY = (lY - sprite_get_yoffset(sprLockAny))
    draw_sprite_ext(sprDGoldGrad, floor(goldIndex), tempX, tempY, (tempW / 64), (tempH / 64), 0, c_white, 1)
}
else if (oCol[i] == 11)
{
    tempW = sprite_get_width(sprLockAny)
    tempH = sprite_get_height(sprLockAny)
    tempX = (lX - sprite_get_xoffset(sprLockAny))
    tempY = (lY - sprite_get_yoffset(sprLockAny))
    draw_sprite_ext(sprDPureGrad, floor(goldIndex), tempX, tempY, (tempW / 64), (tempH / 64), 0, c_white, 1)
}
else if (oCol[i] == 13)
{
    tempW = sprite_get_width(sprLockAny)
    tempH = sprite_get_height(sprLockAny)
    tempX = (lX - sprite_get_xoffset(sprLockAny))
    tempY = (lY - sprite_get_yoffset(sprLockAny))
    draw_sprite_ext(sprDStoneTexture, 0, tempX, tempY, (tempW / 64), (tempH / 64), 0, c_white, 1)
}
else if (oCol[i] == 12)
{
    shader_set(shdRainbowStripe2)
    draw_sprite_ext(sprLockAny, 2, lX, lY, 1, 1, 0, make_color_rgb(180, 150, 0), 1)
    shader_reset()
}
else
    draw_sprite_ext(sprLockAny, 2, lX, lY, 1, 1, 0, lC, 1)
lInd = 0
if global.omegaKey[oCol[i]]
    lInd = 1
draw_sprite(sprLockAny, lInd, lX, lY)
draw_sprite(sprSymbols, (17 + lInd), lX, lY)
