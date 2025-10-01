///mouse_in_sprite_ext(spriteID,spriteX,spriteY,mouseX,mouseY);
if argument0 == -1{return false;}//undefined sprite cannot be hovered over
if argument3 >= (argument1-sprite_get_xoffset(argument0)){
    if argument4 >= (argument2-sprite_get_yoffset(argument0)){
        if argument3 < (argument1-sprite_get_xoffset(argument0)+sprite_get_width(argument0)){
            if argument4 < (argument2-sprite_get_yoffset(argument0)+sprite_get_height(argument0)){
                return true;
            }
        }
    }
}
return false;
