global.muteMusic = (!global.muteMusic)
if (!global.muteMusic)
{
    if (instance_exists(objPlayer) || (!global.gameStarted))
    {
        if (!instance_exists(objPlayMusic))
            scrGetMusic()
        else
        {
            with (objPlayMusic)
            {
                if (BGM != -2)
                    scrPlayMusic(BGM, true)
            }
        }
    }
}
else
{
    scrStopMusic()
    audio_stop_sound(global.gameOverMusic)
}
