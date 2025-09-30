var buttonIn;
buttonIn = argument0
if (!global.controllerMode)
    return keyboard_check(buttonIn[0]);
else
    return gamepad_button_check(global.controllerIndex, buttonIn[1]);
