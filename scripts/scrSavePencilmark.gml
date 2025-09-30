var _name, markMap, _f;
_name = (("Data" + scrGetSaveNum()) + getPMFile(argument0))
markMap = ds_map_create()
ds_map_add_map(markMap, "marks", scrMakeMapMarks())
_f = file_text_open_write(_name)
file_text_write_string(_f, base64_encode(json_encode(markMap)))
file_text_close(_f)
ds_map_destroy(markMap)
if (global.curPM != -1)
{
    with (oPencilmark)
    {
        tmpType = global.pmType[global.curPM]
        tmpSymbol = global.pmSymbol[global.curPM]
        tmpNum = global.pmNum[global.curPM]
        tmpStr = ""
        tmpCol = global.pmCol[global.curPM]
    }
}
