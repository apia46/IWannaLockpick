///getPMFile(roomID);
var _rm = argument0;
if _rm < 0 || _rm > 999 || frac(_rm) != 0{_rm = 0;}//debuggers around the world cry
var _hundred = _rm div 100;
var _ten = (_rm mod 100) div 10;
var _one = (_rm mod 10);

var _fname;
_fname = "\Pencilmarks\mark"+string(_hundred)+string(_ten)+string(_one);
return _fname;
