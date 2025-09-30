var _oldTitle, roomSong;
global.oldPitch = global.musicPitch
global.musicPitch = 1
_oldTitle = global.musicTitle
global.musicTitle = ""
global.musicVol = 1
switch room
{
    case rTitle:
    case 3:
    case 4:
    case 5:
    case 6:
        roomSong = -1
        break
    case 17:
        roomSong = musLeaves
        global.musicTitle = "LCDDem - Leaves"
        break
    case 19:
        roomSong = musBackside
        global.musicTitle = "ZWEI 2 - Floating Island 'Ilvard'"
        global.musicVol = 0.95
        break
    case 20:
    case 340:
        roomSong = musWind
        global.musicTitle = "LCDDem - BGM047"
        break
    case 333:
        roomSong = musGuestRoom
        global.musicTitle = "Hazelstorm - Guest Room"
        break
    case 337:
    case 21:
        roomSong = musFinale
        global.musicTitle = "Lemanold - The Castle in the Picture"
        break
    case 22:
        roomSong = musGreatBeyond
        global.musicTitle = "LCDDem - Lily Gardens"
        break
    case 23:
        roomSong = musMonolith
        global.musicTitle = "Onefin + Miyolophone - Ivory Dance"
        global.musicVol = 0.9
        break
    case 339:
        roomSong = musEnding
        global.musicTitle = "Senses-Circuit - On a Quiet Night"
        break
    case 24:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
        roomSong = musReedz
        global.musicTitle = "OcularNebula - Reedz"
        break
    case 45:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 62:
    case 65:
    case 63:
    case 61:
    case 66:
    case 67:
    case 68:
    case 69:
        roomSong = musSwimming
        global.musicTitle = "Dustforce - Swimming while it Rains"
        global.musicVol = 0.85
        break
    case 70:
    case 71:
    case 72:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 83:
    case 84:
    case 85:
    case 86:
    case 82:
    case 88:
        roomSong = musGeller
        global.musicTitle = "Reed - Urea Geller"
        global.musicVol = 0.9
        break
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 112:
    case 111:
        roomSong = musKlonoa
        global.musicTitle = "Klonoa 2 - Moonlight Museum"
        global.musicVol = 0.95
        break
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
    case 121:
    case 122:
    case 123:
        roomSong = musDark
        global.musicTitle = "Positively Dark - Awakening"
        global.musicVol = 0.9
        break
    case 125:
    case 127:
    case 128:
    case 129:
    case 130:
    case 131:
    case 132:
    case 133:
    case 134:
    case 136:
    case 142:
    case 138:
    case 139:
    case 137:
        roomSong = musDolls
        global.musicTitle = "Dolls in Pseudo Paradise - Forest of Dolls"
        global.musicVol = 0.9
        break
    case 143:
    case 145:
    case 146:
    case 147:
    case 149:
    case 150:
    case 151:
    case 152:
    case 153:
    case 154:
    case 155:
    case 156:
    case 157:
    case 158:
    case 159:
    case 160:
        roomSong = -2
        global.musicTitle = ""
        break
    case 161:
    case 163:
    case 164:
    case 165:
    case 166:
    case 167:
    case 168:
    case 169:
    case 170:
    case 171:
        roomSong = musEBF
        global.musicTitle = "Phyrnna - Journey to the East"
        global.musicVol = 0.95
        break
    case 172:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 186:
        roomSong = musHarvest
        global.musicTitle = "Kuhu - Harvest Swing"
        global.musicVol = 0.9
        break
    case 187:
    case 189:
    case 190:
    case 191:
    case 192:
    case 193:
    case 195:
    case 196:
    case 197:
    case 198:
    case 199:
    case 200:
    case 201:
    case 202:
        roomSong = musC
        global.musicTitle = "2gou - C"
        global.musicVol = 0.9
        break
    case 203:
    case 205:
    case 207:
    case 209:
    case 211:
    case 212:
    case 214:
    case 216:
    case 218:
    case 220:
    case 221:
    case 223:
    case 224:
    case 226:
        roomSong = musSkyTower
        global.musicTitle = "Pokemon Mystery Dungeon Blue Rescue Team - Sky Tower"
        global.musicVol = 0.85
        break
    case 227:
    case 228:
        roomSong = musWind
        global.musicTitle = "LCDDem - BGM047"
        break
    case 229:
    case 231:
    case 232:
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
        roomSong = musAutumn
        global.musicTitle = "Zwei!! The Arges Adventure - Caiaphas Woods"
        global.musicVol = 0.95
        break
    case 241:
    case 243:
    case 244:
    case 245:
    case 246:
    case 248:
    case 249:
    case 250:
        roomSong = musWinter
        global.musicTitle = "Kirby's Return to Dreamland - Aurora Area"
        global.musicVol = 0.9
        break
    case 252:
    case 253:
    case 254:
    case 255:
    case 256:
    case 257:
    case 258:
    case 259:
        roomSong = musSummer
        global.musicTitle = "OcularNebula - Wistful Wish"
        global.musicVol = 0.95
        break
    case 260:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
        roomSong = musSpring
        global.musicTitle = "Virt - Nightfall over the City"
        global.musicVol = 1
        break
    case 332:
        roomSong = musMystery
        global.musicTitle = "LCDDem - ???"
        global.musicVol = 0.95
        break
    case 267:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
        roomSong = musLab
        global.musicTitle = "Haru - March Handyman"
        global.musicVol = 0.9
        break
    case 276:
        roomSong = musLab2
        global.musicTitle = "Hazelstorm - Secret Lab"
        break
    case 277:
    case 279:
    case 280:
    case 281:
    case 282:
    case 283:
    case 284:
    case 285:
    case 286:
    case 287:
    case 288:
    case 289:
    case 290:
    case 291:
    case 292:
    case 293:
        roomSong = musCafe
        global.musicTitle = "Cafe de Touhou 8 - Cafe des Desirs"
        global.musicVol = 0.9
        break
    case 298:
        roomSong = -1
        break
    case 299:
        roomSong = musHanano
        global.musicTitle = "Hanano Puzzle 2 - Clouds"
        break
    case 300:
    case 302:
    case 303:
    case 304:
    case 305:
    case 306:
    case 307:
    case 308:
    case 309:
        roomSong = musEX
        global.musicTitle = "Yotsuba Kagerou - Tatsumairi in the Rain"
        global.musicVol = 0.95
        break
    case 310:
        roomSong = musEpilogue
        global.musicTitle = "Hazelstorm - Bridge to New Memories"
        break
    case 311:
    case 313:
    case 315:
    case 316:
    case 317:
    case 331:
    case 328:
    case 327:
    case 330:
    case 326:
    case 325:
    case 324:
    case 323:
    case 322:
    case 321:
    case 320:
    case 319:
    case 318:
    case 314:
    case 295:
    case 296:
        roomSong = musHorizon
        global.musicTitle = "Hazelstorm - Lockpick Horizon"
        break
    case 334:
        roomSong = musEpilogue
        global.musicPitch = 0.5
        global.musicTitle = "Hazelstorm - Bridge to New Memories"
        break
    case 335:
    case 338:
        roomSong = musGuestRoom
        global.musicPitch = 0.5
        global.musicTitle = "Hazelstorm - Guest Room"
        break
    case 336:
        roomSong = musConnection
        global.musicTitle = "LCDDem - Leaves"
        break
    case 341:
        roomSong = -2
        break
    case 2:
        roomSong = -1
        break
    default:
        roomSong = -1
        break
}

if ((global.musicTitle != "") && (global.musicTitle != _oldTitle))
{
    with (oMusicCredit)
        instance_destroy()
    instance_create(0, 0, oMusicCredit)
}
if (roomSong != -2)
    scrPlayMusic(roomSong, true)
