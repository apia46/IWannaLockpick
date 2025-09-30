var _tCol, _name, _desc;
_tCol = colOut
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(_tCol)
draw_set_font(fLevelName)
draw_text(400, 96, tabName[tab])
draw_set_font(fPresents)
draw_text(400, 144, tabDesc[tab])
draw_set_font(fPresents)
if (curButton != -1)
{
    _name = oButName[tab, curButton]
    _desc = oButDesc[tab, curButton]
    draw_text(400, 520, _name)
    draw_set_font(fMiniLevel)
    draw_text(400, 540, _desc)
}
else if (curSlider != -1)
{
    _name = oSldName[tab, curSlider]
    _desc = oSldDesc[tab, curSlider]
    draw_text(400, 520, _name)
    draw_set_font(fMiniLevel)
    draw_text(400, 540, _desc)
}
else
    exit
draw_set_color(c_white)
