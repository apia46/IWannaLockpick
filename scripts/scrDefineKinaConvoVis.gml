///scrDefineKinaConvoVis();
//Sets the visibility of each convo.
//NOTE: Convos are different than conversation IDs. The former stores a pointer to the latter.

for(var i = 0; i < numConvos; i += 1){
    convoVis[i] = 0;
}

//Starting 3
convoVis[0] = 1;
convoVis[1] = 1;
convoVis[2] = 1;

//W1
if global.areaClear[0]{convoVis[3] = 1;}
//W2
if global.areaClear[1]{convoVis[4] = 1;}
//W3
if global.areaClear[2]{convoVis[5] = 1;}
//W4
if global.areaClear[3]{convoVis[6] = 1;}
//W5
if global.areaClear[4]{convoVis[7] = 1;}
//W6
if global.areaClear[5]{convoVis[8] = 1;}

//Backside
if global.areaReached[7]{convoVis[9] = 1;}

//UDL
if global.convoUnlocked[0] || global.roomClear[72]{convoVis[10] = 1;}

//W7
if global.areaClear[6]{convoVis[11] = 1;}
//W8
if global.areaClear[7]{convoVis[12] = 1;}
//W9
if global.areaClear[8]{convoVis[13] = 1;}
//W10
if global.areaClear[9]{convoVis[14] = 1;}
//W11 (First puzzle instead of clear)
if global.convoUnlocked[1]{convoVis[15] = 1;}

//Monolith
if global.convoUnlocked[2] || global.roomClear[134]{convoVis[16] = 1;}

//TGB-tut
if scrSalvageExists(0){
    var file,sec,fname;
    fname = "Data"+scrGetSaveNum()+"\door"+scrSalvageDoorString(0)+".ini";
    file = ini_open(fname);//Opens the door file
    
    sec = "MainData";//starts with the big stuff
    if ini_read_real(sec,"DoorExists",0) == 1{
        convoVis[17] = 1;
    }
    ini_close();
}
//if scrSalvageExists(0){convoVis[17] = 1;}

//TGB-1
if global.areaReached[15]{convoVis[18] = 1;}
//TGB-2
if global.areaReached[16]{convoVis[19] = 1;}
//TGB-3
if global.areaReached[17]{convoVis[20] = 1;}
//TGB-4
if global.areaReached[18]{convoVis[21] = 1;}

//Null
if global.areaReached[19]{convoVis[22] = 1;}
//W0
if global.areaClear[11]{convoVis[23] = 1;}
//Lab
if global.convoUnlocked[3]{convoVis[24] = 1;}
//Kinapuzzle
if global.kinaHeart{convoVis[25] = 1;}
//W12
if global.areaClear[12]{convoVis[26] = 1;}
//EX
if global.areaReached[23]{convoVis[22] = 1;}
//Omega
if global.areaClear[13]{convoVis[28] = 1;}
//Diary
var _ul = 1;
for(var i = 60; i <= 79; i += 1){
    if !global.convoRead[i]{_ul = 0;}
}
if _ul{convoVis[29] = 1;}
