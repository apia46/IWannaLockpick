var fname, file, fDoor, sec;
if (argument0 == -1)
    exit
fname = (((("Data" + scrGetSaveNum()) + "\door") + scrSalvageDoorString(argument0)) + ".ini")
file = ini_open(fname)
fDoor = argument1
sec = "MainData"
ini_write_real(sec, "DoorExists", 1)
if (fDoor.object_index == oDoorCombo)
{
    ini_write_real(sec, "IsCombo", 1)
    ini_write_real(sec, "NumLocks", fDoor.lockCount)
}
else
{
    ini_write_real(sec, "IsCombo", 0)
    ini_write_real(sec, "NumLocks", 0)
}
sec = "SimpleData"
ini_write_real(sec, "W", fDoor.w)
ini_write_real(sec, "H", fDoor.h)
ini_write_real(sec, "ColorSpend", fDoor.colorSpend)
if (fDoor.object_index == oDoorCombo)
{
    ini_write_real(sec, "ColorReq", 0)
    ini_write_real(sec, "Count", 1)
    ini_write_real(sec, "ICount", 0)
    ini_write_real(sec, "Type", 0)
}
else
{
    ini_write_real(sec, "ColorReq", fDoor.color)
    ini_write_real(sec, "Count", fDoor.count)
    ini_write_real(sec, "ICount", fDoor.icount)
    ini_write_real(sec, "Type", fDoor.type)
}
if (fDoor.object_index == oDoorCombo)
{
    for (i = 0; i < fDoor.lockCount; i += 1)
    {
        sec = ("Lock" + string(i))
        ini_write_real(sec, "Color", fDoor.lock[i, 0])
        ini_write_real(sec, "Count", fDoor.lock[i, 1])
        ini_write_real(sec, "ICount", fDoor.lock[i, 2])
        ini_write_real(sec, "Type", fDoor.lock[i, 3])
        ini_write_real(sec, "SpriteX", fDoor.lock[i, 4])
        ini_write_real(sec, "SpriteY", fDoor.lock[i, 5])
        ini_write_real(sec, "SpriteInd", fDoor.lock[i, 6])
    }
}
ini_close()
