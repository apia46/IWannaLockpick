var songID, loopSong;
songID = argument0
loopSong = argument1
if (!global.muteMusic)
{
    if ((global.currentMusicID != songID) || (global.musicPitch != global.oldPitch))
    {
        global.currentMusicID = songID
        audio_stop_sound(global.currentMusic)
        if (songID != -1)
        {
            global.currentMusic = audio_play_sound(global.currentMusicID, 1, loopSong)
            audio_sound_pitch(global.currentMusic, global.musicPitch)
        }
        audio_sound_gain(global.currentMusic, ((global.musicVol * global.musicLevel) / 100), 0)
    }
}
