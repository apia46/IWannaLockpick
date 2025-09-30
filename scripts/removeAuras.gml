var auraPlayNoise, colorOld;
auraPlayNoise = 0
if ((objPlayer.aura[0] == 1) && (aura[0] == 1))
{
    aura[0] = 0
    auraPlayNoise = 1
    colorOld = color
    color = 1
    scrColorDoor()
    event_user(0)
    color = colorOld
    scrColorDoor()
    brownNearPlayer = 1
    undoBUFFER()
}
if ((objPlayer.aura[1] == 1) && (aura[1] == 1))
{
    aura[1] = 0
    auraPlayNoise = 1
    colorOld = color
    color = 10
    scrColorDoor()
    event_user(0)
    color = colorOld
    scrColorDoor()
    brownNearPlayer = 1
    undoBUFFER()
}
if ((objPlayer.aura[2] == 1) && (aura[2] == 1))
{
    aura[2] = 0
    auraPlayNoise = 1
    colorOld = color
    color = 2
    scrColorDoor()
    event_user(0)
    color = colorOld
    scrColorDoor()
    brownNearPlayer = 1
    undoBUFFER()
}
if auraPlayNoise
    scrPlaySoundExt(sndCrumble, 1, 1, false)
