if (instance_exists(objPlayer) && ((!global.noDeath) && (!global.debugNoDeath)))
{
    if global.gameStarted
    {
        global.deathSound = scrPlaySoundExt(sndDeath, 1, 1, false)
        if (!global.muteMusic)
        {
            if (global.deathMusicMode == 1)
                audio_pause_sound(global.currentMusic)
            else if (global.deathMusicMode == 2)
            {
                with (objWorld)
                    event_user(0)
            }
        }
        with (objPlayer)
        {
            instance_create(x, y, objBloodEmitter)
            instance_destroy()
        }
        instance_create(0, 0, objGameOver)
        global.death += 1
        scrSaveGame(0)
    }
    else
    {
        with (objPlayer)
            instance_destroy()
        room_restart()
    }
}
