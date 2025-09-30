if isCombo
{
    myDoor = instance_create((x - (16 * w)), (y - (32 * h)), oDoorCombo)
    myDoor.w = w
    myDoor.h = h
    myDoor.colorSpend = colorSpend
    myDoor.lockCount = lockCount
    myDoor.lock = lock
    myDoor.salvageID = ID
    with (myDoor)
        event_user(4)
}
else
{
    myDoor = instance_create((x - (16 * w)), (y - (32 * h)), oDoorSimple)
    myDoor.w = w
    myDoor.h = h
    myDoor.colorSpend = colorSpend
    myDoor.color = color
    myDoor.count = count
    myDoor.icount = icount
    myDoor.type = type
    myDoor.salvageID = ID
    with (myDoor)
        event_user(4)
}
