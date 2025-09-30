var i, _bX, _bY, _bW, _bH, _mx, _my;
for (i = 0; i < pmButtons; i += 1)
{
    _bX = (pmGuiX + pmButX[i])
    _bY = (pmGuiY + pmButY[i])
    _bW = pmButW[i]
    _bH = pmButH[i]
    _mx = getMouseMarkX()
    _my = getMouseMarkY()
    if ((_mx >= _bX) && ((_mx < (_bX + _bW)) && ((_my >= _bY) && ((_my < (_bY + _bH)) && (pmButState[i] == global.pmState)))))
        return i;
}
return -1;
