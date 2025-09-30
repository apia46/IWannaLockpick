var i, outCol, boxCol, _bX, _bY, _bW, _bH, _bname, _cind, _but;
for (i = 0; i < tabButtons[tab]; i += 1)
{
    outCol = colOut
    boxCol = colBox
    if (curButton == i)
    {
        outCol = colOutSel
        boxCol = colBoxSel
        if ((tab == 4) && (controlIndex != -1))
        {
            outCol = colOutSpc
            boxCol = colBoxSpc
        }
    }
    _bX = oButX[tab, i]
    _bY = oButY[tab, i]
    _bW = oButW[tab, i]
    _bH = oButH[tab, i]
    draw_set_color(merge_color(colBoxSel, c_black, 0.5))
    draw_set_alpha(0.35)
    draw_rectangle((_bX + 3), (_bY + 3), ((_bX + _bW) + 2), ((_bY + _bH) + 2), 0)
    draw_set_alpha(1)
    draw_set_color(boxCol)
    draw_rectangle(_bX, _bY, (_bX + _bW), ((_bY + _bH) - 1), 0)
    draw_set_color(outCol)
    draw_rectangle(_bX, _bY, (_bX + _bW), ((_bY + _bH) - 1), 1)
    _bname = oButName[tab, i]
    if ((tab == 4) && (i >= 7))
    {
        _cind = (i - 7)
        _but = -1
        if (_cind == 0)
            _but = global.leftButton
        else if (_cind == 1)
            _but = global.rightButton
        else if (_cind == 2)
            _but = global.upButton
        else if (_cind == 3)
            _but = global.downButton
        else if (_cind == 4)
            _but = global.jumpButton
        else if (_cind == 5)
            _but = global.masButton
        else if (_cind == 6)
            _but = global.shootButton
        else if (_cind == 7)
            _but = global.restartButton
        else if (_cind == 8)
            _but = global.leaveButton
        else if (_cind == 9)
            _but = global.camButton
        else if (_cind == 10)
            _but = global.skipButton
        else if (_cind == 11)
            _but = global.specialButton
        else if (_cind == 12)
            _but = global.warpButton
        else if (_cind == 13)
            _but = global.rsButton
        else if (_cind == 14)
            _but = global.runButton
        else if (_cind == 15)
            _but = global.walkButton
        else if (_cind == 16)
            _but = global.selButton
        else if (_cind == 17)
            _but = global.intrButton
        _bname += (": " + getBindStr(_but, 2))
    }
    if (oButSpr[tab, i] == -1)
    {
        draw_set_font(fMiniLevel)
        draw_set_halign(fa_center)
        draw_set_valign(fa_middle)
        draw_text((_bX + round((_bW / 2))), (_bY + round((_bH / 2))), _bname)
    }
    else
    {
        draw_set_color(c_white)
        draw_sprite_ext(oButSpr[tab, i], oButInd[tab, i], ((_bX + round((_bW / 2))) + 1), ((_bY + round((_bH / 2))) + 1), 1, 1, 0, outCol, 0.25)
        draw_sprite_ext(oButSpr[tab, i], oButInd[tab, i], (_bX + round((_bW / 2))), (_bY + round((_bH / 2))), 1, 1, 0, outCol, 1)
        if (oButSpr[tab, i] == sprOptionSymbols)
        {
            draw_set_font(fMiniLevel)
            draw_set_halign(fa_left)
            draw_set_valign(fa_middle)
            draw_set_color(outCol)
            draw_set_alpha(0.35)
            draw_text((((_bX + round((_bW / 2))) + 32) + 2), ((_bY + round((_bH / 2))) + 2), _bname)
            draw_set_alpha(1)
            draw_text(((_bX + round((_bW / 2))) + 32), (_bY + round((_bH / 2))), _bname)
        }
    }
}
draw_set_color(c_white)
