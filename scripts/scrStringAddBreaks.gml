///scrStringAddBreaks(str,font,width);
//Formats a string to replace spaces with linebreaks.
//The linebreaks will be placed where the next word would have exceeded the width limit.
//Why GameMaker doesn't have a builtin for this? Hell if I know.

var __s = argument0;
draw_set_font(argument1);
draw_set_halign(fa_left);
var __w = argument2;
var __slength = string_length(__s);

var __posline = 1;//Position of start of current line
var __poscheck = 0;//Position of latest "checked character"
var __posspace = 1;//Position of most recent space character
var __linestr = "";
var __linechars = 0;

var __tmp = "";

while (__poscheck < __slength){
    __poscheck += 1;
    __linechars += 1;
    __linestr = string_copy(__s,__posline,__linechars);
    if string_char_at(__s,__poscheck) == " "{__posspace = __poscheck;}
    if string_width(__linestr) > __w{//replace most recent space with a linebreak
        __tmp = string_copy(__s,1,__posspace-1)+"#";
        if __posspace < __slength{__tmp += string_copy(__s,__posspace+1,__slength-__posspace);}
        __s = __tmp;
        __posline = __posspace+1;
        __linechars = __poscheck-__posspace;
    }
}
return __s;
