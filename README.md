# I Wanna Lockpick Refactored
I Wanna Lockpick's source code, refactored to be a better starting point for modding.<br>
Use GameMaker Studio 1.4.x<br>
Changes: <br>
* Unused mechanics have also been removed where noticed (except their assets, since they might be useful).<br>
* All mentions of "Copy key"s are now correctly labelled as Glitch keys.<br>
* (Most) mentions of "Gold" color are now correctly labelled as Master color.<br>
* The undo system has been improved, now tracking the differences between states.<br>
* The `@addcolor` annotation details everywhere you need to change when adding a new key color. Note that you will also have to add a color_COLORNAME macro and change the COLORS macro to the new correct number.<br>
* The PDA can now have multiple pages.<br>
* The door drawing system has been improved (new scripts in scripts/doorDraw).<br>
  * Auras can now be of arbitrary size, and you can manually specify aura parameters to draw (see scrDrawDoorAura).
* The mouseover system has been improved (new scripts in scripts/mouseover).
**Note! The omega terminal currently crashes the game; we haven't gotten around to fixing it yet; salvage drawing is also messed up, similarily**
