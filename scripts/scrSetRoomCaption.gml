///sets the room caption

var roomCaption = global.roomCaptionDef;

if (global.gameStarted)
{
    if !global.hideTime{
    roomCaption += " -"
    //roomCaption += " Deaths: " + string(global.death);
    roomCaption += " Time: ";
    
    var t = floor(global.time);
    var t_hrs = (t div 3600);
    t = t mod 3600;
    var t_min = (t div 60);
    t = t mod 60;
    var t_sec = t;
    
    if t_hrs != 0{
        roomCaption += (string(t_hrs) + "h ");
    }
    if t_min != 0{
        roomCaption += (string(t_min) + "m ");
    }
    roomCaption += (string(t_sec) + "s");
    }
    /*roomCaption += string(t div 3600) + ":";
    t = t mod 3600;
    roomCaption += string(t div 600);
    t = t mod 600;
    roomCaption += string(t div 60) + ":";
    t = t mod 60;
    roomCaption += string(t div 10);
    t = t mod 10;
    roomCaption += string(t);*/
}

if (roomCaption != global.roomCaptionLast)  //only update the caption when it changes
    window_set_caption(roomCaption);

global.roomCaptionLast = roomCaption;
