readString = scrStringAddBreaks(diaText[argument0], fTalk, 700)
charMax = string_length(readString)
curString = ""
curChar = 0
soundCount = (soundWait - 1)
scrollCount = 0
doScroll = 1
scrSetSpeaker(diaSpeak[argument0])
scrSetVoice(diaVoice[argument0])
speakerIndex = diaPortrait[argument0]
with (oIntroHandle)
    event_user(0)
with (oEndHandle)
    event_user(0)
