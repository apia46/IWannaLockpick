var _drawFrames;
goldIndex = ((goldIndex + goldSpd) % 4)
scrComboCFunc()
if (copyDraw == 1)
    scrComboDrawFill()
_drawFrames = 1
if ((global.complexMode == 0) && (copies == 0))
    _drawFrames = 0
if ((global.complexMode == 1) && (icopies == 0))
    _drawFrames = 0
if (_drawFrames == 1)
{
    scrComboDrawFrame()
    scrComboDrawLocks()
}
else
    scrComboDrawIm()
scrComboDrawAura()
draw_set_color(c_white)
draw_set_alpha(1)
