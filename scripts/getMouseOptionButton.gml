var _tab, i, _bX, _bY, _bW, _bH;
_tab = tab
for (i = 0; i < tabButtons[_tab]; i += 1)
{
    _bX = oButX[_tab, i]
    _bY = oButY[_tab, i]
    _bW = oButW[_tab, i]
    _bH = oButH[_tab, i]
    if ((mX >= _bX) && ((mX < (_bX + _bW)) && ((mY >= _bY) && (mY < (_bY + _bH)))))
        return i;
}
return -1;
