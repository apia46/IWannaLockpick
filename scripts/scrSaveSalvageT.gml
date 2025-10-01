///scrSaveSalvage(numID);
var file,sec,fname;
fname = "Data"+scrGetSaveNum()+"\door"+scrSalvageDoorString(argument0)+".ini";
file = ini_open(fname);//Opens the door file

sec = "MainData";//starts with the big stuff
ini_write_real(sec,"DoorExists",1);
if salvageIsCombo{//Sorta dicey code with the heirarchy system here
    ini_write_real(sec,"IsCombo",1);
    ini_write_real(sec,"NumLocks",salvageLockCount);
}else{
    ini_write_real(sec,"IsCombo",0);
    ini_write_real(sec,"NumLocks",0);
}

sec = "SimpleData";//Moves onto simple door code (Effect/Copies variables not used)
ini_write_real(sec,"W",salW);
ini_write_real(sec,"H",salH);
ini_write_real(sec,"ColorSpend",salCS);
if salvageIsCombo{
    ini_write_real(sec,"ColorReq",0);
    ini_write_real(sec,"Count",1);
    ini_write_real(sec,"ICount",0);
    ini_write_real(sec,"Type",0);
}else{
    ini_write_real(sec,"ColorReq",salC);
    ini_write_real(sec,"Count",salCount);
    ini_write_real(sec,"ICount",salICount);
    ini_write_real(sec,"Type",salType);
}

if salvageIsCombo{
    for(i=0;i<salvageLockCount;i+=1){
        sec = "Lock"+string(i);//Moves onto individual lock data (Starts at 0, increments per-lock)
        ini_write_real(sec,"Color",salLock[i,0]);
        ini_write_real(sec,"Count",salLock[i,1]);
        ini_write_real(sec,"ICount",salLock[i,2]);
        ini_write_real(sec,"Type",salLock[i,3]);
        ini_write_real(sec,"SpriteX",salLock[i,4]);
        ini_write_real(sec,"SpriteY",salLock[i,5]);
        ini_write_real(sec,"SpriteInd",salLock[i,6]);
    }
}

ini_close();
