var copiesString;
if (copyState == 1)
{
    draw_set_blend_mode_ext(10, 6)
    draw_sprite_ext(sprBlockWhite, 0, x, y, w, h, 0, make_color_hsv(0, 0, (255 * copyAlpha)), copyAlpha)
    draw_set_blend_mode(0)
}
if (copyState == 2)
    draw_sprite_ext(sprBlockWhite, 0, x, y, w, h, 0, c_white, copyAlpha)
if (((copies != 1) || (icopies != 0)) && copyDraw)
{
    draw_set_font(fKeyX)
    draw_set_halign(fa_center)
    draw_set_valign(fa_bottom)
    draw_set_color(make_color_rgb(62, 45, 28))
    copiesString = "×"
    if (icopies == 0)
        copiesString += string(copies)
    else if (copies == 0)
        copiesString += (string(icopies) + "i")
    else
    {
        copiesString += string(copies)
        if (icopies > 0)
            copiesString = (((copiesString + "+") + string(icopies)) + "i")
        else
            copiesString = ((copiesString + string(icopies)) + "i")
    }
    draw_text(((x + 1) + (16 * w)), (y + 7), copiesString)
    draw_text(((x - 1) + (16 * w)), (y + 7), copiesString)
    draw_text(((x + 1) + (16 * w)), (y + 9), copiesString)
    draw_text(((x - 1) + (16 * w)), (y + 9), copiesString)
    draw_text(((x + 1) + (16 * w)), (y + 8), copiesString)
    draw_text(((x - 1) + (16 * w)), (y + 8), copiesString)
    draw_text((x + (16 * w)), (y + 7), copiesString)
    draw_text((x + (16 * w)), (y + 9), copiesString)
    draw_set_color(make_color_rgb(237, 234, 231))
    draw_text((x + (16 * w)), (y + 8), copiesString)
}
