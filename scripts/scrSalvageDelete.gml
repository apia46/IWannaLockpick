var fname, file, sec;
fname = (((("Data" + scrGetSaveNum()) + "\door") + scrSalvageDoorString(argument0)) + ".ini")
file = ini_open(fname)
sec = "MainData"
ini_write_real(sec, "DoorExists", 0)
ini_write_real(sec, "IsCombo", 0)
ini_write_real(sec, "NumLocks", 0)
sec = "SimpleData"
ini_write_real(sec, "W", 1)
ini_write_real(sec, "H", 1)
ini_write_real(sec, "ColorSpend", 0)
ini_write_real(sec, "ColorReq", 0)
ini_write_real(sec, "Count", 1)
ini_write_real(sec, "ICount", 0)
ini_write_real(sec, "Type", 0)
sec = "Lock0"
ini_write_real(sec, "Color", 0)
ini_write_real(sec, "Count", 1)
ini_write_real(sec, "ICount", 0)
ini_write_real(sec, "Type", 0)
ini_write_real(sec, "SpriteX", 0)
ini_write_real(sec, "SpriteY", 0)
ini_write_real(sec, "SpriteInd", 174)
ini_close()
