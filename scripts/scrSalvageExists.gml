var fname;
if (argument0 == -1)
    return 0;
fname = (((("Data" + scrGetSaveNum()) + "\door") + scrSalvageDoorString(argument0)) + ".ini")
return file_exists(fname);
