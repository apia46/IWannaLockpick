var i;
if (argument0 != 12)
{
    with (oKeyCopy)
    {
        if (color == 12)
            colorCopy = argument0
    }
    with (oDoorSimple)
    {
        if (!browned)
        {
            if ((color == 12) || (colorSpend == 12))
                colorCopy = argument0
        }
    }
    with (oDoorCombo)
    {
        if (!browned)
        {
            if (colorSpend == 12)
                colorCopy = argument0
            for (i = 0; i < lockCount; i += 1)
            {
                if (lock[i, 0] == 12)
                    colorCopy = argument0
            }
        }
    }
    with (oGate)
        colorCopy = argument0
}
else
{
    with (oKeyCopy)
    {
        if (color == 12)
            colorCopy = argument1
    }
    with (oDoorSimple)
    {
        if (!browned)
        {
            if ((color == 12) || (colorSpend == 12))
                colorCopy = argument1
        }
    }
    with (oDoorCombo)
    {
        if (!browned)
        {
            if (colorSpend == 12)
                colorCopy = argument1
            for (i = 0; i < lockCount; i += 1)
            {
                if (lock[i, 0] == 12)
                    colorCopy = argument1
            }
        }
    }
    with (oGate)
        colorCopy = argument1
}
