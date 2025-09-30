var _isNegative, _spr, dIndex;
if salvageIsCombo
    _isNegative = 0
else if (salType == 1)
    _isNegative = 0
else if ((salCount > 0) || (salICount > 0))
    _isNegative = 0
else
    _isNegative = 1
_spr = sprDoorBig
dIndex = 0
if argument0
{
    if (!_isNegative)
        dIndex = 6
    else
        dIndex = 7
}
else
{
    _spr = sprDoorBigInner
    if (!_isNegative)
        dIndex = 0
    else
        dIndex = 1
}
if (salW > 1)
{
    draw_sprite_part_ext(_spr, dIndex, 16, 0, 16, 16, (salDX + 16), salDY, ((salW - 1) * 2), 1, c_white, 1)
    draw_sprite_part_ext(_spr, dIndex, 16, 48, 16, 16, (salDX + 16), ((salDY + (32 * salH)) - 16), ((salW - 1) * 2), 1, c_white, 1)
}
if (salH > 1)
{
    draw_sprite_part_ext(_spr, dIndex, 0, 16, 16, 16, salDX, (salDY + 16), 1, ((salH - 1) * 2), c_white, 1)
    draw_sprite_part_ext(_spr, dIndex, 48, 16, 16, 16, ((salDX + (32 * salW)) - 16), (salDY + 16), 1, ((salH - 1) * 2), c_white, 1)
}
draw_sprite_part_ext(_spr, dIndex, 0, 0, 16, 16, salDX, salDY, 1, 1, c_white, 1)
draw_sprite_part_ext(_spr, dIndex, 48, 0, 16, 16, ((salDX + (32 * salW)) - 16), salDY, 1, 1, c_white, 1)
draw_sprite_part_ext(_spr, dIndex, 0, 48, 16, 16, salDX, ((salDY + (32 * salH)) - 16), 1, 1, c_white, 1)
draw_sprite_part_ext(_spr, dIndex, 48, 48, 16, 16, ((salDX + (32 * salW)) - 16), ((salDY + (32 * salH)) - 16), 1, 1, c_white, 1)
