var _name, _f, markMap;
_name = (("Data" + scrGetSaveNum()) + getPMFile(argument0))
if (!file_exists(_name))
    exit
_f = file_text_open_read(_name)
markMap = json_decode(base64_decode(file_text_read_string(_f)))
file_text_close(_f)
if (markMap != -1)
    scrUnpackMarks(ds_map_find_value(markMap, "marks"))
ds_map_destroy(markMap)
