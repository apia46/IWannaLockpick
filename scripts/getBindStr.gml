if (argument1 == 0)
    return scrGetKeybind(argument0[0]);
else if (argument1 == 1)
    return scrGetControllerBind(argument0[1]);
else if global.usingController
    return scrGetControllerBind(argument0[1]);
else
    return scrGetKeybind(argument0[0]);
