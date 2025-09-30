var open_check, open_needR, open_needI;
open_check = argument0
if (open_check == 12)
    open_check = colorCopy
switch argument4
{
    case 0:
        open_needR = argument1
        open_needI = argument2
        break
    case 1:
        open_needR = (-argument2)
        open_needI = argument1
        break
    case 2:
        open_needR = (-argument1)
        open_needI = (-argument2)
        break
    case 3:
        open_needR = argument2
        open_needI = (-argument1)
        break
}

switch argument3
{
    case 0:
        spendTotal -= open_needR
        spendITotal -= open_needI
        break
    case 1:
        break
    case 2:
        if (open_needR != 0)
            spendTotal -= global.key[open_check]
        if (open_needI != 0)
            spendITotal -= global.ikey[open_check]
        break
    case 3:
        spendTotal -= global.key[open_check]
        spendITotal -= global.ikey[open_check]
        break
}

return 0;
