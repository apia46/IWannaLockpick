var buttonIn;
buttonIn = argument0
if (!global.controllerMode)
    return keyboard_check_pressed(buttonIn[0]);
else
    return gamepad_button_check_pressed(global.controllerIndex, buttonIn[1]);
