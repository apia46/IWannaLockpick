///pauses any music currently playing

if global.currentMusic != -1{
    audio_resume_sound(global.currentMusic);
    audio_sound_gain(global.currentMusic,global.musicLevel/100,0);
}
if !audio_is_playing(global.currentMusic) && !global.muteMusic && !global.inCutscene{
    scrGetMusic();
}

with oBGW7{
    if curSong != -1{
        audio_resume_sound(curSong);
        if !inTransition{
            audio_sound_gain(curSong,global.musicLevel/100,0);
        }
    }
}
