//Assumes a door should be made and data has already been read
if isCombo{
    myDoor = instance_create(x-16*w,y-32*h,oDoorCombo);
    myDoor.w = w; myDoor.h = h; myDoor.colorSpend = colorSpend;
    myDoor.lockCount = lockCount; myDoor.lock = lock;//This *should* copy over the entire array right?
    myDoor.salvageID = ID;
    with myDoor{event_user(4);}//Same as Room Start event
}else{
    myDoor = instance_create(x-16*w,y-32*h,oDoorSimple);
    myDoor.w = w; myDoor.h = h; myDoor.colorSpend = colorSpend; myDoor.color = color;
    myDoor.count = count; myDoor.icount = icount; myDoor.type = type;
    myDoor.salvageID = ID;
    with myDoor{event_user(4);}//Same as Room Start event
}
