var _tx, _ty, _but;
pressUp = scrButtonCheckPressed(global.menuUpButton)
pressDown = scrButtonCheckPressed(global.menuDownButton)
pressConfirm = scrButtonCheckPressed(global.menuAcceptButton)
pressBack = scrButtonCheckPressed(global.menuBackButton)
if pressUp
{
    if (curButton > 0)
    {
        curButton = max((curButton - 1), 0)
        scrPlaySoundExt(sndDiaScroll, 1, 1, false)
    }
}
else if pressDown
{
    if (curButton < 6)
    {
        curButton = min((curButton + 1), 6)
        scrPlaySoundExt(sndDiaScroll, 1, 1, false)
    }
}
mouseButton = curButton
_tx = getMouseMarkX()
_ty = getMouseMarkY()
if ((_tx != mX) || (_ty != mY))
{
    mX = _tx
    mY = _ty
    mouseButton = getMousePauseButton()
    if ((mouseButton != curButton) && (mouseButton != -1))
    {
        curButton = mouseButton
        scrPlaySoundExt(sndDiaScroll, 1, 1, false)
    }
}
if mouse_check_button_pressed(1)
{
    _but = getMousePauseButton()
    if ((_but != -1) && ((_but != 2) || ((_but == 2) && global.canExitLevel)))
    {
        pButtonAction(_but)
        if (_but != 0)
            scrPlaySoundExt(sndSelectMade, 1, 1, false)
    }
}
else if pressConfirm
{
    if ((curButton != 2) || ((curButton == 2) && global.canExitLevel))
    {
        pButtonAction(curButton)
        if (curButton != 0)
            scrPlaySoundExt(sndSelectMade, 1, 1, false)
    }
}
