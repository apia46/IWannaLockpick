var f, _c, _numControls;
if (argument0 != -1)
    scrPlaySoundExt(sndSelectMade, 0.9, 1, false)
if (argument0 < 7)
{
    if (argument0 == 0)
        tab = 0
    if (argument0 == 1)
        tab = 1
    if (argument0 == 2)
        tab = 2
    if (argument0 == 3)
        tab = 3
    if (argument0 == 4)
        tab = 4
    if (argument0 == 5)
    {
        scrPlaySoundExt(sndQuery2, 1, 1, false)
        scrSaveConfigNew()
        if (room != rTitleNew)
        {
            with (oPauseManager)
                mode = -1
            instance_destroy()
        }
        else
        {
            f = file_text_open_write("firstboot.txt")
            file_text_write_string(f, "This file exists to tell the game you completed the startup sequence. If you delete this file, it'll happen again.")
            file_text_close(f)
            with (oTitleMain)
            {
                state = 0
                alarm[0] = 200
            }
            instance_destroy()
        }
    }
    if (argument0 == 6)
    {
        switch tab
        {
            case 0:
                global.muteMusic = 0
                global.soundLevel = 100
                global.musicLevel = 100
                global.volumeLevel = 75
                audio_master_gain((global.volumeLevel / 100))
                audio_sound_gain(global.currentMusic, ((global.musicVol * global.musicLevel) / 100), 0)
                with (oPauseManager)
                    audio_sound_gain(pauseMus, (global.musicLevel / 100), 0)
                optionSliderMoveTo(0, 0, 0, global.volumeLevel)
                optionSliderMoveTo(0, 1, 0, global.soundLevel)
                optionSliderMoveTo(0, 2, 0, global.musicLevel)
                break
            case 1:
                global.fullscreenMode = 0
                global.smoothingMode = 0
                global.vsyncMode = 0
                global.lowFX = 0
                global.simpleLock = 0
                global.windowScale = 1
                global.pauseStyle = 0
                break
            case 2:
                setColorsDefault()
                _c = colorShow[curColorEdit]
                cHighR = color_get_red(global.highTone[_c])
                cHighG = color_get_green(global.highTone[_c])
                cHighB = color_get_blue(global.highTone[_c])
                cMainR = color_get_red(global.mainTone[_c])
                cMainG = color_get_green(global.mainTone[_c])
                cMainB = color_get_blue(global.mainTone[_c])
                cDarkR = color_get_red(global.darkTone[_c])
                cDarkG = color_get_green(global.darkTone[_c])
                cDarkB = color_get_blue(global.darkTone[_c])
                optionSliderMoveTo(2, 0, 0, cHighR)
                optionSliderMoveTo(2, 1, 0, cHighG)
                optionSliderMoveTo(2, 2, 0, cHighB)
                optionSliderMoveTo(2, 3, 0, cMainR)
                optionSliderMoveTo(2, 4, 0, cMainG)
                optionSliderMoveTo(2, 5, 0, cMainB)
                optionSliderMoveTo(2, 6, 0, cDarkR)
                optionSliderMoveTo(2, 7, 0, cDarkG)
                optionSliderMoveTo(2, 8, 0, cDarkB)
                break
            case 3:
                global.hideTime = 1
                global.runSwitch = 0
                global.fullJumps = 0
                global.allUnlock = 0
                break
            case 4:
                scrResetAllControls()
                break
        }
        
    }
    return 1;
}
switch tab
{
    case 0:
        switch argument0
        {
            case 7:
                global.muteMusic = (!global.muteMusic)
                break
        }
        
        break
    case 1:
        switch argument0
        {
            case 7:
                global.fullscreenMode = (!global.fullscreenMode)
                window_set_fullscreen(global.fullscreenMode)
                break
            case 8:
                global.smoothingMode = (!global.smoothingMode)
                break
            case 9:
                global.vsyncMode = (!global.vsyncMode)
                scrSetVsync()
                break
            case 10:
                global.lowFX = (!global.lowFX)
                break
            case 11:
                global.simpleLock = (!global.simpleLock)
                break
        }
        
        break
    case 2:
        switch argument0
        {
            case 7:
                curColorEdit = max((curColorEdit - 1), 0)
                _c = colorShow[curColorEdit]
                cHighR = color_get_red(global.highTone[_c])
                cHighG = color_get_green(global.highTone[_c])
                cHighB = color_get_blue(global.highTone[_c])
                cMainR = color_get_red(global.mainTone[_c])
                cMainG = color_get_green(global.mainTone[_c])
                cMainB = color_get_blue(global.mainTone[_c])
                cDarkR = color_get_red(global.darkTone[_c])
                cDarkG = color_get_green(global.darkTone[_c])
                cDarkB = color_get_blue(global.darkTone[_c])
                optionSliderMoveTo(2, 0, 0, cHighR)
                optionSliderMoveTo(2, 1, 0, cHighG)
                optionSliderMoveTo(2, 2, 0, cHighB)
                optionSliderMoveTo(2, 3, 0, cMainR)
                optionSliderMoveTo(2, 4, 0, cMainG)
                optionSliderMoveTo(2, 5, 0, cMainB)
                optionSliderMoveTo(2, 6, 0, cDarkR)
                optionSliderMoveTo(2, 7, 0, cDarkG)
                optionSliderMoveTo(2, 8, 0, cDarkB)
                break
            case 8:
                curColorEdit = min((curColorEdit + 1), 9)
                _c = colorShow[curColorEdit]
                cHighR = color_get_red(global.highTone[_c])
                cHighG = color_get_green(global.highTone[_c])
                cHighB = color_get_blue(global.highTone[_c])
                cMainR = color_get_red(global.mainTone[_c])
                cMainG = color_get_green(global.mainTone[_c])
                cMainB = color_get_blue(global.mainTone[_c])
                cDarkR = color_get_red(global.darkTone[_c])
                cDarkG = color_get_green(global.darkTone[_c])
                cDarkB = color_get_blue(global.darkTone[_c])
                optionSliderMoveTo(2, 0, 0, cHighR)
                optionSliderMoveTo(2, 1, 0, cHighG)
                optionSliderMoveTo(2, 2, 0, cHighB)
                optionSliderMoveTo(2, 3, 0, cMainR)
                optionSliderMoveTo(2, 4, 0, cMainG)
                optionSliderMoveTo(2, 5, 0, cMainB)
                optionSliderMoveTo(2, 6, 0, cDarkR)
                optionSliderMoveTo(2, 7, 0, cDarkG)
                optionSliderMoveTo(2, 8, 0, cDarkB)
                break
            case 9:
                _c = colorShow[curColorEdit]
                global.highTone[_c] = global.mainTone[_c]
                global.darkTone[_c] = global.mainTone[_c]
                cHighR = color_get_red(global.highTone[_c])
                cHighG = color_get_green(global.highTone[_c])
                cHighB = color_get_blue(global.highTone[_c])
                cDarkR = color_get_red(global.darkTone[_c])
                cDarkG = color_get_green(global.darkTone[_c])
                cDarkB = color_get_blue(global.darkTone[_c])
                optionSliderMoveTo(2, 0, 0, cHighR)
                optionSliderMoveTo(2, 1, 0, cHighG)
                optionSliderMoveTo(2, 2, 0, cHighB)
                optionSliderMoveTo(2, 6, 0, cDarkR)
                optionSliderMoveTo(2, 7, 0, cDarkG)
                optionSliderMoveTo(2, 8, 0, cDarkB)
                break
            case 10:
                setColorsDefault()
                _c = colorShow[curColorEdit]
                cHighR = color_get_red(global.highTone[_c])
                cHighG = color_get_green(global.highTone[_c])
                cHighB = color_get_blue(global.highTone[_c])
                cMainR = color_get_red(global.mainTone[_c])
                cMainG = color_get_green(global.mainTone[_c])
                cMainB = color_get_blue(global.mainTone[_c])
                cDarkR = color_get_red(global.darkTone[_c])
                cDarkG = color_get_green(global.darkTone[_c])
                cDarkB = color_get_blue(global.darkTone[_c])
                optionSliderMoveTo(2, 0, 0, cHighR)
                optionSliderMoveTo(2, 1, 0, cHighG)
                optionSliderMoveTo(2, 2, 0, cHighB)
                optionSliderMoveTo(2, 3, 0, cMainR)
                optionSliderMoveTo(2, 4, 0, cMainG)
                optionSliderMoveTo(2, 5, 0, cMainB)
                optionSliderMoveTo(2, 6, 0, cDarkR)
                optionSliderMoveTo(2, 7, 0, cDarkG)
                optionSliderMoveTo(2, 8, 0, cDarkB)
                break
            case 11:
                setColorsBright()
                _c = colorShow[curColorEdit]
                cHighR = color_get_red(global.highTone[_c])
                cHighG = color_get_green(global.highTone[_c])
                cHighB = color_get_blue(global.highTone[_c])
                cMainR = color_get_red(global.mainTone[_c])
                cMainG = color_get_green(global.mainTone[_c])
                cMainB = color_get_blue(global.mainTone[_c])
                cDarkR = color_get_red(global.darkTone[_c])
                cDarkG = color_get_green(global.darkTone[_c])
                cDarkB = color_get_blue(global.darkTone[_c])
                optionSliderMoveTo(2, 0, 0, cHighR)
                optionSliderMoveTo(2, 1, 0, cHighG)
                optionSliderMoveTo(2, 2, 0, cHighB)
                optionSliderMoveTo(2, 3, 0, cMainR)
                optionSliderMoveTo(2, 4, 0, cMainG)
                optionSliderMoveTo(2, 5, 0, cMainB)
                optionSliderMoveTo(2, 6, 0, cDarkR)
                optionSliderMoveTo(2, 7, 0, cDarkG)
                optionSliderMoveTo(2, 8, 0, cDarkB)
                break
        }
        
        break
    case 3:
        switch argument0
        {
            case 7:
                global.hideTime = (!global.hideTime)
                break
            case 8:
                global.runSwitch = (!global.runSwitch)
                break
            case 9:
                global.fullJumps = (!global.fullJumps)
                break
            case 10:
                global.allUnlock = (!global.allUnlock)
                break
        }
        
        break
    case 4:
        _numControls = 18
        if ((argument0 >= 7) && (argument0 < (7 + _numControls)))
        {
            controlIndex = (argument0 - 7)
            state = 1
        }
        break
}

optionUpdateSprites()
