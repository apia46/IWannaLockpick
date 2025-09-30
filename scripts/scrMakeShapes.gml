var spawnX, spawnY, spawnAngle, spawnEdges, spawnNum, spawnSpeed, spawnObj, th, i, xx, yy, ddx, ddy, j, dx, dy, a;
spawnX = argument0
spawnY = argument1
spawnAngle = argument2
spawnEdges = argument3
spawnNum = argument4
spawnSpeed = argument5
spawnObj = argument6
th = degtorad(spawnAngle)
for (i = 0; i < spawnEdges; i += 1)
{
    xx[i] = cos((th + ((6.28318530717959 * i) / spawnEdges)))
    yy[i] = sin((th + ((6.28318530717959 * i) / spawnEdges)))
}
xx[spawnEdges] = xx[0]
yy[spawnEdges] = yy[0]
for (i = 0; i < spawnEdges; i += 1)
{
    ddx = (xx[(i + 1)] - xx[i])
    ddy = (yy[(i + 1)] - yy[i])
    for (j = 0; j < spawnNum; j += 1)
    {
        dx = (xx[i] + ((ddx * j) / spawnNum))
        dy = (yy[i] + ((ddy * j) / spawnNum))
        a = instance_create((spawnX + dx), (spawnY + dy), spawnObj)
        a.direction = point_direction(0, 0, dx, dy)
        a.speed = (spawnSpeed * point_distance(0, 0, dx, dy))
    }
}
