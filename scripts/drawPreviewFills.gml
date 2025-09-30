var tempColor, _gSprite, i, ix, iy, tempW, tempH, tempX, tempY;
tempColor = colorSpend
if (colorSpend == 0)
    draw_sprite_ext(sprDGoldGrad, floor(goldIndex), salDX, salDY, (salW / 2), (salH / 2), 0, c_white, 1)
else if (colorSpend == 11)
    draw_sprite_ext(sprDPureGrad, floor(goldIndex), salDX, salDY, (salW / 2), (salH / 2), 0, c_white, 1)
else if (colorSpend == 13)
    draw_sprite_ext(sprDStoneTexture, 0, salDX, salDY, (salW * 0.5), (salH * 0.5), 0, c_white, 1)
else
{
    if (colorSpend == 12)
        shader_set(shdRainbowStripe2)
    draw_sprite_part_ext(sprDoorBig, 4, 0, 0, 16, 16, salDX, salDY, 1, 1, c5, 1)
    draw_sprite_part_ext(sprDoorBig, 4, 48, 0, 16, 16, ((salDX + (32 * salW)) - 16), salDY, 1, 1, c5, 1)
    draw_sprite_part_ext(sprDoorBig, 4, 0, 48, 16, 16, salDX, ((salDY + (32 * salH)) - 16), 1, 1, c5, 1)
    draw_sprite_part_ext(sprDoorBig, 4, 48, 48, 16, 16, ((salDX + (32 * salW)) - 16), ((salDY + (32 * salH)) - 16), 1, 1, c5, 1)
    draw_sprite_part_ext(sprDoorBig, 4, 16, 16, 16, 16, (salDX + 8), (salDY + 8), ((salW * 2) - 1), ((salH * 2) - 1), c5, 1)
    if (salW > 1)
    {
        draw_sprite_part_ext(sprDoorBig, 1, 16, 0, 16, 16, (salDX + 16), salDY, ((salW - 1) * 2), 1, c4, 1)
        draw_sprite_part_ext(sprDoorBig, 3, 16, 48, 16, 16, (salDX + 16), ((salDY + (32 * salH)) - 16), ((salW - 1) * 2), 1, c6, 1)
    }
    if (salH > 1)
    {
        draw_sprite_part_ext(sprDoorBig, 2, 0, 16, 16, 16, salDX, (salDY + 16), 1, ((salH - 1) * 2), c5, 1)
        draw_sprite_part_ext(sprDoorBig, 2, 48, 16, 16, 16, ((salDX + (32 * salW)) - 16), (salDY + 16), 1, ((salH - 1) * 2), c5, 1)
    }
    draw_sprite_part_ext(sprDoorBig, 1, 0, 0, 16, 16, salDX, salDY, 1, 1, c4, 1)
    draw_sprite_part_ext(sprDoorBig, 1, 48, 0, 16, 16, ((salDX + (32 * salW)) - 16), salDY, 1, 1, c4, 1)
    draw_sprite_part_ext(sprDoorBig, 2, 0, 0, 16, 16, salDX, salDY, 1, 1, c5, 1)
    draw_sprite_part_ext(sprDoorBig, 2, 48, 0, 16, 16, ((salDX + (32 * salW)) - 16), salDY, 1, 1, c5, 1)
    draw_sprite_part_ext(sprDoorBig, 2, 0, 48, 16, 16, salDX, ((salDY + (32 * salH)) - 16), 1, 1, c5, 1)
    draw_sprite_part_ext(sprDoorBig, 2, 48, 48, 16, 16, ((salDX + (32 * salW)) - 16), ((salDY + (32 * salH)) - 16), 1, 1, c5, 1)
    draw_sprite_part_ext(sprDoorBig, 3, 0, 48, 16, 16, salDX, ((salDY + (32 * salH)) - 16), 1, 1, c6, 1)
    draw_sprite_part_ext(sprDoorBig, 3, 48, 48, 16, 16, ((salDX + (32 * salW)) - 16), ((salDY + (32 * salH)) - 16), 1, 1, c6, 1)
    if (colorSpend == 12)
        shader_reset()
}
if ((colorSpend == 12) && (colorCopy != 12))
{
    if (colorCopy == 0)
    {
        _gSprite = sprDoorGlitchGold
        c4 = c_white
        c5 = c_white
        c6 = c_white
    }
    else if (colorCopy == 11)
    {
        _gSprite = sprDoorGlitchPure
        c4 = c_white
        c5 = c_white
        c6 = c_white
    }
    else if (colorCopy == 13)
    {
        _gSprite = sprDoorGlitchStone
        c4 = c_white
        c5 = c_white
        c6 = c_white
    }
    else
    {
        _gSprite = sprDoorGlitch
        colorSpend = colorCopy
        scrColorDoor2()
    }
    draw_sprite_part_ext(_gSprite, 4, 0, 0, 16, 16, salDX, salDY, 1, 1, c5, 1)
    draw_sprite_part_ext(_gSprite, 4, 48, 0, 16, 16, ((salDX + (32 * salW)) - 16), salDY, 1, 1, c5, 1)
    draw_sprite_part_ext(_gSprite, 4, 0, 48, 16, 16, salDX, ((salDY + (32 * salH)) - 16), 1, 1, c5, 1)
    draw_sprite_part_ext(_gSprite, 4, 48, 48, 16, 16, ((salDX + (32 * salW)) - 16), ((salDY + (32 * salH)) - 16), 1, 1, c5, 1)
    for (i = 0; i < (2 * (salW - 1)); i += 1)
    {
        draw_sprite_part_ext(_gSprite, 4, 16, 0, 16, 16, (salDX + (16 * (i + 1))), salDY, 1, 1, c5, 1)
        draw_sprite_part_ext(_gSprite, 4, 16, 48, 16, 16, (salDX + (16 * (i + 1))), ((salDY + (32 * salH)) - 16), 1, 1, c5, 1)
    }
    for (i = 0; i < (2 * (salH - 1)); i += 1)
    {
        draw_sprite_part_ext(_gSprite, 4, 0, 16, 16, 16, salDX, (salDY + (16 * (i + 1))), 1, 1, c5, 1)
        draw_sprite_part_ext(_gSprite, 4, 48, 16, 16, 16, ((salDX + (32 * salW)) - 16), (salDY + (16 * (i + 1))), 1, 1, c5, 1)
    }
    for (ix = 0; ix < ((2 * salW) - 3); ix += 1)
    {
        for (iy = 0; iy < ((2 * salH) - 3); iy += 1)
            draw_sprite_part_ext(_gSprite, 4, 16, 16, 32, 32, ((salDX + 32) + (16 * (ix - 1))), ((salDY + 32) + (16 * (iy - 1))), 1, 1, c5, 1)
    }
    for (i = 0; i < (2 * (salW - 1)); i += 1)
    {
        draw_sprite_part_ext(_gSprite, 0, 16, 0, 16, 16, (salDX + (16 * (i + 1))), salDY, 1, 1, c4, 1)
        draw_sprite_part_ext(_gSprite, 2, 16, 48, 16, 16, (salDX + (16 * (i + 1))), ((salDY + (32 * salH)) - 16), 1, 1, c6, 1)
    }
    for (i = 0; i < (2 * (salH - 1)); i += 1)
    {
        draw_sprite_part_ext(_gSprite, 1, 0, 16, 16, 16, salDX, (salDY + (16 * (i + 1))), 1, 1, c5, 1)
        draw_sprite_part_ext(_gSprite, 1, 48, 16, 16, 16, ((salDX + (32 * salW)) - 16), (salDY + (16 * (i + 1))), 1, 1, c5, 1)
    }
    draw_sprite_part_ext(_gSprite, 0, 0, 0, 16, 16, salDX, salDY, 1, 1, c4, 1)
    draw_sprite_part_ext(_gSprite, 0, 48, 0, 16, 16, ((salDX + (32 * salW)) - 16), salDY, 1, 1, c4, 1)
    draw_sprite_part_ext(_gSprite, 1, 0, 0, 16, 16, salDX, salDY, 1, 1, c5, 1)
    draw_sprite_part_ext(_gSprite, 1, 48, 0, 16, 16, ((salDX + (32 * salW)) - 16), salDY, 1, 1, c5, 1)
    draw_sprite_part_ext(_gSprite, 1, 0, 48, 16, 16, salDX, ((salDY + (32 * salH)) - 16), 1, 1, c5, 1)
    draw_sprite_part_ext(_gSprite, 1, 48, 48, 16, 16, ((salDX + (32 * salW)) - 16), ((salDY + (32 * salH)) - 16), 1, 1, c5, 1)
    draw_sprite_part_ext(_gSprite, 2, 0, 48, 16, 16, salDX, ((salDY + (32 * salH)) - 16), 1, 1, c6, 1)
    draw_sprite_part_ext(_gSprite, 2, 48, 48, 16, 16, ((salDX + (32 * salW)) - 16), ((salDY + (32 * salH)) - 16), 1, 1, c6, 1)
    colorSpend = tempColor
    scrComboCFunc()
}
if (((state == 5) || (state == 6)) && (salvageLock == -1))
    draw_sprite_ext(sprBlockWhite, 0, salDX, salDY, salW, salH, 0, c_white, previewA)
for (i = 0; i < salvageLockCount; i += 1)
{
    if (lock[i, 0] == sprCamera)
    {
        tempW = sprite_get_width(lock[i, 6])
        tempH = sprite_get_height(lock[i, 6])
        tempX = ((salDX + lock[i, 4]) - sprite_get_xoffset(lock[i, 6]))
        tempY = ((salDY + lock[i, 5]) - sprite_get_yoffset(lock[i, 6]))
        draw_sprite_ext(sprDGoldGrad, floor(goldIndex), tempX, tempY, (tempW / 64), (tempH / 64), 0, c_white, 1)
    }
    else if (lock[i, 0] == sprPlayerFall)
    {
        tempW = sprite_get_width(lock[i, 6])
        tempH = sprite_get_height(lock[i, 6])
        tempX = ((salDX + lock[i, 4]) - sprite_get_xoffset(lock[i, 6]))
        tempY = ((salDY + lock[i, 5]) - sprite_get_yoffset(lock[i, 6]))
        draw_sprite_ext(sprDPureGrad, floor(goldIndex), tempX, tempY, (tempW / 64), (tempH / 64), 0, c_white, 1)
    }
    else if (lock[i, 0] == sprPlayerRunning)
    {
        tempW = sprite_get_width(lock[i, 6])
        tempH = sprite_get_height(lock[i, 6])
        tempX = ((salDX + lock[i, 4]) - sprite_get_xoffset(lock[i, 6]))
        tempY = ((salDY + lock[i, 5]) - sprite_get_yoffset(lock[i, 6]))
        draw_sprite_ext(sprDStoneTexture, 0, tempX, tempY, (tempW / 64), (tempH / 64), 0, c_white, 1)
    }
    else if (lock[i, 0] == sprPlayerFall2)
    {
        shader_set(shdRainbowStripe2)
        draw_sprite_ext(lock[i, 6], 2, (salDX + lock[i, 4]), (salDY + lock[i, 5]), 1, 1, 0, make_color_rgb(180, 150, 0), 1)
        shader_reset()
        if (colorCopy == 0)
            draw_sprite_ext(lock[i, 6], 4, (salDX + lock[i, 4]), (salDY + lock[i, 5]), 1, 1, 0, c_white, 1)
        else if (colorCopy == 11)
            draw_sprite_ext(lock[i, 6], 5, (salDX + lock[i, 4]), (salDY + lock[i, 5]), 1, 1, 0, c_white, 1)
        else if (colorCopy == 13)
            draw_sprite_ext(lock[i, 6], 6, (salDX + lock[i, 4]), (salDY + lock[i, 5]), 1, 1, 0, c_white, 1)
        else if (colorCopy != 12)
            draw_sprite_ext(lock[i, 6], 3, (salDX + lock[i, 4]), (salDY + lock[i, 5]), 1, 1, 0, scrGetLockColor(lock[i, 0]), 1)
    }
    else
        draw_sprite_ext(lock[i, 6], 2, (salDX + lock[i, 4]), (salDY + lock[i, 5]), 1, 1, 0, scrGetLockColor(lock[i, 0]), 1)
    if (((state == 5) || (state == 6)) && (salvageLock == i))
    {
        tempW = sprite_get_width(lock[i, 6])
        tempH = sprite_get_height(lock[i, 6])
        tempX = ((salDX + lock[i, 4]) - sprite_get_xoffset(lock[i, 6]))
        tempY = ((salDY + lock[i, 5]) - sprite_get_yoffset(lock[i, 6]))
        draw_sprite_ext(sprBlockWhite, 0, tempX, tempY, (tempW / 32), (tempH / 32), 0, c_white, previewA)
    }
}
draw_set_color(c_white)
