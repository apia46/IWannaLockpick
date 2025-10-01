///Primary inputs for pause menu
getControlMode();
/*pressLeft = scrButtonCheckPressed(global.menuLeftButton);
pressRight = scrButtonCheckPressed(global.menuRightButton);
pressUp = scrButtonCheckPressed(global.menuUpButton);
pressDown = scrButtonCheckPressed(global.menuDownButton);
pressConfirm = scrButtonCheckPressed(global.menuAcceptButton);
pressBack = scrButtonCheckPressed(global.menuBackButton) || keyboard_check_pressed(vk_escape);*/
pressLeft = scrButtonCheckPressed(global.leftButton);
pressRight = scrButtonCheckPressed(global.rightButton);
pressUp = scrButtonCheckPressed(global.upButton);
pressDown = scrButtonCheckPressed(global.downButton);
pressConfirm = scrButtonCheckPressed(global.selButton);
pressBack = scrButtonCheckPressed(global.shootButton) || keyboard_check_pressed(vk_escape);

//Up/down: Change button
//use curButton to change current button ID
if pressUp{
    optionsMove(0);
}else if pressDown{
    optionsMove(1);
}else if pressLeft{
    if curSlider != -1{
        optionSliderMoveTo(tab,curSlider,1,-1);
    }else{
        optionsMove(2);
    }
}else if pressRight{
    if curSlider != -1{
        optionSliderMoveTo(tab,curSlider,1,1);
    }else{
        optionsMove(3);
    }
}

mouseButton = curButton;
//var _tx = getMouseGuiX();
//var _ty = getMouseGuiY();
var _tx = getMouseMarkX();
var _ty = getMouseMarkY();
if (_tx != mX || _ty != mY){
    mX = _tx;
    mY = _ty;
    mouseButton = getMouseOptionButton();
    mouseSlider = getMouseOptionSlider();
    if mouseButton != curButton && mouseButton != -1{
        setOptionSelectedElement(mouseButton,0);
        scrPlaySoundExt(sndDiaScroll,1,1,0);
    }
    if mouseSlider != curSlider && mouseSlider != -1{
        setOptionSelectedElement(mouseSlider,1);
        scrPlaySoundExt(sndDiaScroll,1,1,0);
    }
}

if mouse_check_button_pressed(mb_left){
    var _but = getMouseOptionButton();
    var _sld = getMouseOptionSlider();
    if _but != -1{
        setOptionSelectedElement(_but,0);
        oButtonAction(_but);
    }
    if _sld != -1{
        heldSlider = _sld;
        setOptionSelectedElement(_sld,1);
        optionSliderMoveTo(tab,_sld,2,-1);
        //optionSliderAction(tab,_sld);
        scrPlaySoundExt(sndSelectMade,1,1,0);
    }
}else if pressConfirm && curButton != -1{
    oButtonAction(curButton);
}else if pressBack && room != rTitleNew{//Exit pause menu
    scrPlaySoundExt(sndQuery2,1,1,0);
    scrSaveConfigNew();
    with oPauseManager{mode = -1;}
    instance_destroy();
}
//Drag slider
if mouse_check_button(mb_left){
    if heldSlider != -1{
        if heldSlider == curSlider{
            optionSliderMoveTo(tab, heldSlider, 2, -1);
            optionSliderAction(tab, heldSlider);
        }else{
            heldSlider = -1;
        }
    }
}else{
    heldSlider = -1;
}
