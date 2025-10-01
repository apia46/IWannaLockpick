///getMarkButtonSelected(buttonID);
if mousePMBID == argument0{
    return 1;
}
switch argument0{
    case 3://Is Symbol
        if tmpType == 0{return 1;}else{return 0;}
    break;
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9://Symbols
        if tmpSymbol == (argument0-4) && tmpType == 0{return 1;}else{return 0;}
    break;
    case 10://Is Number
        if tmpType == 1{return 1;}else{return 0;}
    break;
    case 15://Is Text
        if tmpType == 2{return 1;}else{return 0;}
    break;
}
return 0;
