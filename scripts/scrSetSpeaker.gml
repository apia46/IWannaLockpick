///scrSetSpeaker(speakerID);
//Sets speaker-related attributes
switch argument0{
    case ts_SYS:
        speakerName = "System";
        speakerSpr = sprDiaSys;
        boxCol = c_dkgray;
        textCol = c_white;
        shaCol = c_gray;
        hasShadow = 1;
    break;
    case ts_SIGN:
        speakerName = "Sign";
        speakerSpr = sprDiaSign;
        boxCol = make_color_hsv(30,120,220);
        textCol = make_color_hsv(25,220,80);
        shaCol = make_color_hsv(25,170,160);
        hasShadow = 1;
    break;
    case ts_LILY:
        speakerName = "Lily";
        speakerSpr = sprDiaLily;
        boxCol = make_color_rgb(255,150,190);
        textCol = make_color_rgb(64,0,128);
        shaCol = make_color_rgb(200,100,140);
        hasShadow = 1;
    break;
    case ts_KINA:
        speakerName = "Kina";
        speakerSpr = sprDiaKina;
        boxCol = make_color_rgb(163,73,164);
        textCol = make_color_rgb(16,52,92);
        shaCol = make_color_rgb(40,10,40);
        hasShadow = 1;
    break;
    case ts_DIARY:
        speakerName = "Diary";
        speakerSpr = sprKHDialog;
        boxCol = make_color_rgb(30,0,15);
        textCol = make_color_rgb(255,230,200);
        shaCol = make_color_rgb(0,0,0);
        hasShadow = 1;
    break;
    case ts_ME:
        speakerName = "???";
        speakerSpr = sprDiaSys;
        boxCol = make_color_rgb(0,15,30);
        textCol = make_color_rgb(200,230,255);
        shaCol = c_black;
        hasShadow = 1;
    break;
    case ts_LUCAS:
        speakerName = "Lucas";
        speakerSpr = sprLucasDialog;
        boxCol = make_color_rgb(255,230,150);
        textCol = make_color_rgb(40,10,0);
        shaCol = make_color_rgb(255,200,100);
        hasShadow = 1;
    break;
    case ts_NARRA:
        speakerName = "Narrator";
        speakerSpr = sprDiaSys;
        boxCol = make_color_rgb(255,180,255);
        textCol = make_color_rgb(60,20,140);
        shaCol = make_color_rgb(225,150,255);
        hasShadow = 1;
    break;
    case ts_TOTEM:
        speakerName = "Obelisk";
        speakerSpr = sprDiaSys;
        boxCol = make_color_rgb(20,00,60);
        textCol = make_color_rgb(255,210,255);
        shaCol = make_color_rgb(120,90,120);
        hasShadow = 1;
    break;
    default:
        speakerName = "???";
        speakerSpr = sprDiaSys;
        boxCol = c_white;
        textCol = c_black;
        shaCol = c_ltgray;
        hasShadow = 1;
    break;
}
