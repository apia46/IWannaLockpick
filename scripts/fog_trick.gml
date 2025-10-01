///fog_trick(color,amount)
///fog_trick()
//Thanks renex!

if (argument_count==2) {
    d3d_set_fog(1,argument[0],0.5-argument[1],1.5-argument[1])
} else d3d_set_fog(0,0,0,0)
