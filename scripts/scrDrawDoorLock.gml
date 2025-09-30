var dIndex, tempPow, fakeCount, fakeString, drawLockW, drawLockTextW, drawLockStringLength, drawLockLeftOffset, drawDoorMid, drawLockLeftX;
if ((global.complexMode == 0) && (copies == 0))
{
    scrComboDrawIm()
    exit
}
if ((global.complexMode == 1) && (icopies == 0))
{
    scrComboDrawIm()
    exit
}
dIndex = 0
tempPow = 0
if ((count > 0) || (type == 1))
    tempPow = 0
else if (count < 0)
    tempPow = 2
else if (icount > 0)
    tempPow = 1
else
    tempPow = 3
tempPow = ((tempPow + iPow) % 4)
if (tempPow <= 1)
    dIndex = 0
else
    dIndex = 5
fakeCount = 0
if (count != 0)
    fakeCount = abs(count)
if (icount != 0)
    fakeCount = abs(icount)
fakeString = string(fakeCount)
if (w > 1)
{
    draw_sprite_part_ext(sprDoorBig, dIndex, 16, 0, 16, 16, (x + 16), y, ((w - 1) * 2), 1, c_white, 1)
    draw_sprite_part_ext(sprDoorBig, dIndex, 16, 48, 16, 16, (x + 16), ((y + (32 * h)) - 16), ((w - 1) * 2), 1, c_white, 1)
}
if (h > 1)
{
    draw_sprite_part_ext(sprDoorBig, dIndex, 0, 16, 16, 16, x, (y + 16), 1, ((h - 1) * 2), c_white, 1)
    draw_sprite_part_ext(sprDoorBig, dIndex, 48, 16, 16, 16, ((x + (32 * w)) - 16), (y + 16), 1, ((h - 1) * 2), c_white, 1)
}
draw_sprite_part_ext(sprDoorBig, dIndex, 0, 0, 16, 16, x, y, 1, 1, c_white, 1)
draw_sprite_part_ext(sprDoorBig, dIndex, 48, 0, 16, 16, ((x + (32 * w)) - 16), y, 1, 1, c_white, 1)
draw_sprite_part_ext(sprDoorBig, dIndex, 0, 48, 16, 16, x, ((y + (32 * h)) - 16), 1, 1, c_white, 1)
draw_sprite_part_ext(sprDoorBig, dIndex, 48, 48, 16, 16, ((x + (32 * w)) - 16), ((y + (32 * h)) - 16), 1, 1, c_white, 1)
switch tempPow
{
    case 0:
        if (type == 0)
        {
            switch fakeCount
            {
                case 1:
                    draw_sprite(sprSymbols, 0, x, y)
                    break
                case 2:
                    draw_sprite(sprLock2, 0, x, y)
                    break
                case 3:
                    draw_sprite(sprLock3, 0, x, y)
                    break
                case 4:
                    draw_sprite(sprLock4, 0, x, y)
                    break
                case 5:
                    draw_sprite(sprLock5, 0, x, y)
                    break
                case 6:
                    draw_sprite(sprLock6, 0, x, y)
                    break
                case 8:
                    draw_sprite(sprLock8, 0, x, y)
                    break
                case 12:
                    draw_sprite(sprLock12, 0, x, y)
                    break
                case 24:
                    draw_sprite(sprLock24, 0, x, y)
                    break
                default:
                    drawLockW = 8
                    draw_set_font(fTalk)
                    drawLockTextW = string_width(fakeString)
                    drawLockStringLength = ((drawLockW + drawLockTextW) + 4)
                    drawLockLeftOffset = (ceil((drawLockStringLength / 2)) + 12)
                    drawDoorMid = (x + (16 * w))
                    drawLockLeftX = (drawDoorMid - drawLockLeftOffset)
                    draw_sprite(sprSymbols, 0, drawLockLeftX, (y + (16 * (h - 1))))
                    draw_set_color(make_color_rgb(44, 32, 20))
                    draw_set_halign(fa_left)
                    draw_set_valign(fa_middle)
                    draw_text(((drawLockLeftX + 24) - 1), ((y + (16 * h)) - 1), fakeString)
                    draw_set_color(c_white)
                    break
            }
            
        }
        if (type == 2)
            draw_sprite(sprSymbols, 2, (x + (16 * (w - 1))), (y + (16 * (h - 1))))
        if (type == 3)
            draw_sprite(sprSymbols, 4, (x + (16 * (w - 1))), (y + (16 * (h - 1))))
        break
    case 1:
        if (type == 0)
        {
            switch fakeCount
            {
                case 1:
                    draw_sprite(sprSymbols, 1, (x + (16 * (w - 1))), (y + (16 * (h - 1))))
                    break
                case 2:
                    draw_sprite(sprLock2i, 0, x, y)
                    break
                case 3:
                    draw_sprite(sprLock3i, 0, x, y)
                    break
                default:
                    draw_set_font(fTalk)
                    draw_set_color(make_color_rgb(44, 32, 20))
                    draw_set_halign(fa_center)
                    draw_set_valign(fa_middle)
                    draw_text(((x + (16 * w)) - 1), ((y + (16 * h)) - 1), (fakeString + "i"))
                    draw_set_color(c_white)
                    break
            }
            
        }
        if (type == 2)
            draw_sprite(sprSymbols, 3, (x + (16 * (w - 1))), (y + (16 * (h - 1))))
        if (type == 3)
            draw_sprite(sprSymbols, 4, (x + (16 * (w - 1))), (y + (16 * (h - 1))))
        break
    case 2:
        if (type == 0)
        {
            switch fakeCount
            {
                case 1:
                    draw_sprite(sprSymbols, 5, x, y)
                    break
                case 2:
                    draw_sprite(sprLock2, 1, x, y)
                    break
                case 3:
                    draw_sprite(sprLock3, 1, x, y)
                    break
                case 4:
                    draw_sprite(sprLock4, 1, x, y)
                    break
                case 5:
                    draw_sprite(sprLock5, 1, x, y)
                    break
                case 6:
                    draw_sprite(sprLock6, 1, x, y)
                    break
                case 8:
                    draw_sprite(sprLock8, 1, x, y)
                    break
                case 12:
                    draw_sprite(sprLock12, 1, x, y)
                    break
                case 24:
                    draw_sprite(sprLock24, 1, x, y)
                    break
                default:
                    drawLockW = 8
                    draw_set_font(fTalk)
                    drawLockTextW = string_width(fakeString)
                    drawLockStringLength = ((drawLockW + drawLockTextW) + 4)
                    drawLockLeftOffset = (ceil((drawLockStringLength / 2)) + 12)
                    drawDoorMid = (x + (16 * w))
                    drawLockLeftX = (drawDoorMid - drawLockLeftOffset)
                    draw_sprite(sprSymbols, 5, drawLockLeftX, (y + (16 * (h - 1))))
                    draw_set_color(make_color_rgb(235, 223, 211))
                    draw_set_halign(fa_left)
                    draw_set_valign(fa_middle)
                    draw_text(((drawLockLeftX + 24) - 1), ((y + (16 * h)) - 1), fakeString)
                    draw_set_color(c_white)
                    break
            }
            
        }
        if (type == 2)
            draw_sprite(sprSymbols, 6, (x + (16 * (w - 1))), (y + (16 * (h - 1))))
        if (type == 3)
            draw_sprite(sprSymbols, 8, (x + (16 * (w - 1))), (y + (16 * (h - 1))))
        break
    case 3:
        if (type == 0)
        {
            switch fakeCount
            {
                case 1:
                    draw_sprite(sprSymbols, 9, (x + (16 * (w - 1))), (y + (16 * (h - 1))))
                    break
                case 2:
                    draw_sprite(sprLock2i, 1, x, y)
                    break
                case 3:
                    draw_sprite(sprLock3i, 1, x, y)
                    break
                default:
                    draw_set_font(fTalk)
                    draw_set_color(make_color_rgb(235, 223, 211))
                    draw_set_halign(fa_center)
                    draw_set_valign(fa_middle)
                    draw_text(((x + (16 * w)) - 1), ((y + (16 * h)) - 1), (fakeString + "i"))
                    draw_set_color(c_white)
                    break
            }
            
        }
        if (type == 2)
            draw_sprite(sprSymbols, 7, (x + (16 * (w - 1))), (y + (16 * (h - 1))))
        if (type == 3)
            draw_sprite(sprSymbols, 8, (x + (16 * (w - 1))), (y + (16 * (h - 1))))
        break
}

