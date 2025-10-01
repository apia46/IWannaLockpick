//Play a sound here
scrPlaySoundExt(sndComboOpen,1,1,false);
//Slowstopping
scrPlayerDownStop();
//Begin to save undo state
undoBUFFER();
//Copy stuff
if iPow == 0{//Real +
    if copies > 0{copies -= 1;}
}else if iPow == 1{//Im +
    if icopies > 0{icopies -= 1;}
}else if iPow == 2{//Real -
    if copies < 0{copies += 1;}
}else{//Im -
    if icopies < 0{icopies += 1;}
}
if copies == 0 && icopies == 0{
    if global.salvageActive{
        event_user(5);
        scrSaveSalvage(global.salvageID,id);
    }else{
        event_user(0);
    }
    var playerOnTop = place_meeting(x,y-1,objPlayer);
    if playerOnTop{
        with objPlayer{
            if place_free(x,y+1){
                djump = 0;
                if recentJump{
                    vspeed *= .45;
                }
            }
        }
    }
    solid = 0; visible = 0; active = 0;
}else{
    event_user(2);
}
