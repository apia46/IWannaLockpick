var _rm, _hundred, _ten, _one, _fname;
_rm = argument0
if ((_rm < 0) || ((_rm > 999) || (frac(_rm) != 0)))
    _rm = 0
_hundred = (_rm div 100)
_ten = ((_rm % 100) div 10)
_one = (_rm % 10)
_fname = ((("\Pencilmarks\mark" + string(_hundred)) + string(_ten)) + string(_one))
return _fname;
