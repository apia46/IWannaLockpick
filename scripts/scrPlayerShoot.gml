if (instance_number(objBullet) < 4)
{
    instance_create(x,y,objBullet);
    scrPlaySoundExt(sndShoot,1,1,false);
}
