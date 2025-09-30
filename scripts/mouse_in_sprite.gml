if (argument0 == -1)
    return 0;
if (mouse_x >= (argument1 - sprite_get_xoffset(argument0)))
{
    if (mouse_y >= (argument2 - sprite_get_yoffset(argument0)))
    {
        if (mouse_x < ((argument1 - sprite_get_xoffset(argument0)) + sprite_get_width(argument0)))
        {
            if (mouse_y < ((argument2 - sprite_get_yoffset(argument0)) + sprite_get_height(argument0)))
                return 1;
        }
    }
}
return 0;
