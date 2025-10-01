///getOptionSliderValue(tabID,ID);
//Gets the value of a slider based on slider position and input range.
var _lerp = oSldPos[argument0,argument1] / (oSldNotches[argument0,argument1]-1);
return round(lerp(oSldStart[argument0,argument1],oSldEnd[argument0,argument1],_lerp));
