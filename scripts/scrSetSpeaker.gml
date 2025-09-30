switch argument0
{
    case 0:
        speakerName = "System"
        speakerSpr = 80
        boxCol = 4210752
        textCol = 16777215
        shaCol = 8421504
        hasShadow = 1
        break
    case 1:
        speakerName = "Sign"
        speakerSpr = 81
        boxCol = make_color_hsv(30, 120, 220)
        textCol = make_color_hsv(25, 220, 80)
        shaCol = make_color_hsv(25, 170, 160)
        hasShadow = 1
        break
    case 2:
        speakerName = "Lily"
        speakerSpr = 82
        boxCol = make_color_rgb(255, 150, 190)
        textCol = make_color_rgb(64, 0, 128)
        shaCol = make_color_rgb(200, 100, 140)
        hasShadow = 1
        break
    case 3:
        speakerName = "Kina"
        speakerSpr = 290
        boxCol = make_color_rgb(163, 73, 164)
        textCol = make_color_rgb(16, 52, 92)
        shaCol = make_color_rgb(40, 10, 40)
        hasShadow = 1
        break
    case 4:
        speakerName = "Diary"
        speakerSpr = 327
        boxCol = make_color_rgb(30, 0, 15)
        textCol = make_color_rgb(255, 230, 200)
        shaCol = make_color_rgb(0, 0, 0)
        hasShadow = 1
        break
    case 5:
        speakerName = "???"
        speakerSpr = 80
        boxCol = make_color_rgb(0, 15, 30)
        textCol = make_color_rgb(200, 230, 255)
        shaCol = 0
        hasShadow = 1
        break
    case 6:
        speakerName = "Lucas"
        speakerSpr = 329
        boxCol = make_color_rgb(255, 230, 150)
        textCol = make_color_rgb(40, 10, 0)
        shaCol = make_color_rgb(255, 200, 100)
        hasShadow = 1
        break
    case 7:
        speakerName = "Narrator"
        speakerSpr = 80
        boxCol = make_color_rgb(255, 180, 255)
        textCol = make_color_rgb(60, 20, 140)
        shaCol = make_color_rgb(225, 150, 255)
        hasShadow = 1
        break
    default:
        speakerName = "???"
        speakerSpr = 80
        boxCol = 16777215
        textCol = 0
        shaCol = 12632256
        hasShadow = 1
        break
}

