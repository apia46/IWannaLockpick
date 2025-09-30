var openEligible, tempSpend, goldEligible, i, metRequirement;
if (!instance_exists(objPlayer))
    exit
if (copyState != 0)
    exit
if (!active)
{
    brownNearPlayer = 0
    visible = 0
    exit
}
brownNearPlayer = 0
openEligible = 0
if ((aura[0] == 1) || ((aura[1] == 1) || (aura[2] == 1)))
{
    if (distance_to_object(objPlayer) <= 23)
    {
        removeAurasCombo()
        if ((aura[0] == 0) && ((aura[1] == 0) && (aura[2] == 0)))
        {
            if (objPlayer.brownMode != 0)
                enbrownCombo()
        }
    }
    else
        brownNearPlayer = 0
    exit
}
else
{
    openEligible = 1
    if (objPlayer.brownMode != 0)
    {
        if (distance_to_object(objPlayer) <= 23)
            enbrownCombo()
        else
            brownNearPlayer = 0
    }
}
if browned
    tempSpend = 10
else
    tempSpend = colorSpend
if (global.complexMode == 0)
{
    if (copies > 0)
        iPow = 0
    if (copies < 0)
        iPow = 2
    if (copies == 0)
    {
        if (icopies > 0)
            iPow = 1
        if (icopies < 0)
            iPow = 3
    }
}
else
{
    if (icopies > 0)
        iPow = 1
    if (icopies < 0)
        iPow = 3
    if (icopies == 0)
    {
        if (copies > 0)
            iPow = 0
        if (copies < 0)
            iPow = 2
    }
}
goldEligible = 0
if ((objPlayer.masterMode == 1) && (global.key[0] > 0))
    goldEligible = 1
else if ((objPlayer.masterMode == -1) && (global.key[0] < 0))
    goldEligible = -1
else if ((objPlayer.masterMode == 2) && (global.ikey[0] > 0))
    goldEligible = 2
else if ((objPlayer.masterMode == -2) && (global.ikey[0] < 0))
    goldEligible = -2
if ((!browned) && (goldEligible != 0))
{
    if ((colorSpend == 0) || ((colorSpend == 11) || (((colorCopy == 0) || (colorCopy == 11)) && (browned == 0))))
        goldEligible = 0
    for (i = 0; i < lockCount; i += 1)
    {
        if ((lock[i, 0] == 0) || (lock[i, 0] == 11))
            goldEligible = 0
    }
}
if (distance_to_object(objPlayer) <= 1)
{
    switch goldEligible
    {
        case 0:
            metRequirement = 1
            if browned
            {
                for (i = 0; i < lockCount; i += 1)
                {
                    if (!scrCanOpenFeed(10, lock[i, 1], lock[i, 2], lock[i, 3], iPow))
                        metRequirement = 0
                }
            }
            else
            {
                for (i = 0; i < lockCount; i += 1)
                {
                    if (!scrCanOpenFeed(lock[i, 0], lock[i, 1], lock[i, 2], lock[i, 3], iPow))
                        metRequirement = 0
                }
            }
            if metRequirement
            {
                spendTotal = 0
                spendITotal = 0
                if browned
                {
                    for (i = 0; i < lockCount; i += 1)
                        scrAddSpendAmt(10, lock[i, 1], lock[i, 2], lock[i, 3], iPow)
                }
                else
                {
                    for (i = 0; i < lockCount; i += 1)
                        scrAddSpendAmt(lock[i, 0], lock[i, 1], lock[i, 2], lock[i, 3], iPow)
                }
                if (!isStar(tempSpend, colorCopy))
                    addComplexKeys(tempSpend, colorCopy, spendTotal, spendITotal, 0)
                scrBroadcastCopy(tempSpend, colorCopy)
                scrOpenCombo()
            }
            break
        case 1:
            objPlayer.masterMode = 0
            if (!global.star[0])
                addComplexKeys(0, 0, -1, 0, 0)
            copies -= 1
            if ((copies == 0) && (icopies == 0))
            {
                scrPlaySoundExt(sndMasterUnlock, 1, 1, false)
                if global.salvageActive
                {
                    event_user(5)
                    scrSaveSalvage(global.salvageID, id)
                }
                else
                    event_user(0)
                solid = 0
                visible = 0
                active = 0
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
            undoBUFFER()
            break
        case -1:
            objPlayer.masterMode = 0
            if (!global.star[0])
                addComplexKeys(0, 0, 1, 0, 0)
            copies += 1
            if ((copies == 0) && (icopies == 0))
            {
                scrPlaySoundExt(sndMasterUnlock, 1, 1, false)
                if global.salvageActive
                {
                    event_user(5)
                    scrSaveSalvage(global.salvageID, id)
                }
                else
                    event_user(0)
                solid = 0
                visible = 0
                active = 0
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
            undoBUFFER()
            break
        case 2:
            objPlayer.masterMode = 0
            if (!global.star[0])
                addComplexKeys(0, 0, 0, -1, 0)
            icopies -= 1
            if ((copies == 0) && (icopies == 0))
            {
                scrPlaySoundExt(sndMasterUnlock, 1, 1, false)
                if global.salvageActive
                {
                    event_user(5)
                    scrSaveSalvage(global.salvageID, id)
                }
                else
                    event_user(0)
                visible = 0
                solid = 0
                active = 0
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
            undoBUFFER()
            break
        case -2:
            objPlayer.masterMode = 0
            if (!global.star[0])
                addComplexKeys(0, 0, 0, 1, 0)
            icopies += 1
            if ((copies == 0) && (icopies == 0))
            {
                scrPlaySoundExt(sndMasterUnlock, 1, 1, false)
                if global.salvageActive
                {
                    event_user(5)
                    scrSaveSalvage(global.salvageID, id)
                }
                else
                    event_user(0)
                visible = 0
                solid = 0
                active = 0
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
            undoBUFFER()
            break
    }
    
}
useMasterCheck()
