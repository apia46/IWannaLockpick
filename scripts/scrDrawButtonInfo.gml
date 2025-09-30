var optionsText, backButton, acceptButton, optionsButton;
optionsText = argument0
if (!global.controllerMode)
{
    backButton = scrGetKeybind(global.menuBackButton[0])
    acceptButton = scrGetKeybind(global.menuAcceptButton[0])
    optionsButton = scrGetKeybind(global.menuOptionsButton[0])
}
else
{
    backButton = scrGetControllerBind(global.menuBackButton[1])
    acceptButton = scrGetControllerBind(global.menuAcceptButton[1])
    optionsButton = scrGetControllerBind(global.menuOptionsButton[1])
}
draw_set_font(fDefault12)
draw_set_halign(fa_left)
draw_text(34, 556, (("[" + backButton) + "] Back"))
draw_set_halign(fa_right)
draw_text(766, 556, (("[" + acceptButton) + "] Accept"))
if optionsText
{
    draw_set_halign(fa_center)
    draw_text(400, 556, (("[" + optionsButton) + "] Options"))
}
