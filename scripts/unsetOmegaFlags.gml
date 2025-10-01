//Now that omega puzzles are removed, unset omega-related flags that were set in testing builds.
for(var i = 0; i < 16; i += 1){//Omega puzzle flags
    global.omegaPuzzle[i] = 0;
}
//Omega puzzle clear ID flags
global.roomClear[174] = 0;//Omega-1
global.roomClear[175] = 0;//Omega-2
global.roomClear[181] = 0;//Omega-8
global.roomClear[211] = 0;//Epilogue
