var _tab = tab;
for(var i = 0; i < tabButtons[_tab]; i += 1){
    var _bX = oButX[_tab,i];
    var _bY = oButY[_tab,i];
    var _bW = oButW[_tab,i];
    var _bH = oButH[_tab,i];
    if mX >= _bX && mX < (_bX+_bW) && mY >= _bY && mY < (_bY+_bH){
        return i;
    }
}
return -1;
