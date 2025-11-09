///addComplexKeys(color,addR,addI);
//Used to be a script called addOrdinalKeys which was far more complex.
//The Ordinal Keys mechanic was scrapped for being confusing, though.
//I think complex keys are a better choice, which is why I replaced all the code.

if global.star[argument0] {
    return false;
}

global.key[argument0] += argument1;
global.ikey[argument0] += argument2;
