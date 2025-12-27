# I Wanna Lockpick Refactored
I Wanna Lockpick's source code, refactored to be a better starting point for modding.<br>
Use GameMaker Studio 1.4.x<br>
Changes:
* Unused mechanics have also been removed where noticed (except their assets, since they might be useful).
* All mentions of "Copy key"s are now correctly labelled as Glitch keys.
* (Most) mentions of "Gold" color are now correctly labelled as Master color.
* The undo system has been improved, now tracking the differences between states.
* `@addcolor` annotations have been added, detailing everywhere you need to change when adding a new key color. Search for these in a normal IDE (I also recommend coding in a normal IDE, instead of GameMaker's). Note that you will also have to add a color_COLORNAME macro and change the COLORS macro to the new correct number.
* The PDA can now have multiple pages.
* The door drawing system has been improved (new scripts in scripts/doorDraw).
  * Auras can now be of arbitrary size, and you can manually specify aura parameters to draw (see scrDrawDoorAura).
* The mouseover system has been improved (new scripts in scripts/mouseover).

**Note! The omega terminal currently crashes the game; we haven't gotten around to fixing it yet; salvage drawing is also messed up, similarily**
