///scrPlayMusic(soundid,loops)
///plays a song if it's not already playing
///argument0 - song to play (-1 plays nothing and stops anything currently playing)
///argument1 - whether or not to loop the song

var songID = argument0;
var loopSong = argument1;

if (!global.muteMusic)  //check if music is supposed to be muted
{
    if (global.currentMusicID != songID) || (global.musicPitch != global.oldPitch)  //checks if the song to play is already playing
    {
        global.currentMusicID = songID;
        
        audio_stop_sound(global.currentMusic);
        
        if (songID != -1){
            global.currentMusic = audio_play_sound(global.currentMusicID,1,loopSong);
            audio_sound_pitch(global.currentMusic,global.musicPitch);
        }
        audio_sound_gain(global.currentMusic,global.musicVol*global.musicLevel/100,0);
    }
}
