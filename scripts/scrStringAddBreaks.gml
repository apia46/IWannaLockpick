var __s, __w, __slength, __posline, __poscheck, __posspace, __linestr, __linechars, __tmp;
__s = argument0
draw_set_font(argument1)
draw_set_halign(fa_left)
__w = argument2
__slength = string_length(__s)
__posline = 1
__poscheck = 0
__posspace = 1
__linestr = ""
__linechars = 0
__tmp = ""
while (__poscheck < __slength)
{
    __poscheck += 1
    __linechars += 1
    __linestr = string_copy(__s, __posline, __linechars)
    if (string_char_at(__s, __poscheck) == " ")
        __posspace = __poscheck
    if (string_width(__linestr) > __w)
    {
        __tmp = (string_copy(__s, 1, (__posspace - 1)) + "#")
        if (__posspace < __slength)
            __tmp += string_copy(__s, (__posspace + 1), (__slength - __posspace))
        __s = __tmp
        __posline = (__posspace + 1)
        __linechars = (__poscheck - __posspace)
    }
}
return __s;
