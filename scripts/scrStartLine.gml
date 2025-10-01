///scrStartLine(diaPos);
readString = scrStringAddBreaks(diaText[argument0],fTalk,700);//Sets the current line of dialog to read
charMax = string_length(readString);
curString = "";
curChar = 0;
soundCount = soundWait - 1;
scrollCount = 0;
doScroll = 1;
scrSetSpeaker(diaSpeak[argument0]);//Sets speaker-related attributes
scrSetVoice(diaVoice[argument0]);//Sets voice-related attributes
speakerIndex = diaPortrait[argument0];//Sets speaker portrait

with oIntroHandle{event_user(0);}
with oEndHandle{event_user(0);}
