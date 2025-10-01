///pauses any music currently playing

if global.currentMusic != -1{
    audio_pause_sound(global.currentMusic);
}

with oBGW7{
    if curSong != -1{
        audio_pause_sound(curSong);
    }
}
