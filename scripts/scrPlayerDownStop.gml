if scrButtonCheck(global.walkButton)
{
    with (objPlayer)
    {
        if downStop
        {
            if (sign(hspeed) >= 1)
            {
                hspeed = 0
                downTime = 10
                downDir = 1
            }
            else if (sign(hspeed) <= -1)
            {
                hspeed = 0
                downTime = 10
                downDir = -1
            }
        }
    }
}
