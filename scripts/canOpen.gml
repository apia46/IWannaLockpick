///canOpen(color,lock_count,lock_icount,lock_type,power_of_i);
var open_check = argument0;
var open_needR = rotateR(argument1,argument2,argument4);
var open_needI = rotateI(argument1,argument2,argument4);
switch argument3{
    case lock_NORMAL:
        if sign(global.key[open_check]) == sign(open_needR) && abs(global.key[open_check]) >= abs(open_needR) && sign(global.ikey[open_check]) == sign(open_needI) && abs(global.ikey[open_check]) >= abs(open_needI){
            return true;
        }
    break;
    case lock_BLANK:
        if global.key[open_check] == 0 && global.ikey[open_check] == 0{
            return true;
        }
    break;
    case lock_BLAST:
        if global.key[open_check] != 0{
            if sign(open_needR) == sign(global.key[open_check]){
                return true;
            }
            if sign(open_needI) == sign(global.ikey[open_check]){
                return true;
            }
        }
    break;
    case lock_ALL:
        if global.key[open_check] != 0{
            return true;
        }
        if global.ikey[open_check] != 0{
            return true;
        }
    break;
}
return false;
