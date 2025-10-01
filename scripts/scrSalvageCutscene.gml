with objPlayer{
    for(var iPart = 0; iPart < 80; iPart += 1){
        p = instance_create(x+random_range(-8,8),y+random_range(-8,8),oKeyPart);
        p.direction = iPart*(360*.618);
        p.image_blend = make_color_rgb(150,255,255);
    }
    for(var iPart = 0; iPart < 60; iPart += 1){
        p = instance_create(x+random_range(-8,8),y+random_range(-8,8),oKeyPart);
        p.direction = iPart*(360*.618);
        p.speed *= .6;
        p.image_blend = make_color_rgb(150,190,255);
    }
    instance_destroy();
}
scrPlaySoundExt(sndTitleStart,.75,.75,0);
global.inCutscene = 1;
