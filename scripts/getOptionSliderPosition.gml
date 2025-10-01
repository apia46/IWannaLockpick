///getOptionSliderPosition(tabID,ID);
//Gets the position of a slider based on its true value and input range.
var _gap = oSldEnd[argument0,argument1]-oSldStart[argument0,argument1];
var _lerp = (oSldValue[argument0,argument1]-oSldStart[argument0,argument1])/_gap;
return round(_lerp*(oSldNotches[argument0,argument1]-1));
