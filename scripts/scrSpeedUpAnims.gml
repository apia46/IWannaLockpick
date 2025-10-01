///scrSpeedUpAnims();
//Speeds up the animations if Fast Anims is on.
if global.fastAnims{
    global.fAnimIsNormal = 0;
    global.fAnimTimer = 100;
    global.fAnimSpd = min(global.fAnimSpd+.05,1);
}
