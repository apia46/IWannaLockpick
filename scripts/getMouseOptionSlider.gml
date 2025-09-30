var _tab, i, _sX, _sY, _sW, _sH;
_tab = tab
for (i = 0; i < tabSliders[_tab]; i += 1)
{
    _sX = oSldX[_tab, i]
    _sY = (oSldY[_tab, i] - 16)
    _sW = oSldW[_tab, i]
    _sH = 32
    if ((mX >= _sX) && ((mX < (_sX + _sW)) && ((mY >= _sY) && (mY < (_sY + _sH)))))
        return i;
}
return -1;
