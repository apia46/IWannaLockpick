///scrBroadcastCopy(color);
with oKeyGlitch{
    if color == color_GLITCH{
        glitchMimic = argument0;
    }
}
with oDoorSimple{
    if !browned{
        if color == color_GLITCH || colorSpend == color_GLITCH{
            glitchMimic = argument0;
        }
    }
}
with oDoorCombo{
    if !browned{
        if colorSpend == color_GLITCH{
            glitchMimic = argument0;
        }
        for(var i = 0; i < lockCount; i += 1){
            if lock[i,0] == color_GLITCH{
                glitchMimic = argument0;
            }
        }
    }
}
with oGate{
    glitchMimic = argument0;
}
