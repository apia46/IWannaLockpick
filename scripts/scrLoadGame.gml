var loadFile, saveMap, f, saveValid, i, mapMd5, genMd5, gotoIntro;
loadFile = argument0
if loadFile
{
    if global.extraSaveProtection
        saveMap = ds_map_secure_load(("Data\save" + string(global.savenum)))
    else
    {
        f = file_text_open_read(("Data\save" + string(global.savenum)))
        saveMap = json_decode(base64_decode(file_text_read_string(f)))
        file_text_close(f)
    }
    saveValid = 1
    if (saveMap != -1)
    {
        global.death = ds_map_find_value(saveMap, "death")
        global.time = ds_map_find_value(saveMap, "time")
        global.timeMicro = ds_map_find_value(saveMap, "timeMicro")
        global.difficulty = ds_map_find_value(saveMap, "difficulty")
        global.saveRoom = ds_map_find_value(saveMap, "saveRoom")
        global.savePlayerX = ds_map_find_value(saveMap, "savePlayerX")
        global.savePlayerY = ds_map_find_value(saveMap, "savePlayerY")
        global.saveGrav = ds_map_find_value(saveMap, "saveGrav")
        if is_string(global.saveRoom)
        {
            if (!room_exists(asset_get_index(global.saveRoom)))
                saveValid = 0
            show_debug_message("Room doesn't exist")
        }
        else
        {
            saveValid = 0
            show_debug_message("Room string fail")
        }
        for (i = 0; i < 250; i++)
            global.roomClear[i] = ds_map_find_value(saveMap, (("saveRoomClear[" + string(i)) + "]"))
        global.stoneKeys = 0
        for (i = 0; i < 15; i++)
        {
            global.areaClear[i] = ds_map_find_value(saveMap, (("saveClear[" + string(i)) + "]"))
            global.areaComplete[i] = ds_map_find_value(saveMap, (("saveComplete[" + string(i)) + "]"))
            if (i < 15)
            {
                if (global.areaClear[i] == 1)
                    global.stoneKeys += 1
            }
        }
        for (i = 0; i < 3; i++)
            global.object[i] = ds_map_find_value(saveMap, (("saveObject[" + string(i)) + "]"))
        global.saveGameClear = ds_map_find_value(saveMap, "saveGameClear")
        mapMd5 = ds_map_find_value(saveMap, "mapMd5")
        show_debug_message(mapMd5)
        if (!is_string(mapMd5))
            mapMd5 = ""
        ds_map_delete(saveMap, "mapMd5")
        genMd5 = md5_string_unicode((json_encode(saveMap) + global.md5StrAdd))
        if (mapMd5 != genMd5)
            saveValid = 0
        ds_map_destroy(saveMap)
    }
    else
        saveValid = 0
    if (!saveValid)
    {
        show_message("Save invalid!")
        scrRestartGame()
        exit
    }
}
with (objPlayer)
    instance_destroy()
global.gameStarted = 1
global.noPause = 0
global.autosave = 0
global.grav = global.saveGrav
global.gameClear = global.saveGameClear
gotoIntro = 0
if file_exists(("Data\p2save" + string(global.savenum)))
{
    scrLoadPart2()
    gotoIntro = (!global.sawIntro)
    global.file2Detected = 1
}
else
{
    if loadFile
    {
    }
    gotoIntro = 1
    global.file2Detected = 0
}
if (room == rTitleNew)
{
    if gotoIntro
    {
        global.inload = 0
        global.inCutscene = 0
        with (objPlayer)
            instance_destroy()
        room_goto(rIntro)
    }
    else
    {
        global.inload = 1
        global.inCutscene = 0
        with (objPlayer)
            instance_destroy()
        room_goto(rGuestRoom)
    }
    if ((!global.file2Detected) && loadFile)
        scrGlobalsFromPart1()
}
else
    room_restart()
