# I Wanna Lockpick Refactored
I Wanna Lockpick's source code, refactored to be a better starting point for modding.<br>
Use GameMaker Studio 1.4.x<br>
Changes: <br>
Unused mechanics have also been removed where noticed (except their assets, since they might be useful).<br>
All mentions of "Copy key"s are now correctly labelled as Glitch keys.<br>
The undo system has been improved, now tracking the differences between states. It is now much easier to add new mechanics that need alterations to the undo system.<br>
The `@addcolor` annotation details everywhere you need to change when adding a new key color. Note that you will also have to add a color_COLORNAME macro and change the COLORS macro to the new correct number.
