///auto-resets player's master mode
if instance_exists(objPlayer){//Master mode check
    if objPlayer.masterMode == 1 && global.key[key_MASTER] <= 0{
        objPlayer.masterMode = 0;
    }
    if objPlayer.masterMode == -1 && global.key[key_MASTER] >= 0{
        objPlayer.masterMode = 0;
    }
    if objPlayer.masterMode == 2 && global.ikey[key_MASTER] <= 0{
        objPlayer.masterMode = 0;
    }
    if objPlayer.masterMode == -2 && global.ikey[key_MASTER] >= 0{
        objPlayer.masterMode = 0;
    }
}
