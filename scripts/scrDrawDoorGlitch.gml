var _gSprite, i, ix, iy;
if argument0
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
        scrColorDoorArg(colorCopy)
    }
    for (i = 0; i < (2 * (w - 1)); i += 1)
    {
        draw_sprite_part_ext(_gSprite, 0, 16, 0, 16, 16, (x + (16 * (i + 1))), y, 1, 1, c4, 1)
        draw_sprite_part_ext(_gSprite, 2, 16, 48, 16, 16, (x + (16 * (i + 1))), ((y + (32 * h)) - 16), 1, 1, c6, 1)
    }
    for (i = 0; i < (2 * (h - 1)); i += 1)
    {
        draw_sprite_part_ext(_gSprite, 1, 0, 16, 16, 16, x, (y + (16 * (i + 1))), 1, 1, c5, 1)
        draw_sprite_part_ext(_gSprite, 1, 48, 16, 16, 16, ((x + (32 * w)) - 16), (y + (16 * (i + 1))), 1, 1, c5, 1)
    }
    draw_sprite_part_ext(_gSprite, 0, 0, 0, 16, 16, x, y, 1, 1, c4, 1)
    draw_sprite_part_ext(_gSprite, 0, 48, 0, 16, 16, ((x + (32 * w)) - 16), y, 1, 1, c4, 1)
    draw_sprite_part_ext(_gSprite, 1, 0, 0, 16, 16, x, y, 1, 1, c5, 1)
    draw_sprite_part_ext(_gSprite, 1, 48, 0, 16, 16, ((x + (32 * w)) - 16), y, 1, 1, c5, 1)
    draw_sprite_part_ext(_gSprite, 1, 0, 48, 16, 16, x, ((y + (32 * h)) - 16), 1, 1, c5, 1)
    draw_sprite_part_ext(_gSprite, 1, 48, 48, 16, 16, ((x + (32 * w)) - 16), ((y + (32 * h)) - 16), 1, 1, c5, 1)
    draw_sprite_part_ext(_gSprite, 2, 0, 48, 16, 16, x, ((y + (32 * h)) - 16), 1, 1, c6, 1)
    draw_sprite_part_ext(_gSprite, 2, 48, 48, 16, 16, ((x + (32 * w)) - 16), ((y + (32 * h)) - 16), 1, 1, c6, 1)
}
else
{
    if (colorCopy == 0)
    {
        _gSprite = sprDoorGlitchGold
        c1 = 16777215
        c2 = c_white
        c3 = 16777215
    }
    else if (colorCopy == 11)
    {
        _gSprite = sprDoorGlitchPure
        c1 = 16777215
        c2 = c_white
        c3 = 16777215
    }
    else if (colorCopy == 13)
    {
        _gSprite = sprDoorGlitchStone
        c1 = 16777215
        c2 = c_white
        c3 = 16777215
    }
    else
    {
        _gSprite = sprDoorGlitch
        scrColorDoorArg(colorCopy)
    }
    for (i = 0; i < (2 * (w - 1)); i += 1)
    {
        draw_sprite_part_ext(_gSprite, 3, 16, 0, 16, 16, (x + (16 * (i + 1))), y, 1, 1, c2, 1)
        draw_sprite_part_ext(_gSprite, 3, 16, 48, 16, 16, (x + (16 * (i + 1))), ((y + (32 * h)) - 16), 1, 1, c2, 1)
    }
    for (i = 0; i < (2 * (h - 1)); i += 1)
    {
        draw_sprite_part_ext(_gSprite, 3, 0, 16, 16, 16, x, (y + (16 * (i + 1))), 1, 1, c2, 1)
        draw_sprite_part_ext(_gSprite, 3, 48, 16, 16, 16, ((x + (32 * w)) - 16), (y + (16 * (i + 1))), 1, 1, c2, 1)
    }
    for (ix = 0; ix < ((2 * w) - 3); ix += 1)
    {
        for (iy = 0; iy < ((2 * h) - 3); iy += 1)
            draw_sprite_part_ext(_gSprite, 3, 16, 16, 32, 32, ((x + 32) + (16 * (ix - 1))), ((y + 32) + (16 * (iy - 1))), 1, 1, c2, 1)
    }
    draw_sprite_part_ext(_gSprite, 3, 0, 0, 16, 16, x, y, 1, 1, c2, 1)
    draw_sprite_part_ext(_gSprite, 3, 48, 0, 16, 16, ((x + (32 * w)) - 16), y, 1, 1, c2, 1)
    draw_sprite_part_ext(_gSprite, 3, 0, 48, 16, 16, x, ((y + (32 * h)) - 16), 1, 1, c2, 1)
    draw_sprite_part_ext(_gSprite, 3, 48, 48, 16, 16, ((x + (32 * w)) - 16), ((y + (32 * h)) - 16), 1, 1, c2, 1)
}
