var _x, _y, ix, _dx, _dy, _c, _baseX, _baseY, _tCol;
_x = 440
_y = 160
for (ix = 0; ix < 10; ix += 1)
{
    _dx = (_x + (32 * ix))
    _dy = (_y + 16)
    _c = colorShow[ix]
    draw_sprite(sprKey, 0, _dx, _dy)
    draw_sprite_ext(sprKey, 1, _dx, _dy, 1, 1, 0, global.mainTone[_c], 1)
    _dy += 32
    draw_sprite(sprDoor, 0, _dx, _dy)
    draw_sprite_ext(sprDoor, 1, _dx, _dy, 1, 1, 0, global.highTone[_c], 1)
    draw_sprite_ext(sprDoor, 2, _dx, _dy, 1, 1, 0, global.mainTone[_c], 1)
    draw_sprite_ext(sprDoor, 3, _dx, _dy, 1, 1, 0, global.darkTone[_c], 1)
}
_baseX = 32
_baseY = 160
_tCol = colOut
draw_set_font(fMiniLevel)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_color(_tCol)
draw_text(352, (_baseY + 96), (("Editing '" + colorName[curColorEdit]) + "'"))
draw_text(48, (_baseY + 64), string(cHighR))
draw_text(48, ((_baseY + 64) + 32), string(cHighG))
draw_text(48, ((_baseY + 64) + 64), string(cHighB))
draw_text(48, (_baseY + 160), string(cMainR))
draw_text(48, ((_baseY + 160) + 32), string(cMainG))
draw_text(48, ((_baseY + 160) + 64), string(cMainB))
draw_text(48, (_baseY + 256), string(cDarkR))
draw_text(48, ((_baseY + 256) + 32), string(cDarkG))
draw_text(48, ((_baseY + 256) + 64), string(cDarkB))
draw_set_color(c_white)
_dx = 320
_dy = ((_baseY + 96) + 32)
_c = colorShow[curColorEdit]
draw_sprite_ext(sprKey, 0, _dx, _dy, 2, 2, 0, c_white, 1)
draw_sprite_ext(sprKey, 1, _dx, _dy, 2, 2, 0, global.mainTone[_c], 1)
_dy += 80
draw_sprite_ext(sprDoor, 0, _dx, _dy, 2, 2, 0, c_white, 1)
draw_sprite_ext(sprDoor, 1, _dx, _dy, 2, 2, 0, global.highTone[_c], 1)
draw_sprite_ext(sprDoor, 2, _dx, _dy, 2, 2, 0, global.mainTone[_c], 1)
draw_sprite_ext(sprDoor, 3, _dx, _dy, 2, 2, 0, global.darkTone[_c], 1)
