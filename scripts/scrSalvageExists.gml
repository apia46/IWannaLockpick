///scrSalvageExists(numID);
if argument0 == -1{return 0;}
var fname;
fname = "Data"+scrGetSaveNum()+"\door"+scrSalvageDoorString(argument0)+".ini";
return file_exists(fname);
