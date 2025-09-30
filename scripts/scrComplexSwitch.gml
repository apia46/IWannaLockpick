if ((!global.object[0]) && (!global.allUnlock))
    exit
scrPlaySoundExt(sndSignflip, 1, 1, false)
scrPlaySoundExt(sndCamera, 1, 1, false)
global.complexMode = (!global.complexMode)
with (objPlayer)
{
    drawIm = 1
    imAngle = 0
    imSin = 0
    imCos = 1
    if (masterMode != 0)
    {
        if ((global.key[0] > 0) && (global.complexMode == 0))
            masterMode = 1
        else if ((global.ikey[0] > 0) && (global.complexMode == 1))
            masterMode = 2
        else if ((global.key[0] < 0) && (global.complexMode == 0))
            masterMode = -1
        else if ((global.ikey[0] < 0) && (global.complexMode == 1))
            masterMode = -2
        else
        {
            masterMode = 0
            scrPlaySoundExt(sndMasterUnequip, 1, 1, false)
        }
    }
}
