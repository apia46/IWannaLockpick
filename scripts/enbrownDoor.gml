if hasColor(color_PURE) {exit;}
var auraPlayNoise = 0;
if objPlayer.brownMode == 1 && browned == 0 && !(color == color_BROWN && colorSpend == color_BROWN){
    browned = 1;
    scrPlaySoundExt(sndCopy1,1,1,false);
    event_user(3);
    brownNearPlayer = 1;
    undoBUFFER();
}else if objPlayer.brownMode == -1 && browned == 1{
    browned = 0;
    scrPlaySoundExt(sndCopy2,1,1,false);
    event_user(3);
    brownNearPlayer = 1;
    undoBUFFER();
}
