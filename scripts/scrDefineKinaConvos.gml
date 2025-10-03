///scrDefineKinaConvos();
//Defines all of Kina's conversation IDs and initiating phrases.

convoTitle[0] = "Excuse me, who are you?";
convoID[0] = 11;

convoTitle[1] = "What am I doing here?"
convoID[1] = 12;

convoTitle[2] = "What should I do next?"
if !global.roomClear[165] && !global.areaReached[19]{//Just solve puzzles like normal
    convoID[2] = 13;
}else if !global.areaReached[19]{//Solve the Focal Point entry
    convoID[2] = 14;
}else if !global.areaReached[21]{//Solve World 0
    convoID[2] = 13;
}else if !global.omegaKey[color_WHITE]{//Get the White Omega Key
    convoID[2] = 15;
}else if !global.omegaKey[color_ORANGE]{//Get the Orange Omega Key
    convoID[2] = 25;
}else if !global.omegaKey[color_PURPLE]{//Get the Purple Omega Key
    convoID[2] = 26;
}else if !global.omegaKey[color_BLACK]{//Get more Omega Keys
    if !global.omegaKey[color_CYAN]{
        convoID[2] = 16;
    }else if !global.omegaKey[color_BROWN]{
        convoID[2] = 19;
    }else{
        convoID[2] = 16;
    }
}else if !global.omegaPerk[0]{//Get first Omega Perk
    convoID[2] = 17;
}else if !global.kinaHeart{//Do the Kinapuzzle
    convoID[2] = 18;
}else if !global.omegaPerk[1] || !global.roomClear[186]{//Get second Omega Perk
    convoID[2] = 27;
}else{//Just carry on til there's nothing left
    convoID[2] = 19;
}
if global.roomClear[186]{
    convoID[2] = 28;
}

//W1-W6
convoTitle[3] = "Stone Key!";
convoID[3] = 29;
convoTitle[4] = "These worlds...";
convoID[4] = 30;
convoTitle[5] = "Back at home...";
convoID[5] = 31;
convoTitle[6] = "Auras are weird!";
convoID[6] = 32;
convoTitle[7] = "It's getting hard...";
convoID[7] = 33;
convoTitle[8] = "Almost there..?";
convoID[8] = 34;
//Backside
convoTitle[9] = "The Backside!";
convoID[9] = 40;
//UDL
if !global.roomClear[72]{
    convoTitle[10] = "That's a big one!";
    convoID[10] = 41;
}else{
    convoTitle[10] = "Hello again!";
    convoID[10] = 42;
}
//W7-W11
convoTitle[11] = "It's getting weirder?!";
convoID[11] = 35;
convoTitle[12] = "Noticing a trend...";
convoID[12] = 36;
convoTitle[13] = "That Library...";
convoID[13] = 37;
convoTitle[14] = "A strange question...";
convoID[14] = 38;
convoTitle[15] = "I-Imaginary..?!";
convoID[15] = 39;
//Monolith
if !global.roomClear[134]{
    convoTitle[16] = "Another one?!";
    convoID[16] = 43;
}else{
    convoTitle[16] = "I graduated!";
    convoID[16] = 44;
}
//TGB Tutorial
convoTitle[17] = "Salvaging doors?!";
convoID[17] = 45;
//TGB
convoTitle[18] = "So wondrous...";
convoID[18] = 46;
convoTitle[19] = "Fake worlds...";
convoID[19] = 47;
convoTitle[20] = "When I'm away...";
convoID[20] = 48;
convoTitle[21] = "It's getting complex!!";
convoID[21] = 49;
//Null
convoTitle[22] = "Oops..?";
convoID[22] = 50;
//W0
convoTitle[23] = "Are these really puzzles?";
convoID[23] = 51;
//Lab time
convoTitle[24] = "I can do that?!";
convoID[24] = 52;
//Kina...
convoTitle[25] = "About that dress...";
convoID[25] = 53;
//W12
convoTitle[26] = "Feeling nostalgic...";
convoID[26] = 54;
//Visited EX
convoTitle[27] = "Nearing the end..?";
convoID[27] = 55;
//Omega
convoTitle[28] = "Yet another behemoth...";
convoID[28] = 56;
//Diary
convoTitle[29] = "I've read the diary.";
convoID[29] = 57;
