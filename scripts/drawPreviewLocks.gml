var i, _lockSpr, tempX, tempY, tempXMid, tempYMid, tempXSymbol, tempYSymbol, fakeCount, fakeString, needR, needI, _lockNega, _lockImaginary, tempOffsetX, tempOffsetY, tempLockString;
draw_set_font(fTalk)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
for (i = 0; i < salvageLockCount; i += 1)
{
    _lockSpr = lock[i, 6]
    if global.simpleLock
    {
        switch _lockSpr
        {
            case sprLock1A:
                _lockSpr = sprLockAny
                break
            case 164:
            case 166:
                _lockSpr = sprLockAnyH
                break
            case 163:
            case 165:
                _lockSpr = sprLockAnyV
                break
            case 167:
            case 168:
            case 169:
                _lockSpr = sprLockAnyM
                break
            case 170:
            case 171:
            case 172:
                _lockSpr = sprLockAnyL
                break
            case 173:
                _lockSpr = sprLockAnyXL
                break
        }
        
    }
    tempX = (salDX + lock[i, 4])
    tempY = (salDY + lock[i, 5])
    tempXMid = (sprite_get_width(lock[i, 6]) * 0.5)
    tempYMid = (sprite_get_height(lock[i, 6]) * 0.5)
    tempXSymbol = (((tempX - sprite_get_xoffset(lock[i, 6])) + tempXMid) - 16)
    tempYSymbol = (((tempY - sprite_get_yoffset(lock[i, 6])) + tempYMid) - 16)
    fakeCount = 0
    if (lock[i, 1] != sprCamera)
        fakeCount = abs(lock[i, 1])
    if (lock[i, 2] != 0)
        fakeCount = abs(lock[i, 2])
    fakeString = string(fakeCount)
    switch iPow
    {
        case 0:
            needR = lock[i, 1]
            needI = lock[i, 2]
            break
        case 1:
            needR = (-lock[i, 2])
            needI = lock[i, 1]
            break
        case 2:
            needR = (-lock[i, 1])
            needI = (-lock[i, 2])
            break
        case 3:
            needR = lock[i, 2]
            needI = (-lock[i, 1])
            break
    }
    
    _lockNega = 0
    _lockImaginary = 0
    if ((needR > 0) || (lock[i, 3] == 1))
        _lockNega = 0
    else if (needR < 0)
        _lockNega = 1
    else
    {
        _lockImaginary = 1
        if (needI > 0)
            _lockNega = 0
        else
            _lockNega = 1
    }
    if ((_lockNega == 0) || (lock[i, 3] == 1))
    {
        draw_set_color(make_color_rgb(44, 32, 20))
        draw_sprite_ext(_lockSpr, 0, tempX, tempY, 1, 1, 0, c_white, 1)
        switch lock[i, 3]
        {
            case 2:
                if (needR > 0)
                    draw_sprite(sprSymbols, 2, tempX, tempY)
                if (needI > 0)
                    draw_sprite(sprSymbols, 3, tempX, tempY)
                break
            case 3:
                draw_sprite(sprSymbols, 4, tempX, tempY)
                break
        }
        
        if ((_lockSpr == sprLockAny) || ((_lockSpr == sprLockAnyM) || ((_lockSpr == sprLockAnyL) || ((_lockSpr == sprLockAnyXL) || (_lockSpr == sprLockAnyH)))))
        {
            if (lock[i, 3] == 0)
            {
                tempOffsetX = ((sprite_get_width(_lockSpr) / 2) - sprite_get_xoffset(_lockSpr))
                tempOffsetY = ((sprite_get_height(_lockSpr) / 2) - sprite_get_yoffset(_lockSpr))
                tempLockString = string(abs(needR))
                if (needI != 0)
                    tempLockString = (string(abs(needI)) + "i")
                draw_text((tempX + tempOffsetX), (tempY + tempOffsetY), tempLockString)
            }
        }
        else if (_lockSpr == sprLockAnyV)
        {
            tempOffsetX = ((sprite_get_width(_lockSpr) / 2) - sprite_get_xoffset(_lockSpr))
            tempOffsetY = ((sprite_get_height(_lockSpr) / 2) - sprite_get_yoffset(_lockSpr))
            tempLockString = string(abs(needR))
            if (needI == 0)
                draw_text(((tempX + tempOffsetX) + 1), (tempY + tempOffsetY), tempLockString)
            else
            {
                tempLockString = string(abs(needI))
                draw_text(((tempX + tempOffsetX) + 1), ((tempY + tempOffsetY) - 8), tempLockString)
                draw_text((tempX + tempOffsetX), ((tempY + tempOffsetY) + 8), "i")
            }
        }
    }
    else
    {
        draw_set_color(make_color_rgb(235, 223, 211))
        draw_sprite_ext(_lockSpr, 1, tempX, tempY, 1, 1, 0, c_white, 1)
        switch lock[i, 3]
        {
            case 2:
                if (needR < 0)
                    draw_sprite(sprSymbols, 6, tempX, tempY)
                if (needI < 0)
                    draw_sprite(sprSymbols, 7, tempX, tempY)
                break
            case 3:
                draw_sprite(sprSymbols, 8, tempX, tempY)
                break
        }
        
        if ((_lockSpr == sprLockAny) || ((_lockSpr == sprLockAnyM) || ((_lockSpr == sprLockAnyL) || ((_lockSpr == sprLockAnyXL) || (_lockSpr == sprLockAnyH)))))
        {
            if (lock[i, 3] == 0)
            {
                tempOffsetX = ((sprite_get_width(_lockSpr) / 2) - sprite_get_xoffset(_lockSpr))
                tempOffsetY = ((sprite_get_height(_lockSpr) / 2) - sprite_get_yoffset(_lockSpr))
                tempLockString = string(abs(needR))
                if (needI != 0)
                    tempLockString = (string(abs(needI)) + "i")
                draw_text((tempX + tempOffsetX), (tempY + tempOffsetY), tempLockString)
            }
        }
        else if (_lockSpr == sprLockAnyV)
        {
            tempOffsetX = ((sprite_get_width(_lockSpr) / 2) - sprite_get_xoffset(_lockSpr))
            tempOffsetY = ((sprite_get_height(_lockSpr) / 2) - sprite_get_yoffset(_lockSpr))
            tempLockString = string(abs(needR))
            if (needI == 0)
                draw_text(((tempX + tempOffsetX) + 1), (tempY + tempOffsetY), tempLockString)
            else
            {
                tempLockString = string(abs(needI))
                draw_text(((tempX + tempOffsetX) + 1), ((tempY + tempOffsetY) - 8), tempLockString)
                draw_text((tempX + tempOffsetX), ((tempY + tempOffsetY) + 8), "i")
            }
        }
    }
}
draw_set_color(c_white)
