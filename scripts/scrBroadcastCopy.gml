///scrBroadcastCopy(colorSpend,colorCopy);
if argument0 != key_COPY{
    with oKeyCopy{
        if color == key_COPY{
            colorCopy = argument0;
        }
    }
    with oDoorSimple{
        if !browned{
            if color == key_COPY || colorSpend == key_COPY{
                colorCopy = argument0;
            }
        }
    }
    with oDoorCombo{
        if !browned{
            if colorSpend == key_COPY{
                colorCopy = argument0;
            }
            for(var i = 0; i < lockCount; i += 1){
                if lock[i,0] == key_COPY{
                    colorCopy = argument0;
                }
            }
        }
    }
    with oGate{
        colorCopy = argument0;
    }
}else{
    with oKeyCopy{
        if color == key_COPY{
            colorCopy = argument1;
        }
    }
    with oDoorSimple{
        if !browned{
            if color == key_COPY || colorSpend == key_COPY{
                colorCopy = argument1;
            }
        }
    }
    with oDoorCombo{
        if !browned{
            if colorSpend == key_COPY{
                colorCopy = argument1;
            }
            for(var i = 0; i < lockCount; i += 1){
                if lock[i,0] == key_COPY{
                    colorCopy = argument1;
                }
            }
        }
    }
    with oGate{
        colorCopy = argument1;
    }
}
