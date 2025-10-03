///scrAddSpendAmt(color,count,icount,type,power_of_i);
var open_check = argument0;
if open_check == key_GLITCH{
    open_check = colorGlitch;
}
switch argument4{
    case 0://i^0 = Multiply by 1
        var open_needR = argument1;
        var open_needI = argument2;
    break;
    case 1://i^1 = Multiply by i
        var open_needR = -argument2;
        var open_needI = argument1;
    break;
    case 2://i^2 = Multiply by -1
        var open_needR = -argument1;
        var open_needI = -argument2;
    break;
    case 3://i^3 = Multiply by -i
        var open_needR = argument2;
        var open_needI = -argument1;
    break;
}
switch argument3{
    case 0://normal (can accept complex numbers)
        spendTotal -= open_needR;
        spendITotal -= open_needI;
    break;
    case 1://blank
        //Nothing really
    break;
    case 2://blast (can accept real or imaginary, but not both)
        if open_needR != 0{
            spendTotal -= global.key[open_check];
        }
        if open_needI != 0{
            spendITotal -= global.ikey[open_check];
        }
    break;
    case 3://equals
        spendTotal -= global.key[open_check];
        spendITotal -= global.ikey[open_check];
    break;
}
return false;
