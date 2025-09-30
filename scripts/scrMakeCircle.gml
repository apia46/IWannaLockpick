var spawnX, spawnY, spawnAngle, spawnNum, spawnSpeed, spawnObj, i, a;
spawnX = argument0
spawnY = argument1
spawnAngle = argument2
spawnNum = argument3
spawnSpeed = argument4
spawnObj = argument5
for (i = 0; i < spawnNum; i += 1)
{
    a = instance_create(spawnX, spawnY, spawnObj)
    a.speed = spawnSpeed
    a.direction = (spawnAngle + (i * (360 / spawnNum)))
}
