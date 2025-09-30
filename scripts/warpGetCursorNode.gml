var oldNode, i;
oldNode = warpCurNode
warpCurNode = -1
for (i = 0; i < numNodes; i += 1)
{
    if (nodeVisible[i] == 1)
    {
        if ((warpCurX >= (nodeX[i] - 12)) && (warpCurX < (nodeX[i] + 12)))
        {
            if ((warpCurY >= (nodeY[i] - 12)) && (warpCurY < (nodeY[i] + 12)))
                warpCurNode = i
        }
    }
}
if (warpCurNode != oldNode)
{
    if (warpCurNode != -1)
        scrPlaySoundExt(sndSelectBeep, 0.6, 0.8, false)
}
