///scrSetVoice(voiceID);
//Sets voice-related attributes
switch argument0{
    case vp_SYS:
        numSamples = 1;
        vSample[0] = sndText;
        numPitches = 1;
        vPitch[0] = 1;
        vVariance = 0.02;
        soundWait = 2;
    break;
    case vp_SYSWARN:
        numSamples = 1;
        vSample[0] = sndText;
        numPitches = 2;
        vPitch[0] = 1;
        vPitch[1] = .8;
        vVariance = 0.02;
        soundWait = 2;
    break;
    case vp_SIGN:
        numSamples = 1;
        vSample[0] = sndSignText;
        numPitches = 2;
        vPitch[0] = 1;
        vPitch[1] = 1.5;
        vVariance = 0.04;
        soundWait = 4;
    break;
    case vp_LILY:
        numSamples = 3;
        //vSample[0] = sndDiaLily0;
        vSample[0] = sndDiaLily1;
        //vSample[2] = sndDiaLily2;
        vSample[1] = sndDiaLily3;
        vSample[2] = sndDiaLily4;
        //vSample[5] = sndDiaLily5;
        numPitches = 2;
        vPitch[0] = 1;
        vPitch[1] = 1.2;
        vVariance = 0.04;
        soundWait = 3;
    break;
    case vp_LILYTHINK:
        numSamples = 3;
        //vSample[0] = sndDiaLily0;
        vSample[0] = sndDiaLily1;
        //vSample[2] = sndDiaLily2;
        vSample[1] = sndDiaLily3;
        vSample[2] = sndDiaLily4;
        //vSample[5] = sndDiaLily5;
        numPitches = 2;
        vPitch[0] = 1;
        vPitch[1] = .75;
        vVariance = 0.04;
        soundWait = 4;
    break;
    case vp_KINA:
        numSamples = 4;
        vSample[0] = sndDiaKina0;
        vSample[1] = sndDiaKina1;
        vSample[2] = sndDiaKina2;
        vSample[3] = sndDiaKina3;
        numPitches = 1;
        vPitch[0] = 1;
        vVariance = 0.1;
        soundWait = 3;
    break;
    case vp_KINASMUG:
        numSamples = 4;
        vSample[0] = sndDiaKina0;
        vSample[1] = sndDiaKina1;
        vSample[2] = sndDiaKina2;
        vSample[3] = sndDiaKina3;
        numPitches = 1;
        vPitch[0] = 1;
        vVariance = 0.2;
        soundWait = 4;
    break;
    case vp_DIARY:
        numSamples = 1;
        vSample[0] = sndTypewriter;
        numPitches = 1;
        vPitch[0] = .9;
        vVariance = 0.03;
        soundWait = 2;
    break;
    case vp_ME:
    case vp_LUCAS:
        numSamples = 1;
        vSample[0] = sndText;
        numPitches = 1;
        vPitch[0] = .9;
        vVariance = 0.03;
        soundWait = 2;
    break;
    case vp_NARRA:
        numSamples = 1;
        vSample[0] = sndText;
        numPitches = 1;
        vPitch[0] = 1.12;
        vVariance = 0.03;
        soundWait = 2;
    break;
    case vp_NONE:
        numSamples = 0;
        numPitches = 1;
        vPitch[0] = 1;
        vVariance = 0;
        soundWait = 2;
    break;
    default:
        numSamples = 1;
        vSample[0] = sndText;
        numPitches = 1;
        vPitch[0] = 1;
        vVariance = 0.02;
        soundWait = 2;
    break;
}
