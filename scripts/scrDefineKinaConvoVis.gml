var i, _ul;
for (i = 0; i < numConvos; i += 1)
    convoVis[i] = 0
convoVis[0] = 1
convoVis[1] = 1
convoVis[2] = 1
if global.areaClear[0]
    convoVis[3] = 1
if global.areaClear[1]
    convoVis[4] = 1
if global.areaClear[2]
    convoVis[5] = 1
if global.areaClear[3]
    convoVis[6] = 1
if global.areaClear[4]
    convoVis[7] = 1
if global.areaClear[5]
    convoVis[8] = 1
if global.areaReached[7]
    convoVis[9] = 1
if global.convoUnlocked[0]
    convoVis[10] = 1
if global.areaClear[6]
    convoVis[11] = 1
if global.areaClear[7]
    convoVis[12] = 1
if global.areaClear[8]
    convoVis[13] = 1
if global.areaClear[9]
    convoVis[14] = 1
if global.convoUnlocked[1]
    convoVis[15] = 1
if (global.convoUnlocked[2] || global.roomClear[134])
    convoVis[16] = 1
if scrSalvageExists(0)
    convoVis[17] = 1
if global.areaReached[15]
    convoVis[18] = 1
if global.areaReached[16]
    convoVis[19] = 1
if global.areaReached[17]
    convoVis[20] = 1
if global.areaReached[18]
    convoVis[21] = 1
if global.areaReached[19]
    convoVis[22] = 1
if global.areaClear[11]
    convoVis[23] = 1
if global.convoUnlocked[3]
    convoVis[24] = 1
if global.kinaHeart
    convoVis[25] = 1
if global.areaClear[12]
    convoVis[26] = 1
if global.areaReached[23]
    convoVis[22] = 1
if global.areaClear[13]
    convoVis[28] = 1
_ul = 1
for (i = 60; i <= 79; i += 1)
{
    if (!global.convoRead[i])
        _ul = 0
}
if _ul
    convoVis[29] = 1
