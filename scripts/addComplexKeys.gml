var _addCol, _ccheck, open_needR, open_needI;
_addCol = argument0
_ccheck = argument1
if (_addCol == 12)
    _addCol = _ccheck
switch argument4
{
    case 0:
        open_needR = argument2
        open_needI = argument3
        break
    case 1:
        open_needR = (-argument3)
        open_needI = argument2
        break
    case 2:
        open_needR = (-argument2)
        open_needI = (-argument3)
        break
    case 3:
        open_needR = argument3
        open_needI = (-argument2)
        break
}

global.key[_addCol] += open_needR
global.ikey[_addCol] += open_needI
