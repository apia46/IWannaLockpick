global.currentMusicID = -1
audio_stop_sound(global.currentMusic)
with (oBGW7)
{
    if (curSong != -1)
    {
        audio_stop_sound(curSong)
        curSong = -1
    }
}
