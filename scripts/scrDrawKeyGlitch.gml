var _cstored;
if (colorCopy == 0)
{
    if ((type == 0) || ((type == 5) || ((type == 6) || (type == 7))))
        draw_sprite(sprKMasterGlitch, 0, x, y)
    else if (type == 1)
        draw_sprite(sprKMasterGlitch, 1, x, y)
    else if (type == 3)
        draw_sprite(sprKMasterGlitch, 2, x, y)
    else
        draw_sprite(sprKMasterGlitch, 3, x, y)
}
else if (colorCopy == 11)
{
    if ((type == 0) || ((type == 5) || ((type == 6) || (type == 7))))
        draw_sprite(sprKPureGlitch, 0, x, y)
    else if (type == 1)
        draw_sprite(sprKPureGlitch, 1, x, y)
    else if (type == 3)
        draw_sprite(sprKPureGlitch, 2, x, y)
    else
        draw_sprite(sprKPureGlitch, 3, x, y)
}
else if (colorCopy == 13)
{
    if ((type == 0) || ((type == 5) || ((type == 6) || (type == 7))))
        draw_sprite(sprKStoneGlitch, 0, x, y)
    else if (type == 1)
        draw_sprite(sprKStoneGlitch, 1, x, y)
    else if (type == 3)
        draw_sprite(sprKStoneGlitch, 2, x, y)
    else
        draw_sprite(sprKStoneGlitch, 3, x, y)
}
else
{
    _cstored = color
    color = colorCopy
    scrColorKey()
    draw_sprite_ext(sprite_index, 4, x, y, 1, 1, 0, blend, 1)
    color = _cstored
    scrColorKey()
}
