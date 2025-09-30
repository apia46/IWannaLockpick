var buttonIn;
buttonIn = argument0
if (!global.controllerMode)
    return keyboard_check_released(buttonIn[0]);
else
    return gamepad_button_check_released(global.controllerIndex, buttonIn[1]);
