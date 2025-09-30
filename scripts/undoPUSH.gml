var _utmp, _utmp2, i, _bin, _digit, _inst, ii;
undoPos += 1
recentPush = 1
if instance_exists(oSalvageIn)
{
    if (global.salvageActive && (global.salvageID == -1))
        ds_stack_push(undoStack, 1024)
    else if (!global.salvageActive)
        ds_stack_push(undoStack, 512)
    else
        ds_stack_push(undoStack, global.salvageID)
}
if instance_exists(objPlayer)
{
    _utmp = objPlayer.x
    _utmp2 = objPlayer.y
}
else if instance_exists(objPlayerStart)
{
    _utmp = (objPlayerStart.x + 17)
    _utmp2 = (objPlayerStart.y + 23)
}
else
{
    _utmp = (room_width / 2)
    _utmp2 = (room_height / 2)
}
ds_stack_push(undoStack, _utmp, _utmp2)
for (i = 0; i < 16; i += 1)
{
    _utmp = global.key[i]
    _utmp2 = global.ikey[i]
    ds_stack_push(undoStack, _utmp, _utmp2)
}
_bin = 0
_digit = 1
for (i = 0; i < 16; i += 1)
{
    _bin += (_digit * global.star[i])
    _digit *= 2
}
ds_stack_push(undoStack, _bin)
for (i = 0; i < instSize; i += 1)
{
    _inst = instArray[i]
    _bin = 0
    _digit = 1
    if (_inst.object_index == oKina)
    {
        _bin += (_digit * _inst.active)
        _digit *= 2
        _bin += (_digit * _inst.browned)
        _digit *= 2
        if (_inst.copies >= 0)
            _bin += _digit
        _digit *= 2
        for (ii = 0; ii < 26; ii += 1)
        {
            _bin += (_digit * numBinDigit(_inst.copies, ii))
            _digit *= 2
        }
        if (_inst.icopies >= 0)
            _bin += _digit
        _digit *= 2
        for (ii = 0; ii < 26; ii += 1)
        {
            _bin += (_digit * numBinDigit(_inst.icopies, ii))
            _digit *= 2
        }
        ds_stack_push(undoStack, _bin)
    }
    else if (_inst.object_index == oGate)
        ds_stack_push(undoStack, _inst.colorCopy)
    else if (_inst.object_index == oDoorCombo)
    {
        _bin += (_digit * _inst.active)
        _digit *= 2
        _bin += (_digit * _inst.aura[0])
        _digit *= 2
        _bin += (_digit * _inst.aura[1])
        _digit *= 2
        _bin += (_digit * _inst.aura[2])
        _digit *= 2
        _bin += (_digit * _inst.browned)
        _digit *= 2
        _bin += (_digit * numBinDigit(_inst.colorCopy, 3))
        _digit *= 2
        _bin += (_digit * numBinDigit(_inst.colorCopy, 2))
        _digit *= 2
        _bin += (_digit * numBinDigit(_inst.colorCopy, 1))
        _digit *= 2
        _bin += (_digit * numBinDigit(_inst.colorCopy, 0))
        _digit *= 2
        if (_inst.copies >= 0)
            _bin += _digit
        _digit *= 2
        for (ii = 0; ii < 26; ii += 1)
        {
            _bin += (_digit * numBinDigit(_inst.copies, ii))
            _digit *= 2
        }
        if (_inst.icopies >= 0)
            _bin += _digit
        _digit *= 2
        for (ii = 0; ii < 26; ii += 1)
        {
            _bin += (_digit * numBinDigit(_inst.icopies, ii))
            _digit *= 2
        }
        ds_stack_push(undoStack, _bin)
    }
    else if (object_get_parent(_inst.object_index) == 238)
    {
        _bin += (_digit * _inst.active)
        _digit *= 2
        _bin += (_digit * numBinDigit(_inst.colorCopy, 3))
        _digit *= 2
        _bin += (_digit * numBinDigit(_inst.colorCopy, 2))
        _digit *= 2
        _bin += (_digit * numBinDigit(_inst.colorCopy, 1))
        _digit *= 2
        _bin += (_digit * numBinDigit(_inst.colorCopy, 0))
        ds_stack_push(undoStack, _bin)
    }
    else if ((object_get_parent(_inst.object_index) == 234) || (_inst.object_index == oDoorSimple))
    {
        _bin += (_digit * _inst.active)
        _digit *= 2
        _bin += (_digit * _inst.aura[0])
        _digit *= 2
        _bin += (_digit * _inst.aura[1])
        _digit *= 2
        _bin += (_digit * _inst.aura[2])
        _digit *= 2
        _bin += (_digit * _inst.browned)
        _digit *= 2
        _bin += (_digit * numBinDigit(_inst.colorCopy, 3))
        _digit *= 2
        _bin += (_digit * numBinDigit(_inst.colorCopy, 2))
        _digit *= 2
        _bin += (_digit * numBinDigit(_inst.colorCopy, 1))
        _digit *= 2
        _bin += (_digit * numBinDigit(_inst.colorCopy, 0))
        _digit *= 2
        if (_inst.copies >= 0)
            _bin += _digit
        _digit *= 2
        for (ii = 0; ii < 26; ii += 1)
        {
            _bin += (_digit * numBinDigit(_inst.copies, ii))
            _digit *= 2
        }
        if (_inst.icopies >= 0)
            _bin += _digit
        _digit *= 2
        for (ii = 0; ii < 26; ii += 1)
        {
            _bin += (_digit * numBinDigit(_inst.icopies, ii))
            _digit *= 2
        }
        ds_stack_push(undoStack, _bin)
    }
    else if (_inst.object_index == oSalvageIn)
        ds_stack_push(undoStack, _inst.active)
}
show_debug_message((string(ds_stack_size(undoStack)) + " elements in undo stack"))
