//Plays a sound based on the voice palette attributes.
if numSamples == 0{exit;}
var _snd = vSample[irandom(numSamples-1)];
var _pitch = vPitch[irandom(numPitches-1)] + random_range(-vVariance,vVariance);
scrPlaySoundExt(_snd,1,_pitch,0);
