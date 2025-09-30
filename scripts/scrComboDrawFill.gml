var tempColor, _gSprite, i, ix, iy, tempW, tempH, tempX, tempY;
tempColor = colorSpend
if browned
{
    colorSpend = 10
    scrComboCFunc()
}
if (colorSpend == 0)
    draw_sprite_ext(sprDGoldGrad, floor(goldIndex), x, y, (w / 2), (h / 2), 0, c_white, 1)
else if (colorSpend == 11)
    draw_sprite_ext(sprDPureGrad, floor(goldIndex), x, y, (w / 2), (h / 2), 0, c_white, 1)
else if (colorSpend == 13)
    draw_sprite_ext(sprDStoneTexture, 0, x, y, (w * 0.5), (h * 0.5), 0, c_white, 1)
else
{
    if (colorSpend == 12)
        shader_set(shdRainbowStripe2)
    draw_sprite_part_ext(sprDoorBig, 4, 0, 0, 16, 16, x, y, 1, 1, c[1], 1)
    draw_sprite_part_ext(sprDoorBig, 4, 48, 0, 16, 16, ((x + (32 * w)) - 16), y, 1, 1, c[1], 1)
    draw_sprite_part_ext(sprDoorBig, 4, 0, 48, 16, 16, x, ((y + (32 * h)) - 16), 1, 1, c[1], 1)
    draw_sprite_part_ext(sprDoorBig, 4, 48, 48, 16, 16, ((x + (32 * w)) - 16), ((y + (32 * h)) - 16), 1, 1, c[1], 1)
    draw_sprite_part_ext(sprDoorBig, 4, 16, 16, 16, 16, (x + 8), (y + 8), ((w * 2) - 1), ((h * 2) - 1), c[1], 1)
    if (w > 1)
    {
        draw_sprite_part_ext(sprDoorBig, 1, 16, 0, 16, 16, (x + 16), y, ((w - 1) * 2), 1, c[0], 1)
        draw_sprite_part_ext(sprDoorBig, 3, 16, 48, 16, 16, (x + 16), ((y + (32 * h)) - 16), ((w - 1) * 2), 1, c[2], 1)
    }
    if (h > 1)
    {
        draw_sprite_part_ext(sprDoorBig, 2, 0, 16, 16, 16, x, (y + 16), 1, ((h - 1) * 2), c[1], 1)
        draw_sprite_part_ext(sprDoorBig, 2, 48, 16, 16, 16, ((x + (32 * w)) - 16), (y + 16), 1, ((h - 1) * 2), c[1], 1)
    }
    draw_sprite_part_ext(sprDoorBig, 1, 0, 0, 16, 16, x, y, 1, 1, c[0], 1)
    draw_sprite_part_ext(sprDoorBig, 1, 48, 0, 16, 16, ((x + (32 * w)) - 16), y, 1, 1, c[0], 1)
    draw_sprite_part_ext(sprDoorBig, 2, 0, 0, 16, 16, x, y, 1, 1, c[1], 1)
    draw_sprite_part_ext(sprDoorBig, 2, 48, 0, 16, 16, ((x + (32 * w)) - 16), y, 1, 1, c[1], 1)
    draw_sprite_part_ext(sprDoorBig, 2, 0, 48, 16, 16, x, ((y + (32 * h)) - 16), 1, 1, c[1], 1)
    draw_sprite_part_ext(sprDoorBig, 2, 48, 48, 16, 16, ((x + (32 * w)) - 16), ((y + (32 * h)) - 16), 1, 1, c[1], 1)
    draw_sprite_part_ext(sprDoorBig, 3, 0, 48, 16, 16, x, ((y + (32 * h)) - 16), 1, 1, c[2], 1)
    draw_sprite_part_ext(sprDoorBig, 3, 48, 48, 16, 16, ((x + (32 * w)) - 16), ((y + (32 * h)) - 16), 1, 1, c[2], 1)
    if (colorSpend == 12)
        shader_reset()
}
if ((colorSpend == 12) && (colorCopy != 12))
{
    if (colorCopy == 0)
    {
        _gSprite = sprDoorGlitchGold
        c[0] = 16777215
        c[1] = 16777215
        c[2] = 16777215
    }
    else if (colorCopy == 11)
    {
        _gSprite = sprDoorGlitchPure
        c[0] = 16777215
        c[1] = 16777215
        c[2] = 16777215
    }
    else if (colorCopy == 13)
    {
        _gSprite = sprDoorGlitchStone
        c[0] = 16777215
        c[1] = 16777215
        c[2] = 16777215
    }
    else
    {
        _gSprite = sprDoorGlitch
        colorSpend = colorCopy
        scrComboCFunc()
    }
    draw_sprite_part_ext(_gSprite, 4, 0, 0, 16, 16, x, y, 1, 1, c[1], 1)
    draw_sprite_part_ext(_gSprite, 4, 48, 0, 16, 16, ((x + (32 * w)) - 16), y, 1, 1, c[1], 1)
    draw_sprite_part_ext(_gSprite, 4, 0, 48, 16, 16, x, ((y + (32 * h)) - 16), 1, 1, c[1], 1)
    draw_sprite_part_ext(_gSprite, 4, 48, 48, 16, 16, ((x + (32 * w)) - 16), ((y + (32 * h)) - 16), 1, 1, c[1], 1)
    for (i = 0; i < (2 * (w - 1)); i += 1)
    {
        draw_sprite_part_ext(_gSprite, 4, 16, 0, 16, 16, (x + (16 * (i + 1))), y, 1, 1, c[1], 1)
        draw_sprite_part_ext(_gSprite, 4, 16, 48, 16, 16, (x + (16 * (i + 1))), ((y + (32 * h)) - 16), 1, 1, c[1], 1)
    }
    for (i = 0; i < (2 * (h - 1)); i += 1)
    {
        draw_sprite_part_ext(_gSprite, 4, 0, 16, 16, 16, x, (y + (16 * (i + 1))), 1, 1, c[1], 1)
        draw_sprite_part_ext(_gSprite, 4, 48, 16, 16, 16, ((x + (32 * w)) - 16), (y + (16 * (i + 1))), 1, 1, c[1], 1)
    }
    for (ix = 0; ix < ((2 * w) - 3); ix += 1)
    {
        for (iy = 0; iy < ((2 * h) - 3); iy += 1)
            draw_sprite_part_ext(_gSprite, 4, 16, 16, 32, 32, ((x + 32) + (16 * (ix - 1))), ((y + 32) + (16 * (iy - 1))), 1, 1, c[1], 1)
    }
    for (i = 0; i < (2 * (w - 1)); i += 1)
    {
        draw_sprite_part_ext(_gSprite, 0, 16, 0, 16, 16, (x + (16 * (i + 1))), y, 1, 1, c[0], 1)
        draw_sprite_part_ext(_gSprite, 2, 16, 48, 16, 16, (x + (16 * (i + 1))), ((y + (32 * h)) - 16), 1, 1, c[2], 1)
    }
    for (i = 0; i < (2 * (h - 1)); i += 1)
    {
        draw_sprite_part_ext(_gSprite, 1, 0, 16, 16, 16, x, (y + (16 * (i + 1))), 1, 1, c[1], 1)
        draw_sprite_part_ext(_gSprite, 1, 48, 16, 16, 16, ((x + (32 * w)) - 16), (y + (16 * (i + 1))), 1, 1, c[1], 1)
    }
    draw_sprite_part_ext(_gSprite, 0, 0, 0, 16, 16, x, y, 1, 1, c[0], 1)
    draw_sprite_part_ext(_gSprite, 0, 48, 0, 16, 16, ((x + (32 * w)) - 16), y, 1, 1, c[0], 1)
    draw_sprite_part_ext(_gSprite, 1, 0, 0, 16, 16, x, y, 1, 1, c[1], 1)
    draw_sprite_part_ext(_gSprite, 1, 48, 0, 16, 16, ((x + (32 * w)) - 16), y, 1, 1, c[1], 1)
    draw_sprite_part_ext(_gSprite, 1, 0, 48, 16, 16, x, ((y + (32 * h)) - 16), 1, 1, c[1], 1)
    draw_sprite_part_ext(_gSprite, 1, 48, 48, 16, 16, ((x + (32 * w)) - 16), ((y + (32 * h)) - 16), 1, 1, c[1], 1)
    draw_sprite_part_ext(_gSprite, 2, 0, 48, 16, 16, x, ((y + (32 * h)) - 16), 1, 1, c[2], 1)
    draw_sprite_part_ext(_gSprite, 2, 48, 48, 16, 16, ((x + (32 * w)) - 16), ((y + (32 * h)) - 16), 1, 1, c[2], 1)
    colorSpend = tempColor
    scrComboCFunc()
}
if browned
{
    colorSpend = tempColor
    scrComboCFunc()
}
for (i = 0; i < lockCount; i += 1)
{
    if (!browned)
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
    else
        draw_sprite_ext(lock[i, 6], 2, (x + lock[i, 4]), (y + lock[i, 5]), 1, 1, 0, scrGetLockColor(10), 1)
}
draw_set_color(c_white)
