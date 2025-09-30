var _id, i, _mx, _my;
if (global.inCutscene || (!global.canMark))
    return -1;
_id = -1
i = 0
while (i < 256)
{
    _mx = global.pmX[i]
    _my = global.pmY[i]
    if ((mouse_x >= (_mx - 8)) && ((mouse_x < (_mx + 8)) && ((mouse_y >= (_my - 8)) && (mouse_y < (_my + 8)))))
    {
        _id = i
        break
    }
    else
    {
        i += 1
        continue
    }
}
return _id;
