///getFirstFreeMark();
//Gets the array index of the first pencilmark that's invisible/undefined.
//If it fails or exceeds 255, returns -1.
for(var i = 0; i < 256; i += 1){
    if !global.pmVis[i]{
        return i;
    }
}
return -1;
