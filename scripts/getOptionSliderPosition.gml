var _gap, _lerp;
_gap = (oSldEnd[argument0, argument1] - oSldStart[argument0, argument1])
_lerp = ((oSldValue[argument0, argument1] - oSldStart[argument0, argument1]) / _gap)
return round((_lerp * (oSldNotches[argument0, argument1] - 1)));
