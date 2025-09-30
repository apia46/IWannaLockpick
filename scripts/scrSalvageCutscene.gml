var iPart;
with (objPlayer)
{
    for (iPart = 0; iPart < 80; iPart += 1)
    {
        p = instance_create((x + random_range(-8, 8)), (y + random_range(-8, 8)), oKeyPart)
        p.direction = (iPart * 222.48)
        p.image_blend = make_color_rgb(150, 255, 255)
    }
    for (iPart = 0; iPart < 60; iPart += 1)
    {
        p = instance_create((x + random_range(-8, 8)), (y + random_range(-8, 8)), oKeyPart)
        p.direction = (iPart * 222.48)
        p.speed *= 0.6
        p.image_blend = make_color_rgb(150, 190, 255)
    }
    instance_destroy()
}
scrPlaySoundExt(sndTitleStart, 0.75, 0.75, false)
global.inCutscene = 1
