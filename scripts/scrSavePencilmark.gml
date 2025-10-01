///scrSavePencilmark(roomID);

var _name = "Data"+scrGetSaveNum()+getPMFile(argument0);

//highest-level map: tower data
var markMap = ds_map_create();

//add things to it
ds_map_add_map(markMap,"marks",scrMakeMapMarks());
//NEW THINGS TO SAVE: ALL LOGS, TRUEPOS, NEW PLAYER DATA

//big boi saving as json
var _f = file_text_open_write(_name);
file_text_write_string(_f,base64_encode(json_encode(markMap)));
file_text_close(_f);

//free maps
ds_map_destroy(markMap);

//Update pencilmark temps
if global.curPM != -1{
    with oPencilmark{
        tmpType = global.pmType[global.curPM];
        tmpSymbol = global.pmSymbol[global.curPM];
        tmpNum = global.pmNum[global.curPM];
        tmpStr = "";
        tmpCol = global.pmCol[global.curPM];
    }
}
