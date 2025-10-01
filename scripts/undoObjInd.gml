switch argument0{
    case oKeyBulk:
    case oKeyWhite:
    case oKeyOrange:
    case oKeyPurple:
    case oKeyCyan:
    case oKeyPink:
    case oKeyRed:
    case oKeyGreen:
    case oKeyBlue:
    case oKeyBrown:
    case oKeyPure:
    case oKeyMaster:
    case oKeyBlack:
    case oKeyCopy:
        return 0;
    break;
    case oDoorSimple:
    case oDoorWhite:
    case oDoorOrange:
    case oDoorPurple:
    case oDoorCyan:
    case oDoorPink:
    case oDoorRed:
    case oDoorGreen:
    case oDoorBlue:
    case oDoorBrown:
    case oDoorPure:
    case oDoorGold:
    case oDoorBlack:
    case oDoorCopy:
    case oDoorStone:
        return 1;
    break;
    case oDoorCombo:
        return 2;
    break;
}
