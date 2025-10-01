///optionsMove(udrl);
var _dir = argument0;
if _dir == 0{//Up
    if curButton != -1{
        if oButUpID[tab,curButton] == -1{return false;}
        setOptionSelectedElement(oButUpID[tab,curButton],oButUpSld[tab,curButton]);
        scrPlaySoundExt(sndDiaScroll,1,1,0);
    }else if curSlider != -1{
        if oSldUpID[tab,curSlider] == -1{return false;}
        setOptionSelectedElement(oSldUpID[tab,curSlider],oSldUpSld[tab,curSlider]);
        scrPlaySoundExt(sndDiaScroll,1,1,0);
    }
}else if _dir == 1{//Down
    if curButton != -1{
        if oButDnID[tab,curButton] == -1{return false;}
        setOptionSelectedElement(oButDnID[tab,curButton],oButDnSld[tab,curButton]);
        scrPlaySoundExt(sndDiaScroll,1,1,0);
    }else if curSlider != -1{
        if oSldDnID[tab,curSlider] == -1{return false;}
        setOptionSelectedElement(oSldDnID[tab,curSlider],oSldDnSld[tab,curSlider]);
        scrPlaySoundExt(sndDiaScroll,1,1,0);
    }
}else if _dir == 2{//Left
    if curButton != -1 && curSlider == -1{
        if oButLtID[tab,curButton] == -1{return false;}
        setOptionSelectedElement(oButLtID[tab,curButton],oButLtSld[tab,curButton]);
        scrPlaySoundExt(sndDiaScroll,1,1,0);
    }
}else if _dir == 3{//Right
    if curButton != -1 && curSlider == -1{
        if oButRtID[tab,curButton] == -1{return false;}
        setOptionSelectedElement(oButRtID[tab,curButton],oButRtSld[tab,curButton]);
        scrPlaySoundExt(sndDiaScroll,1,1,0);
    }
}
