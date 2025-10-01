///warpGetCursorNode();
//Gets the node the cursor is hovering over, if it exists/is visible.
var oldNode = warpCurNode;
warpCurNode = -1;
for(var i = 0; i < numNodes; i += 1){
    if nodeVisible[i] == 1{//Don't hover over invisible nodes
        if warpCurX >= nodeX[i]-12 && warpCurX < nodeX[i]+12{
            if warpCurY >= nodeY[i]-12 && warpCurY < nodeY[i]+12{
                warpCurNode = i;
            }
        }
    }
}
if warpCurNode != oldNode{//Play sound
    if warpCurNode != -1{
        scrPlaySoundExt(sndSelectBeep,.6,.8,0);
    }
}
