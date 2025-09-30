var roomCaption, t, t_hrs, t_min, t_sec;
roomCaption = global.roomCaptionDef
if global.gameStarted
{
    if (!global.hideTime)
    {
        roomCaption += " -"
        roomCaption += " Time: "
        t = floor(global.time)
        t_hrs = (t div 3600)
        t %= 3600
        t_min = (t div 60)
        t %= 60
        t_sec = t
        if (t_hrs != 0)
            roomCaption += (string(t_hrs) + "h ")
        if (t_min != 0)
            roomCaption += (string(t_min) + "m ")
        roomCaption += (string(t_sec) + "s")
    }
}
if (roomCaption != global.roomCaptionLast)
    window_set_caption(roomCaption)
global.roomCaptionLast = roomCaption
