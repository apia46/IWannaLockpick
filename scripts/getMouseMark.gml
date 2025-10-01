///getMouseMark();
//Returns the pencilmark ID the mouse is hovering over.
if global.inCutscene || !global.canMark{return -1;}
var _id = -1;
var _mx; var _my;
for(var i = 0; i < 256; i += 1){
    _mx = global.pmX[i];
    _my = global.pmY[i];
    if mouse_x >= (_mx-8) && mouse_x < (_mx+8) && mouse_y >= (_my-8) && mouse_y < (_my+8){
        _id = i;
        break;
    }
}
return _id;
