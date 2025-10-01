///optionSliderAction(tabID,ID);
//Performs an action when a slider assumes a new value.
//Usually means changing a config value to match a slider value.
var _sldv = getOptionSliderValue(argument0,argument1);
switch argument0{
    case 0://Sound
        switch argument1{
            case 0:
                global.volumeLevel = _sldv;
                audio_master_gain(global.volumeLevel/100);
            break;
            case 1:
                global.soundLevel = _sldv;
            break;
            case 2:
                global.musicLevel = _sldv;
                audio_sound_gain(global.currentMusic,global.musicVol*global.musicLevel/100,0);;
                with oPauseManager{
                    audio_sound_gain(pauseMus,global.musicLevel/100,0);
                }
            break;
        }
    break;
    //None for Visuals tab (Well, MAYBE window scaling...)
    case 2://Door Colors
        var _c = colorShow[curColorEdit];
        switch argument1{
            case 0://High R
                cHighR = _sldv;
                global.highTone[_c] = make_color_rgb(cHighR,cHighG,cHighB);
            break;
            case 1://High G
                cHighG = _sldv;
                global.highTone[_c] = make_color_rgb(cHighR,cHighG,cHighB);
            break;
            case 2://High B
                cHighB = _sldv;
                global.highTone[_c] = make_color_rgb(cHighR,cHighG,cHighB);
            break;
            case 3://Main R
                cMainR = _sldv;
                global.mainTone[_c] = make_color_rgb(cMainR,cMainG,cMainB);
            break;
            case 4://Main G
                cMainG = _sldv;
                global.mainTone[_c] = make_color_rgb(cMainR,cMainG,cMainB);
            break;
            case 5://Main B
                cMainB = _sldv;
                global.mainTone[_c] = make_color_rgb(cMainR,cMainG,cMainB);
            break;
            case 6://Dark R
                cDarkR = _sldv;
                global.darkTone[_c] = make_color_rgb(cDarkR,cDarkG,cDarkB);
            break;
            case 7://Dark G
                cDarkG = _sldv;
                global.darkTone[_c] = make_color_rgb(cDarkR,cDarkG,cDarkB);
            break;
            case 8://Dark B
                cDarkB = _sldv;
                global.darkTone[_c] = make_color_rgb(cDarkR,cDarkG,cDarkB);
            break;
        }
    break;
    //None for Accessibility
    //None for Controls
}
