var _mousegap, _mouseratio, _val;
switch argument2
{
    case 0:
        oSldPos[argument0, argument1] = argument3
        break
    case 1:
        oSldPos[argument0, argument1] += argument3
        break
    case 2:
        _mousegap = (getMouseMarkX() - oSldX[argument0, argument1])
        _mouseratio = (_mousegap / sliderWidth)
        oSldPos[argument0, argument1] = round((_mouseratio * (oSldNotches[argument0, argument1] - 1)))
        break
}

oSldPos[argument0, argument1] = clamp(round(oSldPos[argument0, argument1]), 0, (oSldNotches[argument0, argument1] - 1))
_val = getOptionSliderValue(argument0, argument1)
oSldValue[argument0, argument1] = _val
optionSliderAction(argument0, argument1)
return _val;
