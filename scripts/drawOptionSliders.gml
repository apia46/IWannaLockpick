var i, outCol, boxCol, _sX, _sY, _sW, _lerpAmt, _hX;
for (i = 0; i < tabSliders[tab]; i += 1)
{
    outCol = colOut
    boxCol = colBox
    if (curSlider == i)
    {
        outCol = colOutSel
        boxCol = colBoxSel
    }
    _sX = oSldX[tab, i]
    _sY = oSldY[tab, i]
    _sW = oSldW[tab, i]
    _lerpAmt = (oSldPos[tab, i] / (oSldNotches[tab, i] - 1))
    _hX = (_sX + round((_sW * _lerpAmt)))
    draw_line_width_color(_sX, _sY, (_sX + _sW), _sY, 4, outCol, outCol)
    draw_set_color(merge_color(boxCol, c_black, 0.5))
    draw_set_alpha(0.35)
    draw_rectangle(((_hX - 8) + 2), ((_sY - 12) + 2), ((_hX + 7) + 2), ((_sY + 11) + 2), 0)
    draw_set_alpha(1)
    draw_set_color(boxCol)
    draw_rectangle((_hX - 8), (_sY - 12), (_hX + 7), (_sY + 11), 0)
    draw_set_color(outCol)
    draw_rectangle((_hX - 8), (_sY - 12), (_hX + 7), (_sY + 11), 1)
    draw_set_font(fMiniLevel)
    draw_set_halign(fa_left)
    draw_set_valign(fa_middle)
    draw_set_color(outCol)
    draw_set_alpha(0.35)
    draw_text((((_sX + _sW) + 16) + 2), (_sY + 2), oSldName[tab, i])
    draw_set_alpha(1)
    draw_text(((_sX + _sW) + 16), _sY, oSldName[tab, i])
}
