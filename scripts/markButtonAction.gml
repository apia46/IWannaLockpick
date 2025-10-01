///markButtonAction(buttonID);
if argument0 != -1{
    scrPlaySoundExt(sndSelectMade,.75,1.2,0);
}
switch argument0{
    case 0://Save
        global.pmType[global.curPM] = tmpType;
        global.pmSymbol[global.curPM] = tmpSymbol;
        global.pmNum[global.curPM] = tmpNum;
        global.pmStr[global.curPM] = tmpStr;
        global.pmCol[global.curPM] = tmpCol;
        scrSavePencilmark(room);
        global.pmState = 0;
        global.curPM = -1;
        scrPlaySoundExt(sndConfirmMark,.75,1,0);
    break;
    case 1://Cancel
        if markIsNew{
            scrRemoveMark(global.curPM);
        }
        global.curPM = -1;
        global.pmState = 0;
        scrSavePencilmark(room);
    break;
    case 2://Erase
        scrRemoveMark(global.curPM);
        global.curPM = -1;
        global.pmState = 0;
        scrSavePencilmark(room);
    break;
    case 3://Is Symbol
        tmpType = 0;
    break;
    case 10://Is Number
        tmpType = 1;
    break;
    case 11://Number --
        tmpNum -= 10;
        tmpType = 1;
    break;
    case 12://Number -
        tmpNum -= 1;
        tmpType = 1;
    break;
    case 13://Number +
        tmpNum += 1;
        tmpType = 1;
    break;
    case 14://Number ++
        tmpNum += 10;
        tmpType = 1;
    break;
    case 15://Is Text
        tmpType = 2;
    break;
    case 16://Write Text
        keyboard_string = tmpStr;
        global.pmState = 2;
        tmpType = 2;
    break;
    case 17://Clear Text
        tmpStr = "";
        tmpType = 2;
    break;
    case 18://Save Input Text
        tmpStr = keyboard_string;
        global.pmState = 1;
    break;
    case 19://Cancel Input Text
        global.pmState = 1;
    break;
}
if argument0 >= 4 && argument0 < (4+6){//Set Symbol
    tmpSymbol = argument0 - 4;
    tmpType = 0;
}
if argument0 >= 20 && argument0 < (20+18){//Set Color
    tmpCol = argument0 - 20;
}
