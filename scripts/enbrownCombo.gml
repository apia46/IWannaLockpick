var i, brownRedundant, auraPlayNoise, colorOld;
if (colorSpend == 11)
    exit
if (colorCopy == 11)
    exit
for (i = 0; i < lockCount; i += 1)
{
    if (lock[i, 0] == 11)
        exit
}
brownRedundant = 1
if (colorSpend == 10)
{
    for (i = 0; i < lockCount; i += 1)
    {
        if (lock[i, 0] != 10)
            brownRedundant = 0
    }
}
else
    brownRedundant = 0
auraPlayNoise = 0
if ((objPlayer.brownMode == 1) && ((browned == 0) && (!brownRedundant)))
{
    browned = 1
    colorOld = colorSpend
    colorSpend = 10
    scrComboCFunc()
    colorSpend = colorOld
    scrPlaySoundExt(sndCopy1, 1, 1, false)
    event_user(3)
    brownNearPlayer = 1
    undoBUFFER()
}
else if ((objPlayer.brownMode == -1) && (browned == 1))
{
    browned = 0
    scrComboCFunc()
    scrPlaySoundExt(sndCopy2, 1, 1, false)
    event_user(3)
    brownNearPlayer = 1
    undoBUFFER()
}
