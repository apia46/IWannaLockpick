if (colorSpend == 0)
    draw_sprite_ext(sprDGoldGrad, floor(goldIndex), salDX, salDY, (salW * 0.5), (salH * 0.5), 0, c_white, 1)
else if (colorSpend == 11)
    draw_sprite_ext(sprDPureGrad, floor(goldIndex), salDX, salDY, (salW * 0.5), (salH * 0.5), 0, c_white, 1)
else if (colorSpend == 13)
    draw_sprite_ext(sprDStoneTexture, 0, salDX, salDY, (salW * 0.5), (salH * 0.5), 0, c_white, 1)
else if (colorSpend == 12)
{
    scrColorDoorArg(12)
    shader_set(shdRainbowStripe2)
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
    shader_reset()
    scrColorDoor()
    scrColorDoor2()
}
else
{
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
}
