var i;
scrSetGlobalOptions()
global.tempClear = 0
global.savenum = 1
global.difficulty = 0
global.death = 0
global.time = 0
global.timeMicro = 0
global.saveRoom = ""
global.savePlayerX = 0
global.savePlayerY = 0
global.grav = 1
global.saveGrav = 1
global.salvageActive = 0
global.salvageID = -1
global.inCutscene = 0
global.roomNum = 0
global.roomOuter = 17
global.inLevel = 0
global.outerLevelTele = 0
global.levelEnteredX = 400
global.levelEnteredY = 304
global.roomTransitionColor = make_color_rgb(32, 32, 96)
global.complexMode = 0
for (i = 0; i < 16; i += 1)
{
    global.key[i] = 0
    global.ikey[i] = 0
    global.star[i] = 0
}
for (i = 0; i < 250; i += 1)
    global.roomClear[i] = 0
for (i = 0; i < 15; i += 1)
{
    global.areaClear[i] = 0
    global.areaComplete[i] = 0
}
for (i = 0; i < 3; i += 1)
    global.object[i] = 0
global.stoneKeys = 0
scrInitializeGlobals2()
global.gameClear = 0
global.saveGameClear = 0
for (i = 99; i >= 0; i--)
    global.trigger[i] = 0
global.gameStarted = 0
global.noPause = 0
global.autosave = 0
global.noDeath = 0
global.infJump = 0
global.gamePaused = 0
global.pauseSurf = -1
global.pauseDelay = 0
global.currentMusicID = -1
global.currentMusic = -1
global.deathSound = -1
global.gameOverMusic = -1
global.musicFading = 0
global.currentGain = 0
global.musicPitch = 1
global.oldPitch = 1
global.menuSelectPrev[0] = 0
global.menuSelectPrev[1] = 0
global.windowWidth = surface_get_width(application_surface)
global.windowHeight = surface_get_height(application_surface)
global.windowXPrev = 0
global.windowYPrev = 0
global.windowWidthPrev = 0
global.windowHeightPrev = 0
display_set_gui_size(surface_get_width(application_surface), surface_get_height(application_surface))
global.controllerMode = 0
global.controllerDelay = -1
randomize()
