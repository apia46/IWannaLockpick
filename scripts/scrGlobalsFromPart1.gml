///Sets variables such as global.areaReached depending on Part 1 savefile data.

//Savefile
//global.newSavefile = 0;

//Area reached
global.areaReached[0] = true;//hub
if global.roomClear[1]{global.areaReached[1] = true;}//W1
if global.roomClear[14]{global.areaReached[2] = true;}
if global.roomClear[28]{global.areaReached[3] = true;}
if global.roomClear[39]{global.areaReached[4] = true;}
if global.roomClear[50]{global.areaReached[5] = true;}
if global.roomClear[59]{global.areaReached[6] = true;}
if global.roomClear[73]{global.areaReached[7] = true;}
if global.roomClear[73]{global.areaReached[8] = true;}
if global.roomClear[88]{global.areaReached[9] = true;}
if global.roomClear[97]{global.areaReached[10] = true;}
if global.roomClear[109]{global.areaReached[11] = true;}
if global.roomClear[122]{global.areaReached[12] = true;}
if global.roomClear[134] || global.roomClear[146]{global.areaReached[13] = true;}
if global.roomClear[72]{global.areaReached[14] = true; global.clearRank = 1;}
