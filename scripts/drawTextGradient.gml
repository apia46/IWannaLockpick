///drawTextGradient(textX,textY,string,colTop,colBottom,outlineThickness);
if argument5 == 0{//1-thick outline
    draw_text_color(argument0-1,argument1,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
    draw_text_color(argument0+1,argument1,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
    draw_text_color(argument0,argument1-1,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
    draw_text_color(argument0,argument1+1,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
}
if argument5 == 1{//1-thick outline + corners
    draw_text_color(argument0-1,argument1-1,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
    draw_text_color(argument0-1,argument1+1,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
    draw_text_color(argument0+1,argument1-1,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
    draw_text_color(argument0+1,argument1+1,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
    draw_text_color(argument0-1,argument1,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
    draw_text_color(argument0+1,argument1,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
    draw_text_color(argument0,argument1-1,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
    draw_text_color(argument0,argument1+1,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
}
if argument5 == 2{//2-thick outline
    draw_text_color(argument0-1,argument1-1,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
    draw_text_color(argument0-2,argument1,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
    draw_text_color(argument0-1,argument1+1,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
    draw_text_color(argument0,argument1-2,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
    draw_text_color(argument0+1,argument1-1,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
    draw_text_color(argument0+2,argument1,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
    draw_text_color(argument0+1,argument1+1,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
    draw_text_color(argument0,argument1+2,argument2,c_black,c_black,c_black,c_black,draw_get_alpha());
}
draw_text_color(argument0,argument1,argument2,argument3,argument3,argument4,argument4,draw_get_alpha());
