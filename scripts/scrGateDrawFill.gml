var i, tempW, tempH, tempX, tempY;
for (i = 0; i < lockCount; i += 1)
{
    if (lock[i, 0] == sprCamera)
    {
        tempW = sprite_get_width(lock[i, 6])
        tempH = sprite_get_height(lock[i, 6])
        tempX = ((x + lock[i, 4]) - sprite_get_xoffset(lock[i, 6]))
        tempY = ((y + lock[i, 5]) - sprite_get_yoffset(lock[i, 6]))
        draw_sprite_ext(sprDGoldGrad, floor(goldIndex), tempX, tempY, (tempW / 64), (tempH / 64), 0, c_white, 1)
    }
    else if (lock[i, 0] == sprPlayerFall)
    {
        tempW = sprite_get_width(lock[i, 6])
        tempH = sprite_get_height(lock[i, 6])
        tempX = ((x + lock[i, 4]) - sprite_get_xoffset(lock[i, 6]))
        tempY = ((y + lock[i, 5]) - sprite_get_yoffset(lock[i, 6]))
        draw_sprite_ext(sprDPureGrad, floor(goldIndex), tempX, tempY, (tempW / 64), (tempH / 64), 0, c_white, 1)
    }
    else if (lock[i, 0] == sprPlayerRunning)
    {
        tempW = sprite_get_width(lock[i, 6])
        tempH = sprite_get_height(lock[i, 6])
        tempX = ((x + lock[i, 4]) - sprite_get_xoffset(lock[i, 6]))
        tempY = ((y + lock[i, 5]) - sprite_get_yoffset(lock[i, 6]))
        draw_sprite_ext(sprDStoneTexture, 0, tempX, tempY, (tempW / 64), (tempH / 64), 0, c_white, 1)
    }
    else if (lock[i, 0] == sprPlayerFall2)
    {
        shader_set(shdRainbowStripe2)
        draw_sprite_ext(lock[i, 6], 2, (x + lock[i, 4]), (y + lock[i, 5]), 1, 1, 0, make_color_rgb(180, 150, 0), 1)
        shader_reset()
        if (colorCopy == 0)
            draw_sprite_ext(lock[i, 6], 4, (x + lock[i, 4]), (y + lock[i, 5]), 1, 1, 0, c_white, 1)
        else if (colorCopy == 11)
            draw_sprite_ext(lock[i, 6], 5, (x + lock[i, 4]), (y + lock[i, 5]), 1, 1, 0, c_white, 1)
        else if (colorCopy == 13)
            draw_sprite_ext(lock[i, 6], 6, (x + lock[i, 4]), (y + lock[i, 5]), 1, 1, 0, c_white, 1)
        else if (colorCopy != 12)
            draw_sprite_ext(lock[i, 6], 3, (x + lock[i, 4]), (y + lock[i, 5]), 1, 1, 0, scrGetLockColor(lock[i, 0]), 1)
    }
    else
        draw_sprite_ext(lock[i, 6], 2, (x + lock[i, 4]), (y + lock[i, 5]), 1, 1, 0, scrGetLockColor(lock[i, 0]), 1)
}
draw_set_color(c_white)
