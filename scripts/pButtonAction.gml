///pButtonAction(pauseButtonID);
//For PAUSE buttons. Not Option buttons.
switch argument0{
    case 0://Resume
        global.pauseDelay = global.pauseDelayLength;     //set pause delay
        if mode == -1{
            event_user(0);
        }
    break;
    case 1://Options
        mode = 4;
        instance_create(0,0,oOptionHandle);
    break;
    case 2://Exit Level
        if global.canExitLevel{
            with objWorld{event_user(1);}
            scrResumeMusic();
            global.gamePaused = 0;
            with objPlayer{event_user(1);instance_destroy();}
            with objWorld{
                pauseFade = 0;
                global.inLevel = 0;
                t = instance_create(0,0,oWorldTransition);
                if global.outerLevelTele{
                    t.telePlayer = 1;
                    t.teleX = global.levelEnteredX;
                    t.teleY = global.levelEnteredY;
                    global.outerLevelTele = 0;
                }
                t.roomTo = global.roomOuter;
            }
            audio_stop_sound(pauseMus);
            instance_destroy();
        }
    break;
    case 3://Title
        global.autosave = 0;
        with objWorld{event_user(1);}
        global.gamePaused = 0;
        scrRestartGame();
    break;
    case 4://Quit
        scrSaveGame(false);
        game_end();
    break;
    case 5://Erase Pencilmarks
        scrErasePencilmark(room);
        instance_activate_object(oMouseover);
        with oMouseover{
            mouseState = -1;
        }
        instance_deactivate_object(oMouseover);
        instance_activate_object(oPencilmark);
        with oPencilmark{
            //Temp mark variables (copied to every new mark)
            tmpType = 0;
            tmpSymbol = 0;
            tmpNum = 0;
            tmpStr = "";
            tmpCol = 0;
            global.pmState = 0;
        }
        instance_deactivate_object(oPencilmark);
    break;
    case 6://Joke
        curJoke = irandom(19);
        tellJoke = 1;
        curJokeStr = scrStringAddBreaks(joke[curJoke],fMiniID,256);
        jokeL = string_length(curJokeStr);
        jokeStr = "";
    break;
}
