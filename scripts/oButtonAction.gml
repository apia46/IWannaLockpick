///oButtonAction(optionButtonID);
//For Option buttons.
//Current "first button" ID: 7
//Main buttons
if argument0 != -1{
    scrPlaySoundExt(sndSelectMade,.9,1,0);
}
if argument0 < 7{
    if argument0 == 0{tab = 0;}//Sound
    if argument0 == 1{tab = 1;}//Visual
    if argument0 == 2{tab = 2;}//Colorblind
    if argument0 == 3{tab = 3;}//Accessibility
    if argument0 == 4{tab = 4;}//Controls
    if argument0 == 5{//Back
        scrPlaySoundExt(sndQuery2,1,1,0);
        scrSaveConfigNew();
        if room != rTitleNew{
            with oPauseManager{mode = -1;}
            instance_destroy();
        }else{
            var f = file_text_open_write("firstboot.txt");
            file_text_write_string(f,"This file exists to tell the game you completed the startup sequence. If you delete this file, it'll happen again.");
            file_text_close(f);
            with oTitleMain{state = 0; alarm[0] = 200;}
            instance_destroy();
        }
    }
    if argument0 == 6{//Revert
        switch tab{
            case 0://Sound
                global.muteMusic = false;
                global.soundLevel = 80;
                global.musicLevel = 80;
                global.volumeLevel = 30;
                audio_master_gain(global.volumeLevel/100);
                audio_sound_gain(global.currentMusic,global.musicVol*global.musicLevel/100,0);;
                with oPauseManager{
                    audio_sound_gain(pauseMus,global.musicLevel/100,0);
                }
                optionSliderMoveTo(0,0,0,global.volumeLevel);
                optionSliderMoveTo(0,1,0,global.soundLevel);
                optionSliderMoveTo(0,2,0,global.musicLevel);
            break;
            case 1://Visual
                global.fullscreenMode = false;
                global.smoothingMode = false;
                global.vsyncMode = false;
                global.lowFX = false;
                global.simpleLock = false;
                global.windowScale = 1;
                global.pauseStyle = 0;
            break;
            case 2://Colorblind
                setColorsDefault();
                var _c = colorShow[curColorEdit];
                cHighR = color_get_red(global.highTone[_c]);
                cHighG = color_get_green(global.highTone[_c]);
                cHighB = color_get_blue(global.highTone[_c]);
                cMainR = color_get_red(global.mainTone[_c]);
                cMainG = color_get_green(global.mainTone[_c]);
                cMainB = color_get_blue(global.mainTone[_c]);
                cDarkR = color_get_red(global.darkTone[_c]);
                cDarkG = color_get_green(global.darkTone[_c]);
                cDarkB = color_get_blue(global.darkTone[_c]);
                optionSliderMoveTo(2,0,0,cHighR);
                optionSliderMoveTo(2,1,0,cHighG);
                optionSliderMoveTo(2,2,0,cHighB);
                optionSliderMoveTo(2,3,0,cMainR);
                optionSliderMoveTo(2,4,0,cMainG);
                optionSliderMoveTo(2,5,0,cMainB);
                optionSliderMoveTo(2,6,0,cDarkR);
                optionSliderMoveTo(2,7,0,cDarkG);
                optionSliderMoveTo(2,8,0,cDarkB);
            break;
            case 3://Accessibility
                global.hideTime = true;
                global.runSwitch = false;
                global.fullJumps = false;
                global.allUnlock = false;
                global.fastAnims = false;
            break;
            case 4://Controls
                scrResetAllControls();
            break;
        }
    }
    return true;
}
//Other buttons
switch tab{
    case 0://SOUND
        switch argument0{
            case 7:
                global.muteMusic = !global.muteMusic;
            break;
        }
    break;
    case 1://VISUAL
        switch argument0{
            case 7:
                global.fullscreenMode = !global.fullscreenMode;
                window_set_fullscreen(global.fullscreenMode);
            break;
            case 8:
                global.smoothingMode = !global.smoothingMode;
            break;
            case 9:
                global.vsyncMode = !global.vsyncMode;
                scrSetVsync();
            break;
            case 10:
                global.lowFX = !global.lowFX;
            break;
            case 11:
                global.simpleLock = !global.simpleLock;
            break;
        }
    break;
    case 2://COLORBLIND
        switch argument0{
            case 7://Previous Color
                curColorEdit = max(curColorEdit-1,0);
                var _c = colorShow[curColorEdit];
                cHighR = color_get_red(global.highTone[_c]);
                cHighG = color_get_green(global.highTone[_c]);
                cHighB = color_get_blue(global.highTone[_c]);
                cMainR = color_get_red(global.mainTone[_c]);
                cMainG = color_get_green(global.mainTone[_c]);
                cMainB = color_get_blue(global.mainTone[_c]);
                cDarkR = color_get_red(global.darkTone[_c]);
                cDarkG = color_get_green(global.darkTone[_c]);
                cDarkB = color_get_blue(global.darkTone[_c]);
                optionSliderMoveTo(2,0,0,cHighR);
                optionSliderMoveTo(2,1,0,cHighG);
                optionSliderMoveTo(2,2,0,cHighB);
                optionSliderMoveTo(2,3,0,cMainR);
                optionSliderMoveTo(2,4,0,cMainG);
                optionSliderMoveTo(2,5,0,cMainB);
                optionSliderMoveTo(2,6,0,cDarkR);
                optionSliderMoveTo(2,7,0,cDarkG);
                optionSliderMoveTo(2,8,0,cDarkB);
            break;
            case 8://Next Color
                curColorEdit = min(curColorEdit+1,9);
                var _c = colorShow[curColorEdit];
                cHighR = color_get_red(global.highTone[_c]);
                cHighG = color_get_green(global.highTone[_c]);
                cHighB = color_get_blue(global.highTone[_c]);
                cMainR = color_get_red(global.mainTone[_c]);
                cMainG = color_get_green(global.mainTone[_c]);
                cMainB = color_get_blue(global.mainTone[_c]);
                cDarkR = color_get_red(global.darkTone[_c]);
                cDarkG = color_get_green(global.darkTone[_c]);
                cDarkB = color_get_blue(global.darkTone[_c]);
                optionSliderMoveTo(2,0,0,cHighR);
                optionSliderMoveTo(2,1,0,cHighG);
                optionSliderMoveTo(2,2,0,cHighB);
                optionSliderMoveTo(2,3,0,cMainR);
                optionSliderMoveTo(2,4,0,cMainG);
                optionSliderMoveTo(2,5,0,cMainB);
                optionSliderMoveTo(2,6,0,cDarkR);
                optionSliderMoveTo(2,7,0,cDarkG);
                optionSliderMoveTo(2,8,0,cDarkB);
            break;
            case 9://Set Light and Dark Tones to Main Tone
                var _c = colorShow[curColorEdit];
                global.highTone[_c] = global.mainTone[_c];
                global.darkTone[_c] = global.mainTone[_c];
                cHighR = color_get_red(global.highTone[_c]);
                cHighG = color_get_green(global.highTone[_c]);
                cHighB = color_get_blue(global.highTone[_c]);
                cDarkR = color_get_red(global.darkTone[_c]);
                cDarkG = color_get_green(global.darkTone[_c]);
                cDarkB = color_get_blue(global.darkTone[_c]);
                optionSliderMoveTo(2,0,0,cHighR);
                optionSliderMoveTo(2,1,0,cHighG);
                optionSliderMoveTo(2,2,0,cHighB);
                optionSliderMoveTo(2,6,0,cDarkR);
                optionSliderMoveTo(2,7,0,cDarkG);
                optionSliderMoveTo(2,8,0,cDarkB);
            break;
            case 10://Preset: Default
                setColorsDefault();
                var _c = colorShow[curColorEdit];
                cHighR = color_get_red(global.highTone[_c]);
                cHighG = color_get_green(global.highTone[_c]);
                cHighB = color_get_blue(global.highTone[_c]);
                cMainR = color_get_red(global.mainTone[_c]);
                cMainG = color_get_green(global.mainTone[_c]);
                cMainB = color_get_blue(global.mainTone[_c]);
                cDarkR = color_get_red(global.darkTone[_c]);
                cDarkG = color_get_green(global.darkTone[_c]);
                cDarkB = color_get_blue(global.darkTone[_c]);
                optionSliderMoveTo(2,0,0,cHighR);
                optionSliderMoveTo(2,1,0,cHighG);
                optionSliderMoveTo(2,2,0,cHighB);
                optionSliderMoveTo(2,3,0,cMainR);
                optionSliderMoveTo(2,4,0,cMainG);
                optionSliderMoveTo(2,5,0,cMainB);
                optionSliderMoveTo(2,6,0,cDarkR);
                optionSliderMoveTo(2,7,0,cDarkG);
                optionSliderMoveTo(2,8,0,cDarkB);
            break;
            case 11://Preset: Bright
                setColorsBright();
                var _c = colorShow[curColorEdit];
                cHighR = color_get_red(global.highTone[_c]);
                cHighG = color_get_green(global.highTone[_c]);
                cHighB = color_get_blue(global.highTone[_c]);
                cMainR = color_get_red(global.mainTone[_c]);
                cMainG = color_get_green(global.mainTone[_c]);
                cMainB = color_get_blue(global.mainTone[_c]);
                cDarkR = color_get_red(global.darkTone[_c]);
                cDarkG = color_get_green(global.darkTone[_c]);
                cDarkB = color_get_blue(global.darkTone[_c]);
                optionSliderMoveTo(2,0,0,cHighR);
                optionSliderMoveTo(2,1,0,cHighG);
                optionSliderMoveTo(2,2,0,cHighB);
                optionSliderMoveTo(2,3,0,cMainR);
                optionSliderMoveTo(2,4,0,cMainG);
                optionSliderMoveTo(2,5,0,cMainB);
                optionSliderMoveTo(2,6,0,cDarkR);
                optionSliderMoveTo(2,7,0,cDarkG);
                optionSliderMoveTo(2,8,0,cDarkB);
            break;
        }
    break;
    case 3://ACCESSIBILITY
        switch argument0{
            case 7:
                global.hideTime = !global.hideTime;
            break;
            case 8:
                global.runSwitch = !global.runSwitch;
            break;
            case 9:
                global.fullJumps = !global.fullJumps;
            break;
            case 10:
                global.allUnlock = !global.allUnlock;
            break;
            case 11:
                global.fastAnims = !global.fastAnims;
            break;
        }
    break;
    case 4://CONTROLS
        var _numControls = 18;
        if argument0 >= 7 && argument0 < 7+_numControls{//Enter control input state
            controlIndex = argument0-7;
            state = 1;
        }
    break;
}
optionUpdateSprites();
