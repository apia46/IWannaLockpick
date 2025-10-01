///optionSliderMoveTo(tabID,ID,type,value);
//Moves a slider to a new position with several methods, and returns its new value.
///TYPES:
//0: Move To Specific Notch
//1: Add to Notch Position
//2: Get Notch Position from Mouse Position
switch argument2{
    case 0:
        oSldPos[argument0,argument1] = argument3;
    break;
    case 1:
        oSldPos[argument0,argument1] += argument3;
    break;
    case 2:
        var _mousegap = getMouseMarkX() - oSldX[argument0,argument1];
        var _mouseratio = _mousegap / sliderWidth;//Width is expected to be 100
        oSldPos[argument0,argument1] = round(_mouseratio * (oSldNotches[argument0,argument1]-1));
    break;
}
//Clamping
oSldPos[argument0,argument1] = clamp(round(oSldPos[argument0,argument1]),0,oSldNotches[argument0,argument1]-1);

//Value determination
var _val = getOptionSliderValue(argument0,argument1);
oSldValue[argument0,argument1] = _val;

//Action
optionSliderAction(argument0,argument1);
return _val;
