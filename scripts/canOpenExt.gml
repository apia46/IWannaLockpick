var open_check, open_needR, open_needI;
open_check = argument0
if (open_check == 12)
    open_check = colorCopy
switch argument2
{
    case 0:
        open_needR = count
        open_needI = icount
        break
    case 1:
        open_needR = (-icount)
        open_needI = count
        break
    case 2:
        open_needR = (-count)
        open_needI = (-icount)
        break
    case 3:
        open_needR = icount
        open_needI = (-count)
        break
}

switch argument1
{
    case 0:
        if ((sign(global.key[open_check]) == sign(open_needR)) && ((abs(global.key[open_check]) >= abs(open_needR)) && ((sign(global.ikey[open_check]) == sign(open_needI)) && (abs(global.ikey[open_check]) >= abs(open_needI)))))
            return 1;
        break
    case 1:
        if ((global.key[open_check] == 0) && (global.ikey[open_check] == 0))
            return 1;
        break
    case 2:
        if (global.key[open_check] != 0)
        {
            if (sign(open_needR) == sign(global.key[open_check]))
                return 1;
            if (sign(open_needI) == sign(global.ikey[open_check]))
                return 1;
        }
        break
    case 3:
        if (global.key[open_check] != 0)
            return 1;
        if (global.ikey[open_check] != 0)
            return 1;
        break
}

return 0;
