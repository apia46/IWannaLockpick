///scrLoadGame(loadfile)
///loads the game
///argument0 - sets whether or not to read the save file when loading the game

var loadFile = argument0;

//only load save data from the save file if the script is currently set to (we should only need to load these on first load because the game stores them afterwards)
if (loadFile)
{
    //load the save map
    var saveMap;
    
    if (global.extraSaveProtection) //use ds_map_secure function
    {
        saveMap = ds_map_secure_load("Data\save"+string(global.savenum));
    }
    else    //use text file
    {
        var f = file_text_open_read("Data\save"+string(global.savenum));
        
        saveMap = json_decode(base64_decode(file_text_read_string(f)));
        
        file_text_close(f);
    }
    
    var saveValid = true;   //keeps track of whether or not the save being loaded is valid
    
    if (saveMap != -1)  //check if the save map loaded correctly
    {
        global.death = ds_map_find_value(saveMap,"death");
        global.time = ds_map_find_value(saveMap,"time");
        global.timeMicro = ds_map_find_value(saveMap,"timeMicro");
        
        global.difficulty = ds_map_find_value(saveMap,"difficulty");
        global.saveRoom = ds_map_find_value(saveMap,"saveRoom");
        global.savePlayerX = ds_map_find_value(saveMap,"savePlayerX");
        global.savePlayerY = ds_map_find_value(saveMap,"savePlayerY");
        global.saveGrav = ds_map_find_value(saveMap,"saveGrav");
        
        if (is_string(global.saveRoom))   //check if the saved room loaded properly
        {
            if (!room_exists(asset_get_index(global.saveRoom)))  //check if the room index in the save is valid
                saveValid = false;
                show_debug_message("Room doesn't exist");
        }
        else
        {
            saveValid = false;
            show_debug_message("Room string fail");
        }
        
        for (var i = 0; i < 250; i++)
        {
            global.roomClear[i] = ds_map_find_value(saveMap,"saveRoomClear["+string(i)+"]");
        }
        
        global.stoneKeys = 0;
        
        for (var i = 0; i < 15; i++)
        {
            global.areaClear[i] = ds_map_find_value(saveMap,"saveClear["+string(i)+"]");
            global.areaComplete[i] = ds_map_find_value(saveMap,"saveComplete["+string(i)+"]");
            if i < 15{
                if global.areaClear[i] == 1{
                    global.stoneKeys += 1;
                }
            }
        }
        
        for (var i = 0; i < 3; i++)
        {
            global.object[i] = ds_map_find_value(saveMap,"saveObject["+string(i)+"]");
        }
        
        global.saveGameClear = ds_map_find_value(saveMap,"saveGameClear");
        
        //load md5 string from the save map
        var mapMd5 = ds_map_find_value(saveMap,"mapMd5");
        show_debug_message(mapMd5);
        
        //check if md5 is not a string in case the save was messed with or got corrupted
        if (!is_string(mapMd5))
            mapMd5 = "";   //make it a string for the md5 comparison
        
        //generate md5 string to compare with
        ds_map_delete(saveMap,"mapMd5");
        var genMd5 = md5_string_unicode(json_encode(saveMap)+global.md5StrAdd);
        
        if (mapMd5 != genMd5){   //check if md5 hash is invalid
            saveValid = false;
        }
        
        //destroy the map
        ds_map_destroy(saveMap);
    }
    else
    {
        //save map didn't load correctly, set the save to invalid
        saveValid = false;
    }
    
    if (!saveValid) //check if the save is invalid
    {
        //save is invalid, restart the game
        
        show_message("Save invalid!");
        
        scrRestartGame();
        
        exit;
    }
}

//set game variables and set the player's position

with (objPlayer) //destroy player if it exists
    instance_destroy();

global.gameStarted = true;  //sets game in progress (enables saving, restarting, etc.)
global.noPause = false;     //disable no pause mode
global.autosave = false;    //disable autosaving since we're loading the game

global.grav = global.saveGrav;

global.gameClear = global.saveGameClear;

//PART 2 LOAD
var gotoIntro = 0;
if file_exists("Data\p2save"+string(global.savenum)){
    scrLoadPart2();
    gotoIntro = !global.sawIntro;
    global.file2Detected = 1;
}else{
    if loadFile{
        //scrGlobalsFromPart1();
    }
    //scrSavePart2();//Makes a part 2 file if none is detected
    gotoIntro = 1;
    //global.newSavefile = 0;
    global.file2Detected = 0;
}

//instance_create(global.savePlayerX,global.savePlayerY,objPlayer);
if room == rTitleNew{
    //room_goto(asset_get_index(global.saveRoom));
    //PRELIMINARY CODE FOR HANDLING THE NEW INTRO
    if gotoIntro{
        global.inload = 0;
        global.inCutscene = 0;
        with objPlayer{instance_destroy();}
        room_goto(rIntro);
    }else{
        global.inload = 1;
        global.inCutscene = 0;
        with objPlayer{instance_destroy();}
        room_goto(rGuestRoom);
    }
    if !global.file2Detected && loadFile{
        scrGlobalsFromPart1();
    }
}else{
    room_restart();
}
