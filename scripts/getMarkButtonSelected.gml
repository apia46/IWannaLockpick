if (mousePMBID == argument0)
    return 1;
switch argument0
{
    case 3:
        if (tmpType == 0)
            return 1;
        else
            return 0;
        break
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
        if ((tmpSymbol == (argument0 - 4)) && (tmpType == 0))
            return 1;
        else
            return 0;
        break
    case 10:
        if (tmpType == 1)
            return 1;
        else
            return 0;
        break
    case 15:
        if (tmpType == 2)
            return 1;
        else
            return 0;
        break
}

return 0;
