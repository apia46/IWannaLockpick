switch argument0
{
    case 0:
        markCol = global.mainTone[1]
        markOut = 0
        break
    case 1:
        markCol = global.mainTone[2]
        markOut = 0
        break
    case 2:
        markCol = global.mainTone[3]
        markOut = 0
        break
    case 3:
        markCol = global.mainTone[7]
        markOut = 0
        break
    case 4:
        markCol = global.mainTone[8]
        markOut = 0
        break
    case 5:
        markCol = global.mainTone[9]
        markOut = 0
        break
    case 6:
        markCol = global.mainTone[4]
        markOut = 0
        break
    case 7:
        markCol = global.mainTone[5]
        markOut = 0
        break
    case 8:
        markCol = global.mainTone[6]
        markOut = 0
        break
    case 9:
        markCol = global.mainTone[10]
        markOut = 0
        break
    case 10:
        markCol = make_color_rgb(255, 0, 0)
        markOut = 0
        break
    case 11:
        markCol = make_color_rgb(0, 255, 0)
        markOut = 0
        break
    case 12:
        markCol = make_color_rgb(0, 0, 255)
        markOut = 0
        break
    case 13:
        markCol = make_color_rgb(0, 255, 255)
        markOut = 0
        break
    case 14:
        markCol = make_color_rgb(255, 0, 255)
        markOut = 0
        break
    case 15:
        markCol = make_color_rgb(255, 255, 0)
        markOut = 0
        break
    case 16:
        markCol = 16777215
        markOut = 0
        break
    case 17:
        markCol = 0
        markOut = 16777215
        break
    default:
        markCol = 16777215
        markOut = 0
        break
}

return markCol;
