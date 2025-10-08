///scrDrawDoorLock(color,count,icount,type,xRel,yRel,sprite); 
// rewritten to work with both simple doors and combo doors
// we use the sprLockAnys for borders (for nonpredefined) and for fills

var color = argument0;
var mainTone = global.mainTone[color];
var count = argument1;
var icount = argument2;
var type = argument3;
var xRel = argument4 + x;
var yRel = argument5 + y;
var sprite = argument6;

// draw lock fill
var width = sprite_get_width(sprite);
var height  = sprite_get_height(sprite);
var offsetX = sprite_get_xoffset(sprite);
var offsetY = sprite_get_yoffset(sprite);

// get lock size
var fillSprite = sprite;
var isPredefinedSprite = false;
var verticalText = false;
switch sprite {
    case sprLock1A:
        if global.simpleLock { sprite = sprLockAnyS; }
        else { isPredefinedSprite = true; }
        fillSprite = sprLockAnyS;
    break;
    case sprLock2V:
    case sprLock3V:
        if global.simpleLock { sprite = sprLockAnyV; }
        else { isPredefinedSprite = true; }
        fillSprite = sprLockAnyV;
        verticalText = true;
    break;
    case sprLock2H:
    case sprLock3H:
        if global.simpleLock { sprite = sprLockAnyH; }
        else { isPredefinedSprite = true; }
        fillSprite = sprLockAnyH;
    break;
    case sprLock4A:
    case sprLock5A:
    case sprLock6A:
        if global.simpleLock { sprite = sprLockAnyM; }
        else { isPredefinedSprite = true; }
        fillSprite = sprLockAnyM;
    break;
    case sprLock4B:
    case sprLock5B:
    case sprLock6B:
    case sprLock8A:
    case sprLock12A:
        if global.simpleLock { sprite = sprLockAnyL; }
        else { isPredefinedSprite = true; }
        fillSprite = sprLockAnyL;
    break;
    case sprLock24A:
        if global.simpleLock { sprite = sprLockAnyXL; }
        else { isPredefinedSprite = true; }
        fillSprite = sprLockAnyXL;
    break;
}

switch color {
    case color_MASTER:
        draw_sprite_ext(sprDGoldGrad,floor(goldIndex),xRel-offsetX,yRel-offsetY,width/64,height/64,0,c_white,1);
    break;
    case color_PURE:
        draw_sprite_ext(sprDPureGrad,floor(goldIndex),xRel-offsetX,yRel-offsetY,width/64,height/64,0,c_white,1);
    break;
    case color_STONE:
        draw_sprite_ext(sprDStoneTexture,0,xRel-offsetX,yRel-offsetY,width/64,height/64,0,c_white,1);
    break;
    case color_GLITCH:
        shader_set(shdRainbowStripe2);
        draw_sprite_ext(fillSprite,2,xRel,yRel,1,1,0,mainTone,1);
        shader_reset();
        if glitchMimic != color_GLITCH {
            var index = 3;
            mainTone = c_white;
            switch glitchMimic {
                case color_MASTER: index = 4; break;
                case color_PURE: index = 5; break;
                case color_STONE: index = 6; break;
                default:
                    mainTone = global.mainTone[glitchMimic];
                break;
            }
            draw_sprite_ext(fillSprite,index,xRel,yRel,1,1,0,mainTone,1);
        }
    break;
    default:
        draw_sprite_ext(fillSprite,2,xRel,yRel,1,1,0,mainTone,1);
    break;
}

var index = 0;
if count < 0 || icount < 0 {index = 1}
if isPredefinedSprite {
    // the imaginary sprites; only matters for sprites for predefined lock amounts
    if icount > 0 {index = 2}
    else if icount < 0 {index = 3}
}
draw_sprite(sprite,index,xRel,yRel);

switch type {
    case lock_NORMAL:
        if !isPredefinedSprite { // draw numbers
            index = 0;
            draw_set_color(make_color_rgb(44,32,20));
            if count < 0 || icount < 0 {
                index = 5;
                draw_set_color(make_color_rgb(235,223,211));    
            }

            draw_set_font(fTalk);
            var numbers = string(abs(count) + abs(icount));
            if numbers == "1" { numbers = ""; }
            var lockOffsetX = 0;
            var lockOffsetY = 0;
            if count != 0 {
                if verticalText { lockOffsetY = -16; } // offset text start for lock symbol
                else { lockOffsetX = 12; }
            } else if icount != 0 {
                numbers += "i";
            }

            var startX = floor((width - string_width(numbers) - lockOffsetX)/2) + xRel - offsetX; // i have no idea why this 4 is needed
            var startY = floor((height - lockOffsetY)/2) + yRel - offsetY;
            // number
            draw_set_halign(fa_left);
            draw_set_valign(fa_center);
            //draw_rectangle(startX+lockOffsetX,startY+lockOffsetY-8,startX+lockOffsetX+string_width(numbers),startY+lockOffsetY+8,false)
            //draw_set_color(make_color_rgb(255,0,0));
            draw_text(startX+lockOffsetX+1,startY+lockOffsetY-1,numbers);
            draw_set_color(c_white);

            // lock symbol
            if verticalText { // calculate lock startX seperately;
                lockOffsetX = 12;
                startX = floor((width - lockOffsetX)/2) + xRel - offsetX;
                startY += 3; // basegame consistency
            }
            if count != 0 {
                draw_sprite(sprSymbols,index,startX-10,startY-16);
            }
        }
    break;
    case lock_BLAST:
        index = 2;
        if count < 0 {index = 6}
        else if icount > 0 {index = 3}
        else if icount < 0 {index = 7}
        draw_sprite(sprSymbols,index,xRel+width/2-9,yRel+height/2-9);
    break;
    case lock_ALL:
        draw_sprite(sprSymbols,4,xRel+width/2-9,yRel+height/2-9);
}
draw_set_color(c_white);
/*
//Determines image index for door frame
var dIndex = 0;
var tempPow = 0;
if count > 0 || type == 1{//Positive doors or blank doors
    tempPow = 0;
}else if count < 0{//Negative doors
    tempPow = 2;
}else{//Switch to imaginary heuristic
    if icount > 0{//Positive imaginary
        tempPow = 1;
    }else{//Negative imaginary
        tempPow = 3;
    }
}
tempPow = (tempPow + iPow) mod 4;
if tempPow <= 1{dIndex = 0;}else{dIndex = 5;}//+ and +i are positive, - and -i are negative
var fakeCount = 0;
if count != 0{fakeCount = abs(count);}
if icount != 0{fakeCount = abs(icount);}
var fakeString = string(fakeCount);

//Door Frame
//Edges
if w > 1{
    draw_sprite_part_ext(sprDoorBig,dIndex,16,0,16,16,x+16,y,(w-1)*2,1,c_white,1);
    draw_sprite_part_ext(sprDoorBig,dIndex,16,48,16,16,x+16,y+32*h-16,(w-1)*2,1,c_white,1);
}
if h > 1{
    draw_sprite_part_ext(sprDoorBig,dIndex,0,16,16,16,x,y+16,1,(h-1)*2,c_white,1);
    draw_sprite_part_ext(sprDoorBig,dIndex,48,16,16,16,x+32*w-16,y+16,1,(h-1)*2,c_white,1);
}

//Corners
draw_sprite_part_ext(sprDoorBig,dIndex,0,0,16,16,x,y,1,1,c_white,1);
draw_sprite_part_ext(sprDoorBig,dIndex,48,0,16,16,x+32*w-16,y,1,1,c_white,1);
draw_sprite_part_ext(sprDoorBig,dIndex,0,48,16,16,x,y+32*h-16,1,1,c_white,1);
draw_sprite_part_ext(sprDoorBig,dIndex,48,48,16,16,x+32*w-16,y+32*h-16,1,1,c_white,1);
///Symbol
switch tempPow{
    case 0://Positive
        if type == 0{//Normal
            switch fakeCount{
                case 1:
                    draw_sprite(sprSymbols,0,x,y);
                break;
                case 2:
                    draw_sprite(sprLock2,0,x,y);
                break;
                case 3:
                    draw_sprite(sprLock3,0,x,y);
                break;
                case 4:
                    draw_sprite(sprLock4,0,x,y);
                break;
                case 5:
                    draw_sprite(sprLock5,0,x,y);
                break;
                case 6:
                    draw_sprite(sprLock6,0,x,y);
                break;
                case 8:
                    draw_sprite(sprLock8,0,x,y);
                break;
                case 12:
                    draw_sprite(sprLock12,0,x,y);
                break;
                case 24:
                    draw_sprite(sprLock24,0,x,y);
                break;
                default:
                    var drawLockW = 8;//Width of the lock symbol
                    draw_set_font(fTalk);
                    var drawLockTextW = string_width(fakeString);
                    var drawLockStringLength = drawLockW + drawLockTextW + 4;//4 is a horizontal separation constant
                    var drawLockLeftOffset = ceil(drawLockStringLength/2)+12;
                    var drawDoorMid = x+16*w;
                    var drawLockLeftX = drawDoorMid - drawLockLeftOffset;
                    draw_sprite(sprSymbols,0,drawLockLeftX,y+16*(h-1));
                    draw_set_color(make_color_rgb(44,32,20));
                    draw_set_halign(fa_left);
                    draw_set_valign(fa_center);
                    draw_text(drawLockLeftX+24-1,y+16*h-1,fakeString);//11 is the specific adjustment constant
                    draw_set_color(c_white);
                break;
            }
        }
        if type == 2{//Blast
            draw_sprite(sprSymbols,2,x+16*(w-1),y+16*(h-1));
        }
        if type == 3{//Equals
            draw_sprite(sprSymbols,4,x+16*(w-1),y+16*(h-1));
        }
    break;
    case 1://Positive i
        if type == 0{
            switch fakeCount{
                case 1:
                    draw_sprite(sprSymbols,1,x+16*(w-1),y+16*(h-1));
                break;
                case 2:
                    draw_sprite(sprLock2i,0,x,y);
                break;
                case 3:
                    draw_sprite(sprLock3i,0,x,y);
                break;
                default:
                    draw_set_font(fTalk);
                    draw_set_color(make_color_rgb(44,32,20));
                    draw_set_halign(fa_center);
                    draw_set_valign(fa_center);
                    draw_text(x+16*w-1,y+16*h-1,fakeString+"i");
                    draw_set_color(c_white);
                break;
            }
        }
        if type == 2{//I-Blast
            draw_sprite(sprSymbols,3,x+16*(w-1),y+16*(h-1));
        }
        if type == 3{//Equals
            draw_sprite(sprSymbols,4,x+16*(w-1),y+16*(h-1));
        }
    break;
    case 2://Negative
        if type == 0{//Normal
            switch fakeCount{
                case 1:
                    draw_sprite(sprSymbols,5,x,y);
                break;
                case 2:
                    draw_sprite(sprLock2,1,x,y);
                break;
                case 3:
                    draw_sprite(sprLock3,1,x,y);
                break;
                case 4:
                    draw_sprite(sprLock4,1,x,y);
                break;
                case 5:
                    draw_sprite(sprLock5,1,x,y);
                break;
                case 6:
                    draw_sprite(sprLock6,1,x,y);
                break;
                case 8:
                    draw_sprite(sprLock8,1,x,y);
                break;
                case 12:
                    draw_sprite(sprLock12,1,x,y);
                break;
                case 24:
                    draw_sprite(sprLock24,1,x,y);
                break;
                default:
                    var drawLockW = 8;//Width of the lock symbol
                    draw_set_font(fTalk);
                    var drawLockTextW = string_width(fakeString);
                    var drawLockStringLength = drawLockW + drawLockTextW + 4;//4 is a horizontal separation constant
                    var drawLockLeftOffset = ceil(drawLockStringLength/2)+12;
                    var drawDoorMid = x+16*w;
                    var drawLockLeftX = drawDoorMid - drawLockLeftOffset;
                    draw_sprite(sprSymbols,5,drawLockLeftX,y+16*(h-1));
                    draw_set_color(make_color_rgb(235,223,211));
                    draw_set_halign(fa_left);
                    draw_set_valign(fa_center);
                    draw_text(drawLockLeftX+24-1,y+16*h-1,fakeString);//11 is the specific adjustment constant
                    draw_set_color(c_white);
                break;
            }
        }
        if type == 2{//N-Blast
            draw_sprite(sprSymbols,6,x+16*(w-1),y+16*(h-1));
        }
        if type == 3{//N-Equals (I mean...I guess this won't really matter)
            draw_sprite(sprSymbols,8,x+16*(w-1),y+16*(h-1));
        }
    break;
    case 3://Negative i
        if type == 0{
            switch fakeCount{
                case 1:
                    draw_sprite(sprSymbols,9,x+16*(w-1),y+16*(h-1));
                break;
                case 2:
                    draw_sprite(sprLock2i,1,x,y);
                break;
                case 3:
                    draw_sprite(sprLock3i,1,x,y);
                break;
                default:
                    draw_set_font(fTalk);
                    draw_set_color(make_color_rgb(235,223,211));
                    draw_set_halign(fa_center);
                    draw_set_valign(fa_center);
                    draw_text(x+16*w-1,y+16*h-1,fakeString+"i");
                    draw_set_color(c_white);
                break;
            }
        }
        if type == 2{//NI-Blast
            draw_sprite(sprSymbols,7,x+16*(w-1),y+16*(h-1));
        }
        if type == 3{//Equals
            draw_sprite(sprSymbols,8,x+16*(w-1),y+16*(h-1));
        }
    break;
}
*/
