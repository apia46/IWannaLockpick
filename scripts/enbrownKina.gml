var auraPlayNoise, colorOld, colorOld2;
auraPlayNoise = 0
if ((objPlayer.brownMode == 1) && ((browned == 0) && (!((color == 10) && (colorSpend == 10)))))
{
    browned = 1
    colorOld = color
    colorOld2 = colorSpend
    color = 10
    colorSpend = 10
    scrColorDoor()
    scrColorDoor2()
    color = colorOld
    colorSpend = colorOld2
    scrPlaySoundExt(sndCopy1, 1, 1, false)
    event_user(3)
    brownNearPlayer = 1
    undoBUFFER()
}
else if ((objPlayer.brownMode == -1) && (browned == 1))
{
    browned = 0
    scrColorDoor()
    scrColorDoor2()
    scrPlaySoundExt(sndCopy2, 1, 1, false)
    event_user(3)
    brownNearPlayer = 1
    undoBUFFER()
}
if browned
{
    tempColor = 10
    tempSpend = 10
}
else
{
    tempColor = color
    tempSpend = colorSpend
}
