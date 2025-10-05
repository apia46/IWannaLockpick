///addComplexKeys(color,addR,addI);
//Used to be a script called addOrdinalKeys which was far more complex.
//The Ordinal Keys mechanic was scrapped for being confusing, though.
//I think complex keys are a better choice, which is why I replaced all the code.

var effectiveColor = argument0;

if global.star[effectiveColor] {
    return false;
}

global.key[effectiveColor] += argument1;
global.ikey[effectiveColor] += argument2;
