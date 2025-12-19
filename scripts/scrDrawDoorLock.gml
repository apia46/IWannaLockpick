///scrDrawDoorLock(color,count,icount,type,xRel,yRel,sprite,ipow,onlyFill); 
// rewritten to work with both simple doors and combo doors
// we use the sprLockAnys for borders (for nonpredefined) and for fills

var color = argument0;
var mainTone = global.mainTone[color];
var count = rotateR(argument1,argument2,argument7);
var icount = rotateI(argument1,argument2,argument7);
var type = argument3;
var xRel = argument4 + x;
var yRel = argument5 + y;
var sprite = argument6;

var width = sprite_get_width(sprite);
var height = sprite_get_height(sprite);

var backSprite = sprite;
var isPredefinedSprite = false;
var verticalText = false;

var offsetX = sprite_get_xoffset(sprite);
var offsetY = sprite_get_yoffset(sprite);

if sprite == sprLockAny {
    width = w*32-14;
    height = h*32-14;
    if w == 1 {
        verticalText = true;
    }
    offsetX = -7;
    offsetY = -7;
}

// get lock size
switch sprite {
    case sprLock1A:
        if global.simpleLock { sprite = sprLockAnyS; }
        else { isPredefinedSprite = true; }
        backSprite = sprLockAnyS;
    break;
    case sprLock2V:
    case sprLock3V:
        if global.simpleLock { sprite = sprLockAnyV; }
        else { isPredefinedSprite = true; }
        backSprite = sprLockAnyV;
        verticalText = true;
    break;
    case sprLock2H:
    case sprLock3H:
        if global.simpleLock { sprite = sprLockAnyH; }
        else { isPredefinedSprite = true; }
        backSprite = sprLockAnyH;
    break;
    case sprLock4A:
    case sprLock5A:
    case sprLock6A:
        if global.simpleLock { sprite = sprLockAnyM; }
        else { isPredefinedSprite = true; }
        backSprite = sprLockAnyM;
    break;
    case sprLock4B:
    case sprLock5B:
    case sprLock6B:
    case sprLock8A:
    case sprLock12A:
        if global.simpleLock { sprite = sprLockAnyL; }
        else { isPredefinedSprite = true; }
        backSprite = sprLockAnyL;
    break;
    case sprLock24A:
        if global.simpleLock { sprite = sprLockAnyXL; }
        else { isPredefinedSprite = true; }
        backSprite = sprLockAnyXL;
    break;
}

if argument7 != 0 && object_index == oDoorCombo {
    sprite = backSprite;
}

// draw lock fill
switch color {
    case color_MASTER:
        draw_sprite_ext(sprDGoldGrad,floor(goldIndex),xRel-offsetX,yRel-offsetY,width/64,height/64,0,c_white,1);
    break;
    case color_PURE:
        draw_sprite_ext(sprDPureGrad,floor(goldIndex),xRel-offsetX,yRel-offsetY,width/64,height/64,0,c_white,1);
    break;
    case color_STONE:
        draw_sprite_ext(sprDStoneTexture,0,xRel-offsetX,yRel-offsetY,width/64,height/64,0,c_white,1);
        // @addcolor if door image/animation
    break;
    case color_GLITCH:
        setShdEffects(color_GLITCH);
        draw_rectangle_colour(xRel-offsetX+2,yRel-offsetY+2,xRel-offsetX+width-3,yRel-offsetY+height-3,mainTone,mainTone,mainTone,mainTone,false);
        shader_reset();
        if glitchMimic != color_GLITCH {
            var index = 0;
            mainTone = c_white;
            switch glitchMimic {
                case color_MASTER: index = 1; break;
                case color_PURE: index = 2; break;
                case color_STONE: index = 3; break;
                // @addcolor if door image/animation
                default:
                    mainTone = global.mainTone[glitchMimic];
                break;
            }
            draw_sprite_ext(backSprite,index,xRel,yRel,1,1,0,mainTone,1);
        }
    break;
    default:
        draw_rectangle_colour(xRel-offsetX+2,yRel-offsetY+2,xRel-offsetX+width-3,yRel-offsetY+height-3,mainTone,mainTone,mainTone,mainTone,false);
    break;
}

if argument8 {return 0;}

// draw lock frame
var index = 0;
if count < 0 || icount < 0 {index = 1}

scrDrawNinePatchStretch(sprLockFrame,index,xRel-offsetX,yRel-offsetY,width,height,9,9,false,c_white,1);

// draw predefined lock sprite
if isPredefinedSprite {
    index = 0;
    var lockColor = make_color_rgb(44,32,20);
    if count < 0 || icount < 0 { lockColor = make_color_rgb(235,223,211); }
    if icount != 0 { index = 1; }
    draw_sprite_ext(sprite,index,xRel,yRel,1,1,0,lockColor,1);
}

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
            var lockSymbol = false;
            if count != 0 {
                if abs(count) == 1 || sprite != sprLockAnyS {
                    lockSymbol = true;
                    if verticalText { lockOffsetY = -16; } // offset text start for lock symbol
                    else { lockOffsetX = 12; }
                }
            } else if icount != 0 {
                numbers += "i";
            }

            var startX = floor((width - string_width(numbers) - lockOffsetX)/2) + xRel - offsetX; // i have no idea why this 4 is needed
            var startY = floor((height - lockOffsetY)/2) + yRel - offsetY;
            // number
            draw_set_halign(fa_left);
            draw_set_valign(fa_center);
            if icount == 0 { // offset the number to the right one more pixel if it isnt imaginary, because of inaccurate text widths or something
                draw_text(startX+lockOffsetX+1,startY+lockOffsetY-1,numbers);
            } else {
                draw_text(startX+lockOffsetX,startY+lockOffsetY-1,numbers);
            }
            draw_set_color(c_white);

            // lock symbol
            if lockSymbol {
                if verticalText { // calculate lock startX seperately;
                    lockOffsetX = 12;
                    startX = floor((width - lockOffsetX)/2) + xRel - offsetX;
                    startY += 3; // basegame consistency
                }
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
