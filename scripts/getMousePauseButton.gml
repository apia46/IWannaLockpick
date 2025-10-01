for(var i = 0; i < pauseButtons; i += 1){
    var _bX = pButX[i];
    var _bY = pButY[i];
    if mX >= (_bX-150) && mX < (_bX+150) && mY >= (_bY-16) && mY < (_bY+16){
        return i;
    }
}
return -1;
