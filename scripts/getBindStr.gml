///getBindStr(bind,controlmode);
//Control Mode: 0 = Keyboard, 1 = Controller, 2 = Auto (consult global var)
//Don't pass in an array index for the bind
if argument1 == 0{//KB
    return scrGetKeybind(argument0[0]);
}else if argument1 == 1{//CTRLR
    return scrGetControllerBind(argument0[1]);
}else{//AUTO
    if global.usingController{
        return scrGetControllerBind(argument0[1]);
    }else{
        return scrGetKeybind(argument0[0]);
    }
}
