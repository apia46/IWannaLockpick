var tempPow = 0;
if salCount > 0 || salType == 1{//Positive doors or blank doors
    tempPow = 0;
}else if salCount < 0{//Negative doors
    tempPow = 2;
}else{//Switch to imaginary heuristic
    if salICount > 0{//Positive imaginary
        tempPow = 1;
    }else{//Negative imaginary
        tempPow = 3;
    }
}

var fakeCount = 0;
if salCount != 0{fakeCount = abs(salCount);}
if salICount != 0{fakeCount = abs(salICount);}
var fakeString = string(fakeCount);

switch tempPow{
    case 0://Positive
        if salType == 0{//Normal
            switch fakeCount{
                case 1:
                    draw_sprite(sprSymbols,0,salDX,salDY);
                break;
                case 2:
                    draw_sprite(sprLock2,0,salDX,salDY);
                break;
                case 3:
                    draw_sprite(sprLock3,0,salDX,salDY);
                break;
                case 4:
                    draw_sprite(sprLock4,0,salDX,salDY);
                break;
                case 5:
                    draw_sprite(sprLock5,0,salDX,salDY);
                break;
                case 6:
                    draw_sprite(sprLock6,0,salDX,salDY);
                break;
                case 8:
                    draw_sprite(sprLock8,0,salDX,salDY);
                break;
                case 12:
                    draw_sprite(sprLock12,0,salDX,salDY);
                break;
                case 24:
                    draw_sprite(sprLock24,0,salDX,salDY);
                break;
                default:
                    var drawLockW = 8;//Width of the lock symbol
                    draw_set_font(fTalk);
                    var drawLockTextW = string_width(fakeString);
                    var drawLockStringLength = drawLockW + drawLockTextW + 4;//4 is a horizontal separation constant
                    var drawLockLeftOffset = ceil(drawLockStringLength/2)+12;
                    var drawDoorMid = salDX+16*salW;
                    var drawLockLeftX = drawDoorMid - drawLockLeftOffset;
                    draw_sprite(sprSymbols,0,drawLockLeftX,salDY+16*(salH-1));
                    draw_set_color(make_color_rgb(44,32,20));
                    draw_set_halign(fa_left);
                    draw_set_valign(fa_center);
                    draw_text(drawLockLeftX+24-1,salDY+16*salH-1,fakeString);//11 is the specific adjustment constant
                    draw_set_color(c_white);
                break;
            }
        }
        if salType == 2{//Blast
            draw_sprite(sprSymbols,2,salDX+16*(salW-1),salDY+16*(salH-1));
        }
        if salType == 3{//Equals
            draw_sprite(sprSymbols,4,salDX+16*(salW-1),salDY+16*(salH-1));
        }
    break;
    case 1://Positive i
        if salType == 0{
            switch fakeCount{
                case 1:
                    draw_sprite(sprSymbols,1,salDX+16*(salW-1),salDY+16*(salH-1));
                break;
                case 2:
                    draw_sprite(sprLock2i,0,salDX,salDY);
                break;
                case 3:
                    draw_sprite(sprLock3i,0,salDX,salDY);
                break;
                default:
                    draw_set_font(fTalk);
                    draw_set_color(make_color_rgb(44,32,20));
                    draw_set_halign(fa_center);
                    draw_set_valign(fa_center);
                    draw_text(salDX+16*salW-1,salDY+16*salH-1,fakeString+"i");
                    draw_set_color(c_white);
                break;
            }
        }
        if salType == 2{//I-Blast
            draw_sprite(sprSymbols,3,salDX+16*(salW-1),salDY+16*(salH-1));
        }
        if salType == 3{//Equals
            draw_sprite(sprSymbols,4,salDX+16*(salW-1),salDY+16*(salH-1));
        }
    break;
    case 2://Negative
        if salType == 0{//Normal
            switch fakeCount{
                case 1:
                    draw_sprite(sprSymbols,5,salDX,salDY);
                break;
                case 2:
                    draw_sprite(sprLock2,1,salDX,salDY);
                break;
                case 3:
                    draw_sprite(sprLock3,1,salDX,salDY);
                break;
                case 4:
                    draw_sprite(sprLock4,1,salDX,salDY);
                break;
                case 5:
                    draw_sprite(sprLock5,1,salDX,salDY);
                break;
                case 6:
                    draw_sprite(sprLock6,1,salDX,salDY);
                break;
                case 8:
                    draw_sprite(sprLock8,1,salDX,salDY);
                break;
                case 12:
                    draw_sprite(sprLock12,1,salDX,salDY);
                break;
                case 24:
                    draw_sprite(sprLock24,1,salDX,salDY);
                break;
                default:
                    var drawLockW = 8;//Width of the lock symbol
                    draw_set_font(fTalk);
                    var drawLockTextW = string_width(fakeString);
                    var drawLockStringLength = drawLockW + drawLockTextW + 4;//4 is a horizontal separation constant
                    var drawLockLeftOffset = ceil(drawLockStringLength/2)+12;
                    var drawDoorMid = salDX+16*salW;
                    var drawLockLeftX = drawDoorMid - drawLockLeftOffset;
                    draw_sprite(sprSymbols,5,drawLockLeftX,salDY+16*(salH-1));
                    draw_set_color(make_color_rgb(235,223,211));
                    draw_set_halign(fa_left);
                    draw_set_valign(fa_center);
                    draw_text(drawLockLeftX+24-1,salDY+16*salH-1,fakeString);//11 is the specific adjustment constant
                    draw_set_color(c_white);
                break;
            }
        }
        if salType == 2{//N-Blast
            draw_sprite(sprSymbols,6,salDX+16*(salW-1),salDY+16*(salH-1));
        }
        if salType == 3{//N-Equals (I mean...I guess this won't really matter)
            draw_sprite(sprSymbols,8,salDX+16*(salW-1),salDY+16*(salH-1));
        }
    break;
    case 3://Negative i
        if salType == 0{
            switch fakeCount{
                case 1:
                    draw_sprite(sprSymbols,9,salDX+16*(salW-1),salDY+16*(salH-1));
                break;
                case 2:
                    draw_sprite(sprLock2i,1,salDX,salDY);
                break;
                case 3:
                    draw_sprite(sprLock3i,1,salDX,salDY);
                break;
                default:
                    draw_set_font(fTalk);
                    draw_set_color(make_color_rgb(235,223,211));
                    draw_set_halign(fa_center);
                    draw_set_valign(fa_center);
                    draw_text(salDX+16*salW-1,salDY+16*salH-1,fakeString+"i");
                    draw_set_color(c_white);
                break;
            }
        }
        if salType == 2{//NI-Blast
            draw_sprite(sprSymbols,7,salDX+16*(salW-1),salDY+16*(salH-1));
        }
        if salType == 3{//Equals
            draw_sprite(sprSymbols,8,salDX+16*(salW-1),salDY+16*(salH-1));
        }
    break;
}
