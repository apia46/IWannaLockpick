var _addCol, _ccheck, _omega0, _num0, _omega1, _num1, _omegaSign, _omegaSign1, _removeLower;
_addCol = argument0
_ccheck = argument1
if (_addCol == 12)
    _addCol = _ccheck
_omega0 = global.omega[_addCol]
_num0 = global.key[_addCol]
_omega1 = argument2
_num1 = argument3
_omegaSign = sign(_omega0)
_omegaSign1 = sign(_omega1)
_removeLower = ((_omegaSign == 0) && (_omegaSign1 != 0))
_removeLower = (_removeLower || ((_omegaSign != 0) && (_omegaSign == _omegaSign1)))
_removeLower = (_removeLower || ((_omegaSign != 0) && ((_omegaSign == (-_omegaSign1)) && (abs(_omega1) > abs(_omega0)))))
if _removeLower
{
    global.key[_addCol] = 0
    global.omega[_addCol] = (_omega0 + _omega1)
}
else if (_omega1 != 0)
    global.omega[_addCol] += _omega1
else if ((_omegaSign == 0) || (sign(_num1) == sign(_omega0)))
    global.key[_addCol] += _num1
