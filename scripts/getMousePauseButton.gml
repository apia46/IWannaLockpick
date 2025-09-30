var i, _bX, _bY;
for (i = 0; i < pauseButtons; i += 1)
{
    _bX = pButX[i]
    _bY = pButY[i]
    if ((mX >= (_bX - 150)) && ((mX < (_bX + 150)) && ((mY >= (_bY - 16)) && (mY < (_bY + 16)))))
        return i;
}
return -1;
