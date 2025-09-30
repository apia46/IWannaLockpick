if keyboard_check_pressed(vk_anykey)
    global.usingController = 0
if (scrAnyControllerButton() != -1)
    global.usingController = 1
