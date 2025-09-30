if (whiteFlash > 0)
{
    fog_trick(16777215, whiteFlash)
    switch type
    {
        case 0:
        case 5:
        case 6:
        case 7:
            if (color == 0)
                draw_sprite_ext(sprKMaster, 0, x, y, 1, 1, 0, c_white, whiteFlash)
            else
                draw_sprite_ext(sprKey, 5, x, y, 1, 1, 0, c_white, whiteFlash)
            break
        case 1:
            if (color == 0)
                draw_sprite_ext(sprKMasterAbs, 0, x, y, 1, 1, 0, c_white, whiteFlash)
            else
                draw_sprite_ext(sprKeyAbs, 6, x, y, 1, 1, 0, c_white, whiteFlash)
            break
        case 3:
            draw_sprite_ext(sprKMasterStar, 0, x, y, 1, 1, 0, c_white, whiteFlash)
            break
        case 4:
            draw_sprite_ext(sprKMasterStar2, 0, x, y, 1, 1, 0, c_white, whiteFlash)
            break
    }
    
    fog_trick()
    whiteFlash = max((whiteFlash - 0.1), 0)
}
