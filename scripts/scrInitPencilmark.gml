var i;
for (i = 0; i < 256; i += 1)
{
    global.pmVis[i] = 0
    global.pmX[i] = 0
    global.pmY[i] = 0
    global.pmType[i] = 0
    global.pmSymbol[i] = 0
    global.pmNum[i] = 0
    global.pmStr[i] = 0
    global.pmCol[i] = 0
}
global.canMark = getValidMarkRoom(room)
global.curPM = -1
global.pmState = 0
