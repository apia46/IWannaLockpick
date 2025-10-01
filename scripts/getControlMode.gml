///getControlMode();
//If a key press is detected, switch to Keyboard.
//If a button press is detected, switch to Controller.
if keyboard_check_pressed(vk_anykey){
    global.usingController = false;
}
if scrAnyControllerButton() != -1{
    global.usingController = true;
}
