var _snd, _pitch;
if (numSamples == 0)
    exit
_snd = vSample[irandom((numSamples - 1))]
_pitch = (vPitch[irandom((numPitches - 1))] + random_range((-vVariance), vVariance))
scrPlaySoundExt(_snd, 1, _pitch, false)
