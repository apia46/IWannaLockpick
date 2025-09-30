if ((objPlayer.masterMode == 1) && (global.key[0] > 0))
{
    objPlayer.masterMode = 0
    if (!global.star[0])
        addComplexKeys(0, 0, -1, 0, 0)
    copies -= 1
    if ((copies == 0) && (icopies == 0))
    {
        active = 0
        scrPlaySoundExt(sndMasterUnlock, 1, 1, false)
        event_user(0)
        event_user(4)
    }
    else if (copies >= 0)
    {
        scrPlaySoundExt(sndMasterUnlock, 1, 1, false)
        event_user(2)
    }
    else
    {
        scrPlaySoundExt(sndMasterRelock, 1, 1, false)
        event_user(1)
    }
}
else if ((objPlayer.masterMode == -1) && (global.key[0] < 0))
{
    objPlayer.masterMode = 0
    if (!global.star[0])
        addComplexKeys(0, 0, 1, 0, 0)
    copies += 1
    if ((copies == 0) && (icopies == 0))
    {
        scrPlaySoundExt(sndMasterUnlock, 1, 1, false)
        active = 0
        event_user(0)
        event_user(4)
    }
    else if (copies <= 0)
    {
        scrPlaySoundExt(sndMasterUnlock, 1, 1, false)
        event_user(2)
    }
    else
    {
        scrPlaySoundExt(sndMasterRelock, 1, 1, false)
        event_user(1)
    }
}
else if ((objPlayer.masterMode == 2) && (global.ikey[0] > 0))
{
    objPlayer.masterMode = 0
    if (!global.star[0])
        addComplexKeys(0, 0, 0, -1, 0)
    icopies -= 1
    if ((copies == 0) && (icopies == 0))
    {
        scrPlaySoundExt(sndMasterUnlock, 1, 1, false)
        active = 0
        event_user(0)
        event_user(4)
    }
    else if (icopies >= 0)
    {
        scrPlaySoundExt(sndMasterUnlock, 1, 1, false)
        event_user(2)
    }
    else
    {
        scrPlaySoundExt(sndMasterRelock, 1, 1, false)
        event_user(1)
    }
}
else if ((objPlayer.masterMode == -2) && (global.ikey[0] < 0))
{
    objPlayer.masterMode = 0
    if (!global.star[0])
        addComplexKeys(0, 0, 0, 1, 0)
    icopies += 1
    if ((copies == 0) && (icopies == 0))
    {
        scrPlaySoundExt(sndMasterUnlock, 1, 1, false)
        active = 0
        event_user(0)
        event_user(4)
    }
    else if (icopies <= 0)
    {
        scrPlaySoundExt(sndMasterUnlock, 1, 1, false)
        event_user(2)
    }
    else
    {
        scrPlaySoundExt(sndMasterRelock, 1, 1, false)
        event_user(1)
    }
}
