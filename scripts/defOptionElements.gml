var i, ii, _lt, _rt, _bottomID, _bottomIsSld, _fb, _spr, _ind, _baseX, _baseY, _numControls, ix, iy, _ctrlID, _ltID, _rtID, _upID, _dnID;
for (i = 0; i < numTabs; i += 1)
{
    for (ii = 0; ii < numTabs; ii += 1)
        defOptionButton(i, ii, (336 + (tabSpacing * (ii - 2))), tabBY, tabBW, 32, -1, -1, tabName[ii], tabDesc[ii])
    defOptionButton(i, numTabs, 208, 560, 160, 32, -1, -1, "Save and Return", "Save the current config and return to the Pause Menu.")
    if (room == rTitleNew)
    {
        oButName[i, numTabs] = "Save and Begin"
        oButDesc[i, numTabs] = "Save the current config and begin the game."
    }
    defOptionButton(i, (numTabs + 1), 432, 560, 160, 32, -1, -1, "Restore Defaults", "Restores this tab's original settings.")
}
for (ii = 0; ii < numTabs; ii += 1)
{
    _lt = (ii - 1)
    if (ii == 0)
        _lt = 4
    _rt = (ii + 1)
    if (ii == (numTabs - 1))
        _rt = 0
    defOptionPaths(0, ii, 0, numTabs, 0, (numTabs + 2), 0, _lt, 0, _rt, 0)
    defOptionPaths(1, ii, 0, numTabs, 0, (numTabs + 2), 0, _lt, 0, _rt, 0)
    defOptionPaths(2, ii, 0, numTabs, 0, (numTabs + 2), 0, _lt, 0, _rt, 0)
    defOptionPaths(3, ii, 0, numTabs, 0, (numTabs + 2), 0, _lt, 0, _rt, 0)
    defOptionPaths(4, ii, 0, numTabs, 0, (numTabs + 2), 0, _lt, 0, _rt, 0)
    _bottomID = -1
    _bottomIsSld = -1
    if (ii == 0)
    {
        _bottomID = 2
        _bottomIsSld = 1
    }
    if (ii == 1)
    {
        _bottomID = (numTabs + 6)
        _bottomIsSld = 0
    }
    if (ii == 2)
    {
        _bottomID = 8
        _bottomIsSld = 1
    }
    if (ii == 3)
    {
        _bottomID = (numTabs + 5)
        _bottomIsSld = 0
    }
    if (ii == 4)
    {
        _bottomID = (numTabs + 7)
        _bottomIsSld = 0
    }
    defOptionPaths(ii, numTabs, 0, _bottomID, _bottomIsSld, 0, 0, (numTabs + 1), 0, (numTabs + 1), 0)
    defOptionPaths(ii, (numTabs + 1), 0, _bottomID, _bottomIsSld, 0, 0, numTabs, 0, numTabs, 0)
}
_fb = (numTabs + 2)
_spr = -1
_ind = -1
_baseX = 32
_baseY = 160
if global.muteMusic
    _ind = 3
else
    _ind = 2
defOptionButton(0, _fb, _baseX, _baseY, 32, 32, 303, _ind, "Mute Music", "Ingame music will not play. Sounds unaffected.")
defOptionPaths(0, _fb, 0, 0, 0, 0, 1, -1, -1, -1, -1)
defOptionSlider(0, 0, _baseX, (_baseY + 64), 100, 0, 100, 100, global.volumeLevel, "Master Volume", "Master volume. (Change volume without affecting sound-to-music ratio)")
defOptionPaths(0, 0, 1, _fb, 0, 1, 1, -1, -1, -1, -1)
defOptionSlider(0, 1, _baseX, (_baseY + 112), 100, 0, 100, 100, global.soundLevel, "Sound Volume", "")
defOptionPaths(0, 1, 1, 0, 1, 2, 1, -1, -1, -1, -1)
defOptionSlider(0, 2, _baseX, (_baseY + 160), 100, 0, 100, 100, global.musicLevel, "Music Volume", "")
defOptionPaths(0, 2, 1, 1, 1, numTabs, 0, -1, -1, -1, -1)
if global.fullscreenMode
    _ind = 1
else
    _ind = 0
defOptionButton(1, _fb, _baseX, _baseY, 32, 32, 303, _ind, "Enable Fullscreen", "Enables Fullscreen.")
defOptionPaths(1, _fb, 0, 0, 0, (_fb + 1), 0, -1, -1, -1, -1)
if global.smoothingMode
    _ind = 1
else
    _ind = 0
defOptionButton(1, (_fb + 1), _baseX, (_baseY + 40), 32, 32, 303, _ind, "Smoothing Mode", "Enables smooth texture interpolation.")
defOptionPaths(1, (_fb + 1), 0, _fb, 0, (_fb + 2), 0, -1, -1, -1, -1)
if global.vsyncMode
    _ind = 1
else
    _ind = 0
defOptionButton(1, (_fb + 2), _baseX, (_baseY + 80), 32, 32, 303, _ind, "Enable VSync", "Enables VSync. If you don't know what that is, ignore it.")
defOptionPaths(1, (_fb + 2), 0, (_fb + 1), 0, (_fb + 3), 0, -1, -1, -1, -1)
if global.lowFX
    _ind = 1
else
    _ind = 0
defOptionButton(1, (_fb + 3), _baseX, (_baseY + 120), 32, 32, 303, _ind, "Low FX", "Removes certain graphical effects. Use to reduce lag or visual noise.")
defOptionPaths(1, (_fb + 3), 0, (_fb + 2), 0, (_fb + 4), 0, -1, -1, -1, -1)
if global.simpleLock
    _ind = 1
else
    _ind = 0
defOptionButton(1, (_fb + 4), _baseX, (_baseY + 160), 32, 32, 303, _ind, "Simple Locks", "Forces numerical lock sprites. If you have trypophobia, I advise using it.")
defOptionPaths(1, (_fb + 4), 0, (_fb + 3), 0, numTabs, 0, -1, -1, -1, -1)
defOptionButton(2, _fb, (_baseX + 48), (_baseY + 12), 32, 32, 303, 4, "", "Edit the previous color.")
defOptionPaths(2, _fb, 0, 0, 0, 0, 1, -1, -1, (_fb + 1), 0)
defOptionButton(2, (_fb + 1), ((_baseX + 48) + 40), (_baseY + 12), 32, 32, 303, 5, "", "Edit the next color.")
defOptionPaths(2, (_fb + 1), 0, 0, 0, 0, 1, _fb, 0, (_fb + 2), 0)
_baseX += 48
defOptionSlider(2, 0, _baseX, (_baseY + 64), 100, 0, 255, 256, cHighR, "High R", "Red component of high tone.")
defOptionPaths(2, 0, 1, (_fb + 1), 0, 1, 1, -1, -1, -1, -1)
defOptionSlider(2, 1, _baseX, ((_baseY + 64) + 32), 100, 0, 255, 256, cHighG, "High G", "Green component of high tone.")
defOptionPaths(2, 1, 1, 0, 1, 2, 1, -1, -1, -1, -1)
defOptionSlider(2, 2, _baseX, ((_baseY + 64) + 64), 100, 0, 255, 256, cHighB, "High B", "Blue component of high tone.")
defOptionPaths(2, 2, 1, 1, 1, 3, 1, -1, -1, -1, -1)
defOptionSlider(2, 3, _baseX, (_baseY + 160), 100, 0, 255, 256, cMainR, "Main R", "Red component of main tone.")
defOptionPaths(2, 3, 1, 2, 1, 4, 1, -1, -1, -1, -1)
defOptionSlider(2, 4, _baseX, ((_baseY + 160) + 32), 100, 0, 255, 256, cMainG, "Main G", "Green component of main tone.")
defOptionPaths(2, 4, 1, 3, 1, 5, 1, -1, -1, -1, -1)
defOptionSlider(2, 5, _baseX, ((_baseY + 160) + 64), 100, 0, 255, 256, cMainB, "Main B", "Blue component of main tone.")
defOptionPaths(2, 5, 1, 4, 1, 6, 1, -1, -1, -1, -1)
defOptionSlider(2, 6, _baseX, (_baseY + 256), 100, 0, 255, 256, cDarkR, "Dark R", "Red component of dark tone.")
defOptionPaths(2, 6, 1, 5, 1, 7, 1, -1, -1, -1, -1)
defOptionSlider(2, 7, _baseX, ((_baseY + 256) + 32), 100, 0, 255, 256, cDarkG, "Dark G", "Green component of dark tone.")
defOptionPaths(2, 7, 1, 6, 1, 8, 1, -1, -1, -1, -1)
defOptionSlider(2, 8, _baseX, ((_baseY + 256) + 64), 100, 0, 255, 256, cDarkB, "Dark B", "Blue component of dark tone.")
defOptionPaths(2, 8, 1, 7, 1, numTabs, 0, -1, -1, -1, -1)
_baseX -= 48
defOptionButton(2, (_fb + 2), 472, ((_baseY + 160) + 32), 256, 32, -1, -1, "Set All Tones to Main", "Sets the light and dark tones to the main tone.")
defOptionPaths(2, (_fb + 2), 0, 0, 0, (_fb + 3), 0, _fb, 0, -1, -1)
defOptionButton(2, (_fb + 3), 472, (((_baseY + 160) + 32) + 40), 256, 32, -1, -1, "Use Preset: Default", "Use the basic color settings.")
defOptionPaths(2, (_fb + 3), 0, (_fb + 2), 0, (_fb + 4), 0, _fb, 0, -1, -1)
defOptionButton(2, (_fb + 4), 472, (((_baseY + 160) + 32) + 80), 256, 32, -1, -1, "Use Preset: Bright", "Use a brighter color setting. (Made by Chrisay)")
defOptionPaths(2, (_fb + 4), 0, (_fb + 3), 0, numTabs, 0, _fb, 0, -1, -1)
if global.hideTime
    _ind = 1
else
    _ind = 0
defOptionButton(3, _fb, _baseX, _baseY, 32, 32, 303, _ind, "Hide Timer", "Ingame time will not display. I appreciate every second you spend here, though!")
defOptionPaths(3, _fb, 0, 0, 0, (_fb + 1), 0, -1, -1, -1, -1)
if global.runSwitch
    _ind = 1
else
    _ind = 0
defOptionButton(3, (_fb + 1), _baseX, (_baseY + 40), 32, 32, 303, _ind, "Auto-Run", "Automatically run. Hold the run button to walk. Use if your fingers hurt.")
defOptionPaths(3, (_fb + 1), 0, _fb, 0, (_fb + 2), 0, -1, -1, -1, -1)
if global.fullJumps
    _ind = 1
else
    _ind = 0
defOptionButton(3, (_fb + 2), _baseX, (_baseY + 80), 32, 32, 303, _ind, "Full Jumps", "Makes jumping easier if you don't care about precision.")
defOptionPaths(3, (_fb + 2), 0, (_fb + 1), 0, (_fb + 3), 0, -1, -1, -1, -1)
if global.allUnlock
    _ind = 1
else
    _ind = 0
defOptionButton(3, (_fb + 3), _baseX, (_baseY + 120), 32, 32, 303, _ind, "Unlock Everything", "Explore the world! The warp hotkey is also enabled. Can safely disable at any time!")
defOptionPaths(3, (_fb + 3), 0, (_fb + 2), 0, numTabs, 0, -1, -1, -1, -1)
defOptionButton(4, _fb, _baseX, _baseY, 160, 32, -1, -1, "Left", "Hold to move left.")
defOptionButton(4, (_fb + 1), _baseX, (_baseY + 40), 160, 32, -1, -1, "Right", "Hold to move right.")
defOptionButton(4, (_fb + 2), _baseX, (_baseY + 80), 160, 32, -1, -1, "Up", "For ingame menus and moving the camera.")
defOptionButton(4, (_fb + 3), _baseX, (_baseY + 120), 160, 32, -1, -1, "Down", "For ingame menus and moving the camera.")
defOptionButton(4, (_fb + 4), _baseX, (_baseY + 160), 160, 32, -1, -1, "Jump", "Press to jump. Hold to jump higher.")
defOptionButton(4, (_fb + 5), _baseX, (_baseY + 200), 160, 32, -1, -1, "Action", "Performs certain actions. You'll use it a lot!")
defOptionButton(4, (_fb + 6), (_baseX + 200), _baseY, 160, 32, -1, -1, "Undo", "Press to rewind time. You'll press this a LOT!!!")
defOptionButton(4, (_fb + 7), (_baseX + 200), (_baseY + 40), 160, 32, -1, -1, "Restart", "Press to restart the puzzle.")
defOptionButton(4, (_fb + 8), (_baseX + 200), (_baseY + 80), 160, 32, -1, -1, "Leave", "Press to leave a puzzle in a not-solved kind of way.")
defOptionButton(4, (_fb + 9), (_baseX + 200), (_baseY + 120), 160, 32, -1, -1, "Camera", "Press to enter free-camera mode. Also hides room comments.")
defOptionButton(4, (_fb + 10), (_baseX + 200), (_baseY + 160), 160, 32, -1, -1, "???", "You unlock this later. Also skips certain dialog.")
defOptionButton(4, (_fb + 11), (_baseX + 200), (_baseY + 200), 160, 32, -1, -1, "??? 2", "You unlock this later. This button is normally held.")
defOptionButton(4, (_fb + 12), (_baseX + 400), _baseY, 160, 32, -1, -1, "Warp", "Unlocked later (or with the Unlock Everything option). Travel between worlds.")
defOptionButton(4, (_fb + 13), (_baseX + 400), (_baseY + 40), 160, 32, -1, -1, "Run Switch", "Enables/disables Auto-run. If you hate holding the run button, use this.")
defOptionButton(4, (_fb + 14), (_baseX + 400), (_baseY + 80), 160, 32, -1, -1, "Run", "Hold to run.")
defOptionButton(4, (_fb + 15), (_baseX + 400), (_baseY + 120), 160, 32, -1, -1, "Walk", "Hold to walk.")
defOptionButton(4, (_fb + 16), (_baseX + 400), (_baseY + 160), 160, 32, -1, -1, "Select", "Selects things in in-game menus. (Excludes this options menu.)")
defOptionButton(4, (_fb + 17), (_baseX + 400), (_baseY + 200), 160, 32, -1, -1, "Interact", "Interact with certain objects and enter levels.")
_numControls = 18
for (ix = 0; ix < 3; ix += 1)
{
    for (iy = 0; iy < 6; iy += 1)
    {
        _ctrlID = ((_fb + (6 * ix)) + iy)
        _ltID = (_ctrlID - 6)
        if (ix == 0)
            _ltID = -1
        _rtID = (_ctrlID + 6)
        if (_rtID >= (_fb + _numControls))
            _rtID = ((_fb + _numControls) - 1)
        if (ix == 4)
            _rtID = -1
        _upID = (_ctrlID - 1)
        if (iy == 0)
            _upID = 0
        _dnID = (_ctrlID + 1)
        if ((iy == 5) || ((_ctrlID - _fb) == (_numControls - 1)))
            _dnID = numTabs
        defOptionPaths(4, _ctrlID, 0, _upID, 0, _dnID, 0, _ltID, 0, _rtID, 0)
    }
}
curButton = 5
