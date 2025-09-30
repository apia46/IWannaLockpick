var markDir, iM;
markDir = ("Data" + scrGetSaveNum())
for (iM = 0; iM <= room_last; iM += 1)
{
    if file_exists((markDir + getPMFile(iM)))
        file_delete((markDir + getPMFile(iM)))
}
