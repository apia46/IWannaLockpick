ini_open("config.ini")
global.muteMusic = ini_read_real("Settings", "Mute_music", 0)
global.volumeLevel = clamp(floor(ini_read_real("Settings", "Volume_level", 100)), 0, 100)
audio_master_gain((global.volumeLevel / 100))
global.fullscreenMode = ini_read_real("Settings", "Fullscreen_mode", 0)
window_set_fullscreen(global.fullscreenMode)
global.smoothingMode = ini_read_real("Settings", "Smoothing_mode", 0)
global.vsyncMode = ini_read_real("Settings", "Vsync_mode", 0)
if global.vsyncMode
    scrSetVsync()
global.leftButton[0] = ini_read_real("Controls", "Left", 37)
global.rightButton[0] = ini_read_real("Controls", "Right", 39)
global.upButton[0] = ini_read_real("Controls", "Up", 38)
global.downButton[0] = ini_read_real("Controls", "Down", 40)
global.jumpButton[0] = ini_read_real("Controls", "Jump", 16)
global.shootButton[0] = ini_read_real("Controls", "Undo", 90)
global.restartButton[0] = ini_read_real("Controls", "Restart", 82)
global.skipButton[0] = ini_read_real("Controls", "Skip", 83)
global.pauseButton[0] = ini_read_real("Controls", "Pause", 27)
global.camButton[0] = ini_read_real("Controls", "Camera", 67)
global.masButton[0] = ini_read_real("Controls", "Action", 88)
global.menuLeftButton[0] = 37
global.menuRightButton[0] = 39
global.menuUpButton[0] = 38
global.menuDownButton[0] = 40
global.menuAcceptButton[0] = 16
global.menuBackButton[0] = 90
global.menuOptionsButton[0] = 13
if global.controllerEnabled
{
    global.controllerIndex = ini_read_real("Controller", "Index", -1)
    global.leftButton[1] = ini_read_real("Controller", "Left", 32783)
    global.rightButton[1] = ini_read_real("Controller", "Right", 32784)
    global.upButton[1] = ini_read_real("Controller", "Up", 32781)
    global.downButton[1] = ini_read_real("Controller", "Down", 32782)
    global.jumpButton[1] = ini_read_real("Controller", "Jump", 32769)
    global.shootButton[1] = ini_read_real("Controller", "Undo", 32771)
    global.restartButton[1] = ini_read_real("Controller", "Restart", 32772)
    global.skipButton[1] = ini_read_real("Controller", "Skip", 32770)
    global.pauseButton[1] = ini_read_real("Controller", "Pause", 32778)
    global.camButton[1] = ini_read_real("Controller", "Camera", 32776)
    global.masButton[1] = ini_read_real("Controller", "Action", 32770)
}
global.menuLeftButton[1] = 32783
global.menuRightButton[1] = 32784
global.menuUpButton[1] = 32781
global.menuDownButton[1] = 32782
global.menuAcceptButton[1] = 32769
global.menuBackButton[1] = 32770
global.menuOptionsButton[1] = 32777
ini_close()
scrSaveConfig()
