var i;
for (i = 0; i < 256; i += 1)
{
    if (!global.pmVis[i])
        return i;
}
return -1;
