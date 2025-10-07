//First, set up the draw variables for any numerical locks
draw_set_font(fTalk);
draw_set_halign(fa_center);
draw_set_valign(fa_center);

for(var i = 0; i < lockCount; i += 1){
    scrDrawDoorLock(lock[i,0],lock[i,1],lock[i,2],lock[i,3],lock[i,4],lock[i,5],lock[i,6]);
}
