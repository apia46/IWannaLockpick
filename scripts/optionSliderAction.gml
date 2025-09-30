var _sldv, _c;
_sldv = getOptionSliderValue(argument0, argument1)
switch argument0
{
    case 0:
        switch argument1
        {
            case 0:
                global.volumeLevel = _sldv
                audio_master_gain((global.volumeLevel / 100))
                break
            case 1:
                global.soundLevel = _sldv
                break
            case 2:
                global.musicLevel = _sldv
                audio_sound_gain(global.currentMusic, ((global.musicVol * global.musicLevel) / 100), 0)
                with (oPauseManager)
                    audio_sound_gain(pauseMus, (global.musicLevel / 100), 0)
                break
        }
        
        break
    case 2:
        _c = colorShow[curColorEdit]
        switch argument1
        {
            case 0:
                cHighR = _sldv
                global.highTone[_c] = make_color_rgb(cHighR, cHighG, cHighB)
                break
            case 1:
                cHighG = _sldv
                global.highTone[_c] = make_color_rgb(cHighR, cHighG, cHighB)
                break
            case 2:
                cHighB = _sldv
                global.highTone[_c] = make_color_rgb(cHighR, cHighG, cHighB)
                break
            case 3:
                cMainR = _sldv
                global.mainTone[_c] = make_color_rgb(cMainR, cMainG, cMainB)
                break
            case 4:
                cMainG = _sldv
                global.mainTone[_c] = make_color_rgb(cMainR, cMainG, cMainB)
                break
            case 5:
                cMainB = _sldv
                global.mainTone[_c] = make_color_rgb(cMainR, cMainG, cMainB)
                break
            case 6:
                cDarkR = _sldv
                global.darkTone[_c] = make_color_rgb(cDarkR, cDarkG, cDarkB)
                break
            case 7:
                cDarkG = _sldv
                global.darkTone[_c] = make_color_rgb(cDarkR, cDarkG, cDarkB)
                break
            case 8:
                cDarkB = _sldv
                global.darkTone[_c] = make_color_rgb(cDarkR, cDarkG, cDarkB)
                break
        }
        
        break
}

