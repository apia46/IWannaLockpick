global.windowXPrev = window_get_x()
global.windowYPrev = window_get_y()
global.windowWidthPrev = window_get_width()
global.windowHeightPrev = window_get_height()
display_reset(0, global.vsyncMode)
with (objWorld)
    alarm[1] = 1
