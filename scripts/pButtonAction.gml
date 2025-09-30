switch argument0
{
    case 0:
        global.pauseDelay = global.pauseDelayLength
        if (mode == -1)
            event_user(0)
        break
    case 1:
        mode = 4
        instance_create(0, 0, oOptionHandle)
        break
    case 2:
        if global.canExitLevel
        {
            with (objWorld)
                event_user(1)
            scrResumeMusic()
            global.gamePaused = 0
            with (objPlayer)
            {
                event_user(1)
                instance_destroy()
            }
            with (objWorld)
            {
                pauseFade = 0
                global.inLevel = 0
                t = instance_create(0, 0, oWorldTransition)
                if global.outerLevelTele
                {
                    t.telePlayer = 1
                    t.teleX = global.levelEnteredX
                    t.teleY = global.levelEnteredY
                    global.outerLevelTele = 0
                }
                t.roomTo = global.roomOuter
            }
            audio_stop_sound(pauseMus)
            instance_destroy()
        }
        break
    case 3:
        global.autosave = 0
        with (objWorld)
            event_user(1)
        global.gamePaused = 0
        scrRestartGame()
        break
    case 4:
        scrSaveGame(0)
        game_end()
        break
    case 5:
        scrErasePencilmark(room)
        instance_activate_object(oMouseover)
        with (oMouseover)
            mouseState = -1
        instance_deactivate_object(14)
        instance_activate_object(oPencilmark)
        with (oPencilmark)
        {
            tmpType = 0
            tmpSymbol = 0
            tmpNum = 0
            tmpStr = ""
            tmpCol = 0
            global.pmState = 0
        }
        instance_deactivate_object(17)
        break
    case 6:
        curJoke = irandom(19)
        tellJoke = 1
        curJokeStr = scrStringAddBreaks(joke[curJoke], fMiniID, 256)
        jokeL = string_length(curJokeStr)
        jokeStr = ""
        break
}

