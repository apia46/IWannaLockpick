var metRequirement, i;
if (!instance_exists(objPlayer))
    exit
metRequirement = 1
for (i = 0; i < lockCount; i += 1)
{
    if (!scrCanOpenFeed(lock[i, 0], lock[i, 1], lock[i, 2], lock[i, 3], 0))
        metRequirement = 0
}
if metRequirement
    solid = 0
else if (!solid)
{
    if (!place_meeting(x, y, objPlayer))
        solid = 1
}
