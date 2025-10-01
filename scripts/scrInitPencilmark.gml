//Pencilmark
for(var i = 0; i < 256; i += 1){//Pencilmarks
    global.pmVis[i] = 0;
    global.pmX[i] = 0;
    global.pmY[i] = 0;
    global.pmType[i] = 0;//0 = Sym, 1 = Num, 2 = Txt
    global.pmSymbol[i] = 0;
    global.pmNum[i] = 0;
    global.pmStr[i] = 0;
    global.pmCol[i] = 0;
}
global.canMark = getValidMarkRoom(room);
global.curPM = -1;
global.pmState = 0;//0 = Normal, 1 = Edit, 2 = Text Field
