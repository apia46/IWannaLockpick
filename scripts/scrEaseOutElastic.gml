///scrEaseOutElastic(time,start,delta,timespan);
var easeTime;
easeTime = argument0/argument3;
var easeStart;
easeStart = argument1
var easeDelta;
easeDelta = argument2
var easeTimespan;
easeTimespan = 1

//Credits to jQuery Easing for the code
//var easeS=1.70158

var easeS;
easeS=1.70158;
var easeP;
easeP=0;
var easeA;
easeA=easeDelta;
if (easeTime==0) return easeStart;  if ((easeTime/easeTimespan)==1) return easeStart+easeDelta;  if (!easeP) easeP=easeTimespan*.3;
if (easeA < abs(easeDelta)) { easeA=easeDelta; var easeS; easeS=easeP/4; }
else {var easeS; easeS = easeP/(2*pi) * arcsin(easeDelta/easeA)};
return easeA*power(2,-10*easeTime) * sin( (easeTime*easeTimespan-easeS)*(2*pi)/easeP ) + easeDelta + easeStart;
