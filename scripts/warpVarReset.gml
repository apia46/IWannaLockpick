///warpVarReset();
var ix,iy,ia,r;
var arrX,arrY;
arrX[0] = 0;
arrY[0] = 0;

//Cursor stuff
warpCurXS = 0;//Starting node cursor position
warpCurYS = 0;
warpCurX = 0;//Current cursor position
warpCurY = 0;
warpCurNode = -1;//Which node is selected by the cursor
warpNodeS = -1;//Starting node

//Define nodes
//Warp rod GUI is 592x448 (slightly less), and has a centered sprite origin.
//So, all nodes will be relative to (400,304) in screen space.
numNodes = 0;
defWarpNode(0,-164,-104,rMainHub,"H");//Main Hub
for(var i=0; i<6; i+=1){//First 6 worlds
    r = 50;
    ia = 30+(360*i/6);
    ix = -164 + r*cos(degtorad(ia));
    iy = -104 - r*sin(degtorad(ia));
    arrX[i] = round(ix); arrY[i] = round(iy);
}
defWarpNode(1,arrX[0],arrY[0],rHub01,"1");
defWarpNode(2,arrX[1],arrY[1],rHub02,"2");
defWarpNode(3,arrX[2],arrY[2],rHub03,"3");
defWarpNode(4,arrX[3],arrY[3],rHub04,"4");
defWarpNode(5,arrX[4],arrY[4],rHub05,"5");
defWarpNode(6,arrX[5],arrY[5],rHub06,"6");
defWarpNode(7,0,-104,rBackHub,"B");//Back Hub
for(var i=0; i<5; i+=1){//Next 5 worlds
    r = 50;
    ia = 90+(360*i/5);
    ix = 0 + r*cos(degtorad(ia));
    iy = -104 - r*sin(degtorad(ia));
    arrX[i] = round(ix); arrY[i] = round(iy);
}
defWarpNode(8,arrX[0],arrY[0],rHub07,"7");
defWarpNode(9,arrX[1],arrY[1],rHub08,"8");
defWarpNode(10,arrX[2],arrY[2],rHub09,"9");
defWarpNode(11,arrX[3],arrY[3],rHub10,"10");
defWarpNode(12,arrX[4],arrY[4],rHub11,"11");
defWarpNode(13,164,-104,rHubGB,"T");//TGB Hub
defWarpNode(14,-164-64,0,rWayOut,"S");//Somewhere
defWarpNode(15,164,-104+32,rAutumnHub,"T1");//TGB-1
defWarpNode(16,164,-104+64,rWinterHub,"T2");//TGB-2
defWarpNode(17,164,-104+96,rSummerHub,"T3");//TGB-3
defWarpNode(18,164,-104+128,rSpringHub,"T4");//TGB-4
defWarpNode(19,0,50,rNullHub,"FP");//Focal Point
defWarpNode(20,0-64,50+48,rHub00,"0");//World 0
defWarpNode(21,0-96,50+48,rSecretLab,"SL");//Secret Lab
defWarpNode(22,0-32,50+64,rHub12,"12");//World 12
defWarpNode(23,0,50+80,rEXHub,"EX");//Chapter EX
defWarpNode(24,0+32,50+64,rHubOmega,"Ω");//World Ω
defWarpNode(25,0+64,50+48,rKinaDiary,"KD");//Kina's Diary
defWarpNode(26,-164-72,-104,rGuestRoom,"GR");//Guest Room
defWarpNode(27,0,50+112,rEXZ,"EP");//Epilogue Puzzle
//Define connections
numPairs = 0;
defWarpPair(0,1);//Hub connections
defWarpPair(0,2);
defWarpPair(0,3);
defWarpPair(0,4);
defWarpPair(0,5);
defWarpPair(0,6);
defWarpPair(0,7);
defWarpPair(0,14);//Somewhere
defWarpPair(0,26);//GR
defWarpPair(7,8);//Backside connections
defWarpPair(7,9);
defWarpPair(7,10);
defWarpPair(7,11);
defWarpPair(7,12);
defWarpPair(7,13);
defWarpPair(13,15);//TGB 0-1
defWarpPair(15,16);//TGB 1-2
defWarpPair(16,17);//TGB 2-3
defWarpPair(17,18);//TGB 3-4
defWarpPair(18,19);//TGB 4 to FP
defWarpPair(19,20);//Focal Point connections
defWarpPair(19,22);
defWarpPair(19,23);
defWarpPair(19,24);
defWarpPair(19,25);
defWarpPair(20,21);//W0 to SL
defWarpPair(23,27);//EX to Epilogue

//Get warp visibility + cursor start position
warpCurXS = 0;
warpCurYS = 0;
warpCurNode = -1;
warpNodeS = -1;
