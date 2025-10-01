///scrSpringUpdate(index);
//Updates the code for a spring until it stops.
springTime[argument0] = min(springTime[argument0] + 1, springWait[argument0]);
springVal[argument0] = scrEaseOutElastic(springTime[argument0],springStart[argument0],springDelta[argument0],springWait[argument0]);
if springTime[argument0] == springWait[argument0]{springDone[argument0] = 1;}
