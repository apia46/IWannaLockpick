var playerOnTop;
scrPlaySoundExt(sndComboOpen, 1, 1, false)
scrPlayerDownStop()
undoBUFFER()
if (iPow == 0)
{
    if (copies > 0)
        copies -= 1
}
else if (iPow == 1)
{
    if (icopies > 0)
        icopies -= 1
}
else if (iPow == 2)
{
    if (copies < 0)
        copies += 1
}
else if (icopies < 0)
    icopies += 1
if ((copies == 0) && (icopies == 0))
{
    if global.salvageActive
    {
        event_user(5)
        scrSaveSalvage(global.salvageID, id)
    }
    else
        event_user(0)
    playerOnTop = place_meeting(x, (y - 1), objPlayer)
    if playerOnTop
    {
        with (objPlayer)
        {
            if place_free(x, (y + 1))
            {
                djump = 0
                if recentJump
                    vspeed *= 0.45
            }
        }
    }
    solid = 0
    visible = 0
    active = 0
}
else
    event_user(2)
