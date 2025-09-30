with (oDoorSimple)
{
    myLight = instance_create((x + (16 * w)), (y + (16 * h)), oLight)
    myLight.parent = id
    myLight.image_xscale = (0.1 * max(w, h))
    myLight.image_yscale = myLight.image_xscale
    myLight.image_blend = c1
}
