///scrAddSpendAmt(color,count,icount,type,power_of_i);
var open_check = argument0;
var open_needR = rotateR(argument1,argument2,argument4);
var open_needI = rotateI(argument1,argument2,argument4);
switch argument3 {
    case lock_NORMAL ://normal (can accept complex numbers)
        spendTotal += open_needR;
        spendITotal += open_needI;
    break;
    case lock_BLANK ://blank
        //Nothing really
    break;
    case lock_BLAST://blast (can accept real or imaginary, but not both)
        if open_needR != 0 {
            spendTotal += global.key[open_check];
        }
        if open_needI != 0 {
            spendITotal += global.ikey[open_check];
        }
    break;
    case lock_ALL://equals
        spendTotal += global.key[open_check];
        spendITotal += global.ikey[open_check];
    break;
}
return false;
