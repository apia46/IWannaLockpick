if (global.key[key_MASTER] > 0) && global.complexMode == 0{
    if masterMode == 0{
        masterMode = 1;
        scrPlaySoundExt(sndMasterEquip,1,1,false);
    }else{
        masterMode = 0;
        scrPlaySoundExt(sndMasterUnequip,1,1,false);
    }
}
if (global.ikey[key_MASTER] > 0) && global.complexMode == 1{
    if masterMode == 0{
        masterMode = 2;
        scrPlaySoundExt(sndMasterEquip,1,1,false);
    }else{
        masterMode = 0;
        scrPlaySoundExt(sndMasterUnequip,1,1,false);
    }
}
if (global.key[key_MASTER] < 0) && global.complexMode == 0{
    if masterMode == 0{
        masterMode = -1;
        scrPlaySoundExt(sndMasterAnti,1,1,false);
    }else{
        masterMode = 0;
        scrPlaySoundExt(sndMasterUnequip,1,1,false);
    }
}
if (global.ikey[key_MASTER] < 0) && global.complexMode == 1{
    if masterMode == 0{
        masterMode = -2;
        scrPlaySoundExt(sndMasterAnti,1,1,false);
    }else{
        masterMode = 0;
        scrPlaySoundExt(sndMasterUnequip,1,1,false);
    }
}
