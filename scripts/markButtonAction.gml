if (argument0 != -1)
    scrPlaySoundExt(sndSelectMade, 0.75, 1.2, false)
switch argument0
{
    case 0:
        global.pmType[global.curPM] = tmpType
        global.pmSymbol[global.curPM] = tmpSymbol
        global.pmNum[global.curPM] = tmpNum
        global.pmStr[global.curPM] = tmpStr
        global.pmCol[global.curPM] = tmpCol
        scrSavePencilmark(room)
        global.pmState = 0
        global.curPM = -1
        scrPlaySoundExt(sndConfirmMark, 0.75, 1, false)
        break
    case 1:
        if markIsNew
            scrRemoveMark(global.curPM)
        global.curPM = -1
        global.pmState = 0
        scrSavePencilmark(room)
        break
    case 2:
        scrRemoveMark(global.curPM)
        global.curPM = -1
        global.pmState = 0
        scrSavePencilmark(room)
        break
    case 3:
        tmpType = 0
        break
    case 10:
        tmpType = 1
        break
    case 11:
        tmpNum -= 10
        tmpType = 1
        break
    case 12:
        tmpNum -= 1
        tmpType = 1
        break
    case 13:
        tmpNum += 1
        tmpType = 1
        break
    case 14:
        tmpNum += 10
        tmpType = 1
        break
    case 15:
        tmpType = 2
        break
    case 16:
        keyboard_string = tmpStr
        global.pmState = 2
        tmpType = 2
        break
    case 17:
        tmpStr = ""
        tmpType = 2
        break
    case 18:
        tmpStr = keyboard_string
        global.pmState = 1
        break
    case 19:
        global.pmState = 1
        break
}

if ((argument0 >= 4) && (argument0 < 10))
{
    tmpSymbol = (argument0 - 4)
    tmpType = 0
}
if ((argument0 >= 20) && (argument0 < 38))
    tmpCol = (argument0 - 20)
