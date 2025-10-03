var auraPlayNoise = 0;
if objPlayer.brownMode == 1 && browned == 0 && !(color == color_BROWN && colorSpend == color_BROWN){
    browned = 1;
    var colorOld = color;
    var colorOld2 = colorSpend;
    color = color_BROWN;
    colorSpend = color_BROWN;
    scrColorDoor();
    scrColorDoor2();
    color = colorOld;
    colorSpend = colorOld2;
    scrPlaySoundExt(sndCopy1,1,1,false);
    event_user(3);
    brownNearPlayer = 1;
    undoBUFFER();
}else if objPlayer.brownMode == -1 && browned == 1{
    browned = 0;
    scrColorDoor();
    scrColorDoor2();
    scrPlaySoundExt(sndCopy2,1,1,false);
    event_user(3);
    brownNearPlayer = 1;
    undoBUFFER();
}

if browned{
    tempColor = color_BROWN;
    tempSpend = color_BROWN;
}else{
    tempColor = color;
    tempSpend = colorSpend;
}
