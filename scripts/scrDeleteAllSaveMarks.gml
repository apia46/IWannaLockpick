var markDir = "Data"+scrGetSaveNum();
//file_delete(markDir);

for(var iM = 0; iM <= room_last; iM += 1){
    if file_exists(markDir+getPMFile(iM)){
        file_delete(markDir+getPMFile(iM));
    }
}
