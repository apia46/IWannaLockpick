var i, j;
for (i = 0; i < numNodes; i += 1)
{
    nodeVisible[i] = 0
    nodeIndex[i] = 2
    if (global.areaReached[nodeArea[i]] || global.allUnlock)
    {
        nodeVisible[i] = 1
        nodeIndex[i] = 0
    }
    else
    {
        for (j = 0; j < numPairs; j += 1)
        {
            if ((pairA[j] == i) || (pairB[j] == i))
            {
                if (global.areaReached[nodeArea[pairA[j]]] || global.areaReached[nodeArea[pairB[j]]])
                    nodeVisible[i] = 1
            }
        }
    }
    if (global.curArea == nodeArea[i])
    {
        nodeVisible[i] = 1
        nodeIndex[i] = 1
        warpCurXS = nodeX[i]
        warpCurYS = nodeY[i]
        warpCurNode = i
        warpNodeS = i
    }
}
for (j = 0; j < numPairs; j += 1)
{
    pairVis[j] = 0
    if (nodeVisible[pairA[j]] && nodeVisible[pairB[j]])
        pairVis[j] = 1
}
