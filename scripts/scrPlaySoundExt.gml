///scrPlaySoundExt(sound,gain,pitch,loop);
__snd = audio_play_sound(argument0,0,argument3);
audio_sound_gain(__snd,argument1*(global.soundLevel/100),0);
audio_sound_pitch(__snd,argument2);
return __snd;
