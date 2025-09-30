var saveMap, i, f;
saveMap = ds_map_create()
ds_map_add(saveMap, "newSavefile", argument0)
ds_map_add(saveMap, "sawIntro", 0)
ds_map_add(saveMap, "didEscape", 0)
ds_map_add(saveMap, "kinaHeart", 0)
ds_map_add(saveMap, "clearRank", global.clearRank)
for (i = 0; i < 50; i += 1)
    ds_map_add(saveMap, (("areaReached[" + string(i)) + "]"), 0)
for (i = 0; i < 20; i += 1)
    ds_map_add(saveMap, (("seenKeyColor[" + string(i)) + "]"), 0)
for (i = 0; i < 100; i += 1)
    ds_map_add(saveMap, (("saveRoomClear[" + string(i)) + "]"), 0)
for (i = 0; i < 16; i += 1)
{
    ds_map_add(saveMap, (("omegaKey[" + string(i)) + "]"), 0)
    ds_map_add(saveMap, (("omegaPuzzle[" + string(i)) + "]"), 0)
}
for (i = 0; i < 5; i += 1)
    ds_map_add(saveMap, (("omegaPerk[" + string(i)) + "]"), 0)
for (i = 0; i < 15; i += 1)
    ds_map_add(saveMap, (("areaSuperClear[" + string(i)) + "]"), 0)
for (i = 0; i < 20; i += 1)
    ds_map_add(saveMap, (("didCutscene[" + string(i)) + "]"), 0)
for (i = 0; i < 100; i += 1)
{
    ds_map_add(saveMap, (("convoUnlocked[" + string(i)) + "]"), 0)
    ds_map_add(saveMap, (("convoRead[" + string(i)) + "]"), 0)
}
for (i = 0; i < 30; i += 1)
    ds_map_add(saveMap, (("randomVar[" + string(i)) + "]"), 0)
ds_map_add(saveMap, "mapMd5", md5_string_unicode((json_encode(saveMap) + global.md5StrAdd)))
if global.extraSaveProtection
    ds_map_secure_save(saveMap, ("Data\p2save" + string(global.savenum)))
else
{
    f = file_text_open_write(("Data\p2save" + string(global.savenum)))
    file_text_write_string(f, base64_encode(json_encode(saveMap)))
    file_text_close(f)
}
ds_map_destroy(saveMap)
