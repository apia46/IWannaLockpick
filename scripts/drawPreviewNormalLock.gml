var tempPow, fakeCount, fakeString, drawLockW, drawLockTextW, drawLockStringLength, drawLockLeftOffset, drawDoorMid, drawLockLeftX;
tempPow = 0
if ((salCount > 0) || (salType == 1))
    tempPow = 0
else if (salCount < 0)
    tempPow = 2
else if (salICount > 0)
    tempPow = 1
else
    tempPow = 3
fakeCount = 0
if (salCount != 0)
    fakeCount = abs(salCount)
if (salICount != 0)
    fakeCount = abs(salICount)
fakeString = string(fakeCount)
switch tempPow
{
    case 0:
        if (salType == 0)
        {
            switch fakeCount
            {
                case 1:
                    draw_sprite(sprSymbols, 0, salDX, salDY)
                    break
                case 2:
                    draw_sprite(sprLock2, 0, salDX, salDY)
                    break
                case 3:
                    draw_sprite(sprLock3, 0, salDX, salDY)
                    break
                case 4:
                    draw_sprite(sprLock4, 0, salDX, salDY)
                    break
                case 5:
                    draw_sprite(sprLock5, 0, salDX, salDY)
                    break
                case 6:
                    draw_sprite(sprLock6, 0, salDX, salDY)
                    break
                case 8:
                    draw_sprite(sprLock8, 0, salDX, salDY)
                    break
                case 12:
                    draw_sprite(sprLock12, 0, salDX, salDY)
                    break
                case 24:
                    draw_sprite(sprLock24, 0, salDX, salDY)
                    break
                default:
                    drawLockW = 8
                    draw_set_font(fTalk)
                    drawLockTextW = string_width(fakeString)
                    drawLockStringLength = ((drawLockW + drawLockTextW) + 4)
                    drawLockLeftOffset = (ceil((drawLockStringLength / 2)) + 12)
                    drawDoorMid = (salDX + (16 * salW))
                    drawLockLeftX = (drawDoorMid - drawLockLeftOffset)
                    draw_sprite(sprSymbols, 0, drawLockLeftX, (salDY + (16 * (salH - 1))))
                    draw_set_color(make_color_rgb(44, 32, 20))
                    draw_set_halign(fa_left)
                    draw_set_valign(fa_middle)
                    draw_text(((drawLockLeftX + 24) - 1), ((salDY + (16 * salH)) - 1), fakeString)
                    draw_set_color(c_white)
                    break
            }
            
        }
        if (salType == 2)
            draw_sprite(sprSymbols, 2, (salDX + (16 * (salW - 1))), (salDY + (16 * (salH - 1))))
        if (salType == 3)
            draw_sprite(sprSymbols, 4, (salDX + (16 * (salW - 1))), (salDY + (16 * (salH - 1))))
        break
    case 1:
        if (salType == 0)
        {
            switch fakeCount
            {
                case 1:
                    draw_sprite(sprSymbols, 1, (salDX + (16 * (salW - 1))), (salDY + (16 * (salH - 1))))
                    break
                case 2:
                    draw_sprite(sprLock2i, 0, salDX, salDY)
                    break
                case 3:
                    draw_sprite(sprLock3i, 0, salDX, salDY)
                    break
                default:
                    draw_set_font(fTalk)
                    draw_set_color(make_color_rgb(44, 32, 20))
                    draw_set_halign(fa_center)
                    draw_set_valign(fa_middle)
                    draw_text(((salDX + (16 * salW)) - 1), ((salDY + (16 * salH)) - 1), (fakeString + "i"))
                    draw_set_color(c_white)
                    break
            }
            
        }
        if (salType == 2)
            draw_sprite(sprSymbols, 3, (salDX + (16 * (salW - 1))), (salDY + (16 * (salH - 1))))
        if (salType == 3)
            draw_sprite(sprSymbols, 4, (salDX + (16 * (salW - 1))), (salDY + (16 * (salH - 1))))
        break
    case 2:
        if (salType == 0)
        {
            switch fakeCount
            {
                case 1:
                    draw_sprite(sprSymbols, 5, salDX, salDY)
                    break
                case 2:
                    draw_sprite(sprLock2, 1, salDX, salDY)
                    break
                case 3:
                    draw_sprite(sprLock3, 1, salDX, salDY)
                    break
                case 4:
                    draw_sprite(sprLock4, 1, salDX, salDY)
                    break
                case 5:
                    draw_sprite(sprLock5, 1, salDX, salDY)
                    break
                case 6:
                    draw_sprite(sprLock6, 1, salDX, salDY)
                    break
                case 8:
                    draw_sprite(sprLock8, 1, salDX, salDY)
                    break
                case 12:
                    draw_sprite(sprLock12, 1, salDX, salDY)
                    break
                case 24:
                    draw_sprite(sprLock24, 1, salDX, salDY)
                    break
                default:
                    drawLockW = 8
                    draw_set_font(fTalk)
                    drawLockTextW = string_width(fakeString)
                    drawLockStringLength = ((drawLockW + drawLockTextW) + 4)
                    drawLockLeftOffset = (ceil((drawLockStringLength / 2)) + 12)
                    drawDoorMid = (salDX + (16 * salW))
                    drawLockLeftX = (drawDoorMid - drawLockLeftOffset)
                    draw_sprite(sprSymbols, 5, drawLockLeftX, (salDY + (16 * (salH - 1))))
                    draw_set_color(make_color_rgb(235, 223, 211))
                    draw_set_halign(fa_left)
                    draw_set_valign(fa_middle)
                    draw_text(((drawLockLeftX + 24) - 1), ((salDY + (16 * salH)) - 1), fakeString)
                    draw_set_color(c_white)
                    break
            }
            
        }
        if (salType == 2)
            draw_sprite(sprSymbols, 6, (salDX + (16 * (salW - 1))), (salDY + (16 * (salH - 1))))
        if (salType == 3)
            draw_sprite(sprSymbols, 8, (salDX + (16 * (salW - 1))), (salDY + (16 * (salH - 1))))
        break
    case 3:
        if (salType == 0)
        {
            switch fakeCount
            {
                case 1:
                    draw_sprite(sprSymbols, 9, (salDX + (16 * (salW - 1))), (salDY + (16 * (salH - 1))))
                    break
                case 2:
                    draw_sprite(sprLock2i, 1, salDX, salDY)
                    break
                case 3:
                    draw_sprite(sprLock3i, 1, salDX, salDY)
                    break
                default:
                    draw_set_font(fTalk)
                    draw_set_color(make_color_rgb(235, 223, 211))
                    draw_set_halign(fa_center)
                    draw_set_valign(fa_middle)
                    draw_text(((salDX + (16 * salW)) - 1), ((salDY + (16 * salH)) - 1), (fakeString + "i"))
                    draw_set_color(c_white)
                    break
            }
            
        }
        if (salType == 2)
            draw_sprite(sprSymbols, 7, (salDX + (16 * (salW - 1))), (salDY + (16 * (salH - 1))))
        if (salType == 3)
            draw_sprite(sprSymbols, 8, (salDX + (16 * (salW - 1))), (salDY + (16 * (salH - 1))))
        break
}

