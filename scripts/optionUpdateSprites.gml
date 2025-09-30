var _fb, _ind;
_fb = (numTabs + 2)
if global.muteMusic
    _ind = 3
else
    _ind = 2
oButInd[0, _fb] = _ind
if global.fullscreenMode
    _ind = 1
else
    _ind = 0
oButInd[1, _fb] = _ind
if global.smoothingMode
    _ind = 1
else
    _ind = 0
oButInd[1, (_fb + 1)] = _ind
if global.vsyncMode
    _ind = 1
else
    _ind = 0
oButInd[1, (_fb + 2)] = _ind
if global.lowFX
    _ind = 1
else
    _ind = 0
oButInd[1, (_fb + 3)] = _ind
if global.simpleLock
    _ind = 1
else
    _ind = 0
oButInd[1, (_fb + 4)] = _ind
if global.hideTime
    _ind = 1
else
    _ind = 0
oButInd[3, _fb] = _ind
if global.runSwitch
    _ind = 1
else
    _ind = 0
oButInd[3, (_fb + 1)] = _ind
if global.fullJumps
    _ind = 1
else
    _ind = 0
oButInd[3, (_fb + 2)] = _ind
if global.allUnlock
    _ind = 1
else
    _ind = 0
oButInd[3, (_fb + 3)] = _ind
