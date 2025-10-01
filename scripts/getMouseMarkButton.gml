for(var i = 0; i < pmButtons; i += 1){
    var _bX = pmGuiX+pmButX[i];
    var _bY = pmGuiY+pmButY[i];
    var _bW = pmButW[i];
    var _bH = pmButH[i];
    var _mx = getMouseMarkX();
    var _my = getMouseMarkY();
    if _mx >= _bX && _mx < (_bX+_bW) && _my >= _bY && _my < (_bY+_bH) && pmButState[i] == global.pmState{
        return i;
    }
}
return -1;
