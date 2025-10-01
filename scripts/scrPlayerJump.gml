if (place_meeting(x,y+(global.grav),objBlock) || (place_meeting(x,y+(global.grav),oGate) && !place_free(x,y+(global.grav))) || onPlatform || place_meeting(x,y+(global.grav),objWater))
{
    vspeed = -jump;
    recentJump = 1;
    djump = 1;
    scrPlaySoundExt(sndJump,1,1,false);
}
else if (djump == 1 || place_meeting(x,y+(global.grav),objWater2) || (global.infJump || global.debugInfJump))
{
    vspeed = -jump2;
    sprite_index = sprPlayerJump;
    scrPlaySoundExt(sndDJump,1,1,false);
    
    if (!place_meeting(x,y+(global.grav),objWater3))
        djump = 0;  //take away the player's double jump
    else
        djump = 1;  //replenish djump if touching water3
}
