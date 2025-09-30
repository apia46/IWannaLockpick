var easeTime, easeStart, easeDelta, easeTimespan, easeS, easeP, easeA;
easeTime = (argument0 / argument3)
easeStart = argument1
easeDelta = argument2
easeTimespan = 1
easeS = 1.70158
easeP = 0
easeA = easeDelta
if (easeTime == 0)
    return easeStart;
if ((easeTime / easeTimespan) == 1)
    return (easeStart + easeDelta);
if (!easeP)
    easeP = (easeTimespan * 0.3)
if (easeA < abs(easeDelta))
{
    easeA = easeDelta
    easeS = (easeP / 4)
}
else
    easeS = ((easeP / 6.28318530717959) * arcsin((easeDelta / easeA)))
return ((((easeA * power(2, (-10 * easeTime))) * sin(((((easeTime * easeTimespan) - easeS) * 6.28318530717959) / easeP))) + easeDelta) + easeStart);
