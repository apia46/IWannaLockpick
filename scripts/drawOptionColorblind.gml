//drawOptionColorblind();
//Draws options UI elements unique to the Colorblind tab.
//This includes: 10 color key/door display, light/main/dark tone boxes, and extra text.

//10 color key/door display
var _x = 440;
var _y = 160;
for(var ix = 0; ix < 10; ix += 1){
    var _dx = _x+32*ix;
    var _dy = _y+16;
    var _c = colorShow[ix];
    //Key
    draw_sprite(sprKey,0,_dx,_dy);
    draw_sprite_ext(sprKey,1,_dx,_dy,1,1,0,global.mainTone[_c],1);
    //Door
    _dy += 32;
    draw_sprite(sprDoor,0,_dx,_dy);
    draw_sprite_ext(sprDoor,1,_dx,_dy,1,1,0,global.highTone[_c],1);
    draw_sprite_ext(sprDoor,2,_dx,_dy,1,1,0,global.mainTone[_c],1);
    draw_sprite_ext(sprDoor,3,_dx,_dy,1,1,0,global.darkTone[_c],1);
}

var _baseX = 32; var _baseY = 160;

var _tCol = colOut;
draw_set_font(fMiniLevel);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(_tCol);

//Current color name
//draw_text(_baseX+48+40,_baseY-4,"Current color: '"+colorName[curColorEdit]+"'");
draw_text(320+32,_baseY+96,"Editing '"+colorName[curColorEdit]+"'");
//RGB components of every color
draw_text(48,_baseY+64,string(cHighR));
draw_text(48,_baseY+64+32,string(cHighG));
draw_text(48,_baseY+64+64,string(cHighB));
draw_text(48,_baseY+160,string(cMainR));
draw_text(48,_baseY+160+32,string(cMainG));
draw_text(48,_baseY+160+64,string(cMainB));
draw_text(48,_baseY+256,string(cDarkR));
draw_text(48,_baseY+256+32,string(cDarkG));
draw_text(48,_baseY+256+64,string(cDarkB));
//Colored squares
/*draw_set_color(c_black);
draw_rectangle(320-1,_baseY+64-1,320+64,_baseY+64+64,0);
draw_rectangle(320-1,_baseY+64+96-1,320+64,_baseY+64+64+96,0);
draw_rectangle(320-1,_baseY+64+192-1,320+64,_baseY+64+64+192,0);
draw_set_color(make_color_rgb(cHighR,cHighG,cHighB));
draw_rectangle(320,_baseY+64,320+63,_baseY+64+63,0);
draw_set_color(make_color_rgb(cMainR,cMainG,cMainB));
draw_rectangle(320,_baseY+64+96,320+63,_baseY+64+63+96,0);
draw_set_color(make_color_rgb(cDarkR,cDarkG,cDarkB));
draw_rectangle(320,_baseY+64+192,320+63,_baseY+64+63+192,0);*/
draw_set_color(c_white);
//Big key/door
//var _dx = 600 - 64 - 16; var _dy = _baseY + 96;
var _dx = 320; var _dy = _baseY + 96 + 32;
var _c = colorShow[curColorEdit];
//Key
draw_sprite_ext(sprKey,0,_dx,_dy,2,2,0,c_white,1);
draw_sprite_ext(sprKey,1,_dx,_dy,2,2,0,global.mainTone[_c],1);
//Door
//_dx = 600 + 16;
_dy += 80;
draw_sprite_ext(sprDoor,0,_dx,_dy,2,2,0,c_white,1);
draw_sprite_ext(sprDoor,1,_dx,_dy,2,2,0,global.highTone[_c],1);
draw_sprite_ext(sprDoor,2,_dx,_dy,2,2,0,global.mainTone[_c],1);
draw_sprite_ext(sprDoor,3,_dx,_dy,2,2,0,global.darkTone[_c],1);
