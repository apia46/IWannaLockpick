//Draws the name and description of both the tab and the current selected button/slider.
var _tCol = colOut;
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_color(_tCol);

//Tab name
draw_set_font(fLevelName);
draw_text(400,96,tabName[tab]);

//Tab desc
draw_set_font(fPresents);
draw_text(400,144,tabDesc[tab]);

//Button/slider
draw_set_font(fPresents);
if curButton != -1{
    var _name = oButName[tab,curButton];
    var _desc = oButDesc[tab,curButton];
    
    draw_text(400,520,_name);
    draw_set_font(fMiniLevel);
    draw_text(400,540,_desc);
    
}else if curSlider != -1{
    var _name = oSldName[tab,curSlider];
    var _desc = oSldDesc[tab,curSlider];
    
    draw_text(400,520,_name);
    draw_set_font(fMiniLevel);
    draw_text(400,540,_desc);
    
}else{
    exit;
}

draw_set_color(c_white);
