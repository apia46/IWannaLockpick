if instance_exists(objPlayer)
{
    if ((objPlayer.masterMode == 1) && (global.key[0] <= 0))
        objPlayer.masterMode = 0
    if ((objPlayer.masterMode == -1) && (global.key[0] >= 0))
        objPlayer.masterMode = 0
    if ((objPlayer.masterMode == 2) && (global.ikey[0] <= 0))
        objPlayer.masterMode = 0
    if ((objPlayer.masterMode == -2) && (global.ikey[0] >= 0))
        objPlayer.masterMode = 0
}
