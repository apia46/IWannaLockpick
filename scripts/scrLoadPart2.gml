var saveMap2, f, saveValid, i, mapMd5_1, genMd5_1;
if global.extraSaveProtection
    saveMap2 = ds_map_secure_load(("Data\p2save" + string(global.savenum)))
else
{
    f = file_text_open_read(("Data\p2save" + string(global.savenum)))
    saveMap2 = json_decode(base64_decode(file_text_read_string(f)))
    file_text_close(f)
}
saveValid = 1
if (saveMap2 != -1)
{
    global.newSavefile = ds_map_find_value(saveMap2, "newSavefile")
    global.sawIntro = ds_map_find_value(saveMap2, "sawIntro")
    global.didEscape = ds_map_find_value(saveMap2, "didEscape")
    global.kinaHeart = ds_map_find_value(saveMap2, "kinaHeart")
    global.clearRank = ds_map_find_value(saveMap2, "clearRank")
    for (i = 0; i < 50; i++)
        global.areaReached[i] = ds_map_find_value(saveMap2, (("areaReached[" + string(i)) + "]"))
    for (i = 0; i < 20; i++)
        global.seenKeyColor[i] = ds_map_find_value(saveMap2, (("seenKeyColor[" + string(i)) + "]"))
    for (i = 0; i < 100; i++)
        global.roomClear[(i + 250)] = ds_map_find_value(saveMap2, (("saveRoomClear[" + string(i)) + "]"))
    for (i = 0; i < 16; i++)
    {
        global.omegaKey[i] = ds_map_find_value(saveMap2, (("omegaKey[" + string(i)) + "]"))
        global.omegaPuzzle[i] = ds_map_find_value(saveMap2, (("omegaPuzzle[" + string(i)) + "]"))
    }
    for (i = 0; i < 5; i++)
        global.omegaPerk[i] = ds_map_find_value(saveMap2, (("omegaPerk[" + string(i)) + "]"))
    for (i = 0; i < 15; i++)
        global.areaSuperClear[i] = ds_map_find_value(saveMap2, (("areaSuperClear[" + string(i)) + "]"))
    for (i = 0; i < 20; i++)
        global.didCutscene[i] = ds_map_find_value(saveMap2, (("didCutscene[" + string(i)) + "]"))
    for (i = 0; i < 100; i++)
        global.convoUnlocked[i] = ds_map_find_value(saveMap2, (("convoUnlocked[" + string(i)) + "]"))
    for (i = 0; i < 100; i++)
        global.convoRead[i] = ds_map_find_value(saveMap2, (("convoRead[" + string(i)) + "]"))
    for (i = 0; i < 30; i++)
        global.randomVar[i] = ds_map_find_value(saveMap2, (("randomVar[" + string(i)) + "]"))
    mapMd5_1 = ds_map_find_value(saveMap2, "mapMd5_1")
    if (!is_string(mapMd5_1))
        mapMd5_1 = ""
    ds_map_delete(saveMap2, "mapMd5_1")
    genMd5_1 = md5_string_unicode((json_encode(saveMap2) + global.md5StrAdd))
    if (mapMd5_1 != genMd5_1)
    {
        saveValid = 0
        show_message("Invalid MD5")
    }
    ds_map_destroy(saveMap2)
}
else
{
    saveValid = 0
    show_message("Save map invalid")
}
if (!saveValid)
{
    show_message("Save invalid!")
    scrRestartGame()
    exit
}
