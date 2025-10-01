///setRoomTransitionColor(room);
switch argument0{
    case rMainHub://Main Hub
        global.roomTransitionColor = make_color_rgb(160,220,190);
    break;
    case rHub01://Doorhaven
        global.roomTransitionColor = make_color_rgb(32,32,96);
    break;
    case rHub02://Vista
        global.roomTransitionColor = make_color_rgb(50,160,80);
    break;
    case rHub03://Infrastructure
        global.roomTransitionColor = make_color_rgb(120,100,40);
    break;
    case rHub04://Temple
        global.roomTransitionColor = make_color_rgb(60,32,80);
    break;
    case rHub05://Attic
        global.roomTransitionColor = make_color_rgb(60,40,20);
    break;
    case rHub06://Garden
        global.roomTransitionColor = make_color_rgb(80,120,70);
    break;
    case rHub07://Mooncloud Lake / Cloudy Nightway
        global.roomTransitionColor = make_color_rgb(30,30,80);
    break;
    case rHub08://Etchstone Cliff
        global.roomTransitionColor = make_color_rgb(110,80,130);
    break;
    case rHub09://Lockpick Library
        global.roomTransitionColor = make_color_rgb(100,35,50);
    break;
    case rHub10://Mechanical Nexus
        global.roomTransitionColor = make_color_rgb(90,90,90);
    break;
    case rHub11://The Miracle Tower
        global.roomTransitionColor = make_color_rgb(210,225,240);
    break;
    case rBackHub://The Backside
        global.roomTransitionColor = make_color_rgb(30,30,0);
    break;
    case rWayOut://Way Out
        global.roomTransitionColor = make_color_rgb(255,190,230);
    break;
    case rHubGB://The Great Beyond
        global.roomTransitionColor = make_color_rgb(190,230,255);
    break;
    case rAutumnHub:
        global.roomTransitionColor = make_color_rgb(230,180,80);
    break;
    case rWinterHub:
        global.roomTransitionColor = make_color_rgb(190,210,255);
    break;
    case rSummerHub:
        global.roomTransitionColor = make_color_rgb(255,190,80);
    break;
    case rSpringHub:
        global.roomTransitionColor = make_color_rgb(10,20,180);
    break;
    case rHub00:
    case rSecretLab:
        global.roomTransitionColor = make_color_rgb(190,180,180);
    break;
    case rHub12:
        global.roomTransitionColor = make_color_rgb(90,150,200);
    break;
    case rEXHub:
        global.roomTransitionColor = make_color_rgb(120,255,200);
    break;
    case rEXZ:
    case rGuestRoom:
        global.roomTransitionColor = make_color_hsv(230,50,255);
    break;
    case rHubOmega:
        global.roomTransitionColor = make_color_rgb(40,80,0);
    break;
    case rKinaDiary:
        global.roomTransitionColor = make_color_rgb(80,0,40);
    break;
    case rMuseum:
        global.roomTransitionColor = make_color_rgb(0,40,80);
    break;
    case rConnection:
        global.roomTransitionColor = make_color_rgb(100,255,150);
    break;
    default:
        global.roomTransitionColor = c_black;
    break;
}
return global.roomTransitionColor;
