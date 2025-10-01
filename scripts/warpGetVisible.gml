///warpGetVisible();
//Sets visibility of every node.
//Index 0 = Unlocked, Not Here
//Index 1 = Here (Not necessarily unlocked but should be)
//Index 2 = Locked, but adjacent
for(var i = 0; i < numNodes; i += 1){
    nodeVisible[i] = 0;//Default to invisible/locked
    nodeIndex[i] = 2;
    if global.areaReached[nodeArea[i]] || global.allUnlock{//Unlocked
        nodeVisible[i] = 1;
        nodeIndex[i] = 0;
    }else for(var j = 0; j < numPairs; j += 1){//Visible, not unlocked
        if pairA[j] == i || pairB[j] == i{
            if global.areaReached[nodeArea[pairA[j]]] || global.areaReached[nodeArea[pairB[j]]]{
                nodeVisible[i] = 1;
            }
        }
    }
    if global.curArea == nodeArea[i]{//Current area
        nodeVisible[i] = 1;
        nodeIndex[i] = 1;
        warpCurXS = nodeX[i];
        warpCurYS = nodeY[i];
        warpCurNode = i;
        warpNodeS = i;
    }
}
//Pair visibility
for(var j = 0; j < numPairs; j += 1){
    pairVis[j] = 0;
    if nodeVisible[pairA[j]] && nodeVisible[pairB[j]]{
        pairVis[j] = 1;
    }
}
