salDX = (400 - (salW * 16))
salDY = (304 - (salH * 32))
oldC = color
oldCS = colorSpend
color = salC
colorSpend = salCS
scrColorDoor()
scrColorDoor2()
if salvageIsCombo
{
    lock = salLock
    drawPreviewFills()
    drawPreviewLock(1)
    drawPreviewLocks()
}
else
{
    drawPreviewSpend()
    drawPreviewLock(1)
    if (((state == 5) || (state == 6)) && (salvageLock == -1))
        draw_sprite_ext(sprBlockWhite, 0, salDX, salDY, salW, salH, 0, c_white, previewA)
    drawPreviewRequire()
    if global.simpleLock
        drawPreviewNormalLockSimple()
    else
        drawPreviewNormalLock()
    drawPreviewLock(0)
    if (((state == 5) || (state == 6)) && (salvageLock == 0))
        draw_sprite_ext(sprBlockWhite, 0, (salDX + 8), (salDY + 8), (salW - 0.5), (salH - 0.5), 0, c_white, previewA)
}
color = oldC
colorSpend = oldCS
draw_set_color(c_white)
draw_set_alpha(1)
