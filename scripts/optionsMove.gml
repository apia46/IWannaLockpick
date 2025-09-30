var _dir;
_dir = argument0
if (_dir == 0)
{
    if (curButton != -1)
    {
        if (oButUpID[tab, curButton] == -1)
            return 0;
        setOptionSelectedElement(oButUpID[tab, curButton], oButUpSld[tab, curButton])
        scrPlaySoundExt(sndDiaScroll, 1, 1, false)
    }
    else if (curSlider != -1)
    {
        if (oSldUpID[tab, curSlider] == -1)
            return 0;
        setOptionSelectedElement(oSldUpID[tab, curSlider], oSldUpSld[tab, curSlider])
        scrPlaySoundExt(sndDiaScroll, 1, 1, false)
    }
}
else if (_dir == 1)
{
    if (curButton != -1)
    {
        if (oButDnID[tab, curButton] == -1)
            return 0;
        setOptionSelectedElement(oButDnID[tab, curButton], oButDnSld[tab, curButton])
        scrPlaySoundExt(sndDiaScroll, 1, 1, false)
    }
    else if (curSlider != -1)
    {
        if (oSldDnID[tab, curSlider] == -1)
            return 0;
        setOptionSelectedElement(oSldDnID[tab, curSlider], oSldDnSld[tab, curSlider])
        scrPlaySoundExt(sndDiaScroll, 1, 1, false)
    }
}
else if (_dir == 2)
{
    if ((curButton != -1) && (curSlider == -1))
    {
        if (oButLtID[tab, curButton] == -1)
            return 0;
        setOptionSelectedElement(oButLtID[tab, curButton], oButLtSld[tab, curButton])
        scrPlaySoundExt(sndDiaScroll, 1, 1, false)
    }
}
else if (_dir == 3)
{
    if ((curButton != -1) && (curSlider == -1))
    {
        if (oButRtID[tab, curButton] == -1)
            return 0;
        setOptionSelectedElement(oButRtID[tab, curButton], oButRtSld[tab, curButton])
        scrPlaySoundExt(sndDiaScroll, 1, 1, false)
    }
}
