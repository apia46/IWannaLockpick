///drawTextOutline(x,y,string,border,diagonal); false = 4 parts, true = 8 parts
draw_text(argument0-argument3,argument1,argument2);
draw_text(argument0+argument3,argument1,argument2);
draw_text(argument0,argument1-argument3,argument2);
draw_text(argument0,argument1+argument3,argument2);
if argument4{
    draw_text(argument0-argument3,argument1-argument3,argument2);
    draw_text(argument0-argument3,argument1+argument3,argument2);
    draw_text(argument0+argument3,argument1-argument3,argument2);
    draw_text(argument0+argument3,argument1+argument3,argument2);
}
