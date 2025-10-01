///Inputs for input menu
pressEsc = scrButtonCheckPressed(global.pauseButton);

if pressEsc || !window_has_focus(){
    state = 0;
    scrPlaySoundExt(sndQuery2,1,1,0);
}else{//Thank FUCK YoYoYo made code for all this, I don't typically swear in my source code but I'll do it for the inputs
    if !controllerMode{//Keyboard binds
    if (keyboard_check_pressed(vk_anykey))  //check if a key is being pressed and if it is, store that key
    {
        var keyChange;
        
        keyChange = keyboard_key;
        
        if (keyChange == 160 || keyChange == 161)   //check if current key pressed is either shift key
            keyChange = 16; //set it to work for both shift keys
        
        if (controlIndex == 0) {global.leftButton[0] = keyChange;}
        else if (controlIndex == 1) {global.rightButton[0] = keyChange;}
        else if (controlIndex == 2) {global.upButton[0] = keyChange;}
        else if (controlIndex == 3) {global.downButton[0] = keyChange;}
        else if (controlIndex == 4) {global.jumpButton[0] = keyChange;}
        else if (controlIndex == 5) {global.masButton[0] = keyChange;}
        else if (controlIndex == 6) {global.shootButton[0] = keyChange;}
        else if (controlIndex == 7) {global.restartButton[0] = keyChange;}
        else if (controlIndex == 8) {global.leaveButton[0] = keyChange;}
        else if (controlIndex == 9) {global.camButton[0] = keyChange;}
        else if (controlIndex == 10) {global.skipButton[0] = keyChange;}
        else if (controlIndex == 11) {global.specialButton[0] = keyChange;}
        else if (controlIndex == 12) {global.warpButton[0] = keyChange;}
        else if (controlIndex == 13) {global.rsButton[0] = keyChange;}
        else if (controlIndex == 14) {global.runButton[0] = keyChange;}
        else if (controlIndex == 15) {global.walkButton[0] = keyChange;}
        else if (controlIndex == 16) {global.selButton[0] = keyChange;}
        else if (controlIndex == 17) {global.intrButton[0] = keyChange;}
        
        controlIndex = -1;
        settingKey = false;
        state = 0;
        scrPlaySoundExt(sndSelectMade,1,1,0);
        scrPlaySoundExt(sndQuery3,1,1,0);
    }
    else if (scrAnyControllerButton() != -1)    //check if a controller button was pressed, exit prompt
    {
        settingKey = false;
        state = 0;
        scrPlaySoundExt(sndQuery2,1,1,0);
    }
    }else{//Edit controller binds
        var buttonChange = scrAnyControllerButton();
    if (buttonChange != -1)  //check if a button is being pressed and if it is, store that button
    {                                          
        if (controlIndex == 0) {global.leftButton[1] = buttonChange;}
        else if (controlIndex == 1) {global.rightButton[1] = buttonChange;}
        else if (controlIndex == 2) {global.upButton[1] = buttonChange;}
        else if (controlIndex == 3) {global.downButton[1] = buttonChange;}
        else if (controlIndex == 4) {global.jumpButton[1] = buttonChange;}
        else if (controlIndex == 5) {global.masButton[1] = buttonChange;}
        else if (controlIndex == 6) {global.shootButton[1] = buttonChange;}
        else if (controlIndex == 7) {global.restartButton[1] = buttonChange;}
        else if (controlIndex == 8) {global.leaveButton[1] = buttonChange;}
        else if (controlIndex == 9) {global.camButton[1] = buttonChange;}
        else if (controlIndex == 10) {global.skipButton[1] = buttonChange;}
        else if (controlIndex == 11) {global.specialButton[1] = buttonChange;}
        else if (controlIndex == 12) {global.warpButton[1] = buttonChange;}
        else if (controlIndex == 13) {global.rsButton[1] = buttonChange;}
        else if (controlIndex == 14) {global.runButton[1] = buttonChange;}
        else if (controlIndex == 15) {global.walkButton[1] = buttonChange;}
        else if (controlIndex == 16) {global.selButton[1] = buttonChange;}
        else if (controlIndex == 17) {global.intrButton[1] = buttonChange;}
        
        controlIndex = -1;
        settingButton = false;
        state = 0;
        scrPlaySoundExt(sndSelectMade,1,1,0);
        scrPlaySoundExt(sndQuery3,1,1,0);
    }
    else if (keyboard_check_pressed(vk_anykey))    //check if a keybord key was pressed, exit prompt
    {
        settingButton = false;
        state = 0;
        scrPlaySoundExt(sndQuery2,1,1,0);
    }
    }
}
