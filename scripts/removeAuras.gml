var auraPlayNoise = 0;
if objPlayer.aura[0] == 1 && aura[0] == 1{
    aura[0] = 0;
    auraPlayNoise = 1;
    var colorOld = color;
    color = color_WHITE;
    event_user(0);
    color = colorOld;
    brownNearPlayer = 1;
    undoBUFFER();
}
if objPlayer.aura[1] == 1 && aura[1] == 1{
    aura[1] = 0;
    auraPlayNoise = 1;
    var colorOld = color;
    color = color_BROWN;
    event_user(0);
    color = colorOld;
    brownNearPlayer = 1;
    undoBUFFER();
}
if objPlayer.aura[2] == 1 && aura[2] == 1{
    aura[2] = 0;
    auraPlayNoise = 1;
    var colorOld = color;
    color = color_ORANGE;
    event_user(0);
    color = colorOld;
    brownNearPlayer = 1;
    undoBUFFER();
}
if auraPlayNoise{
    scrPlaySoundExt(sndCrumble,1,1,false);
}
