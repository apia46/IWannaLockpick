var auraPlayNoise, colorOld, bPart;
auraPlayNoise = 0
if ((objPlayer.brownMode == 1) && ((browned == 0) && (color != 10)))
{
    browned = 1
    auraPlayNoise = 1
    colorOld = color
    color = 10
    scrColorKey()
    color = colorOld
    if ((type == 1) || (type == 3))
    {
        sprite_index = sprKeyAbs
        image_index = 0
        image_speed = 0
    }
    else
    {
        sprite_index = sprKey
        image_index = 0
        image_speed = 0
    }
    scrPlaySoundExt(sndCopy1, 1, 1, false)
    bPart = instance_create((x + 16), (y + 16), oBrownParticle)
    bPart.mode = 0
    bPart.scale = 0.4
    bPart = instance_create((x + 16), (y + 16), oBrownParticle)
    bPart.mode = 0
    bPart.scale = 0.2
}
else if ((objPlayer.brownMode == -1) && (browned == 1))
{
    browned = 0
    auraPlayNoise = 1
    scrColorKey()
    image_speed = 0
    image_index = 0
    if (color == 0)
    {
        if ((type == 0) || (type == 2))
            sprite_index = sprKMaster
        else
            sprite_index = sprKMasterAbs
    }
    scrPlaySoundExt(sndCopy2, 1, 1, false)
    bPart = instance_create((x + 16), (y + 16), oBrownParticle)
    bPart.mode = 1
    bPart.scale = 0.4
    bPart = instance_create((x + 16), (y + 16), oBrownParticle)
    bPart.mode = 1
    bPart.scale = 0.2
}
