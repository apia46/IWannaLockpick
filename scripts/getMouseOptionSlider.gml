var _tab = tab;
for(var i = 0; i < tabSliders[_tab]; i += 1){
    var _sX = oSldX[_tab,i];
    var _sY = oSldY[_tab,i]-16;
    var _sW = oSldW[_tab,i];
    var _sH = 32;
    if mX >= _sX && mX < (_sX+_sW) && mY >= _sY && mY < (_sY+_sH){
        return i;
    }
}
return -1;
