//Quick abort
/*if global.complexMode == 0 && copies == 0{//Don't draw the frames if there are no real copies
    scrComboDrawIm();//Funnily enough, this particular script is compatible with simple doors!
    exit;
}
if global.complexMode == 1 && icopies == 0{//Don't draw the frames if there are no imaginary copies
    scrComboDrawIm();
    exit;
}*/

//Determines image index for door frame
var dIndex = 0;
var tempPow = 0;
tempPow = 2;//Negative
//tempPow = (tempPow + iPow) mod 4;
if tempPow <= 1{dIndex = 0;}else{dIndex = 5;}//+ and +i are positive, - and -i are negative
var fakeCount = 0;
if count != 0{fakeCount = abs(count);}
if icount != 0{fakeCount = abs(icount);}
var fakeString = string(fakeCount);

//Door Frame
//Edges
if w > 1{
    draw_sprite_part_ext(sprDoorBig,dIndex,16,0,16,16,x+16,y,(w-1)*2,1,c_white,1);
    draw_sprite_part_ext(sprDoorBig,dIndex,16,48,16,16,x+16,y+32*h-16,(w-1)*2,1,c_white,1);
}
if h > 1{
    draw_sprite_part_ext(sprDoorBig,dIndex,0,16,16,16,x,y+16,1,(h-1)*2,c_white,1);
    draw_sprite_part_ext(sprDoorBig,dIndex,48,16,16,16,x+32*w-16,y+16,1,(h-1)*2,c_white,1);
}
//Corners
draw_sprite_part_ext(sprDoorBig,dIndex,0,0,16,16,x,y,1,1,c_white,1);
draw_sprite_part_ext(sprDoorBig,dIndex,48,0,16,16,x+32*w-16,y,1,1,c_white,1);
draw_sprite_part_ext(sprDoorBig,dIndex,0,48,16,16,x,y+32*h-16,1,1,c_white,1);
draw_sprite_part_ext(sprDoorBig,dIndex,48,48,16,16,x+32*w-16,y+32*h-16,1,1,c_white,1);
