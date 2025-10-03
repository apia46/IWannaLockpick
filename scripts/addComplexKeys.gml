///addComplexKeys(color,glitchMimic,addR,addI,power_of_i);
//Used to be a script called addOrdinalKeys which was far more complex.
//The Ordinal Keys mechanic was scrapped for being confusing, though.
//I think complex keys are a better choice, which is why I replaced all the code.

var effectiveColor = argument0;
var glitchMimic = argument1;
if effectiveColor == color_GLITCH{
    effectiveColor = glitchMimic;
}

if global.star[effectiveColor] {
    return false;
}

var count, icount;
switch argument4 {
    case 0://i^0 = Multiply by 1
        count = argument2;
        icount = argument3;
    break;
    case 1://i^1 = Multiply by i
        count = -argument3;
        icount = argument2;
    break;
    case 2://i^2 = Multiply by -1
        count = -argument2;
        icount = -argument3;
    break;
    case 3://i^3 = Multiply by -i
        count = argument3;
        icount = -argument2;
    break;
}

global.key[effectiveColor] += count;
global.ikey[effectiveColor] += icount;
