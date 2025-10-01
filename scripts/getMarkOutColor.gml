///getMarkOutColor(color);
var __c = argument0;
var __r = 2*color_get_red(__c);
var __g = 4*color_get_green(__c);
var __b = color_get_blue(__c);
if __r + __g + __b > 500{return c_black;}else{return c_white;}
