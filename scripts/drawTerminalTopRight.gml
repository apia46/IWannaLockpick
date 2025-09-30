var dIndex, tempPow, lMX, lMY;
x += 112
y += 32
w = 2
h = 2
color = 9
colorSpend = 9
scrColorDoor()
scrColorDoor2()
c4 = 8421504
c5 = 4210752
c6 = 0
c2 = c5
scrDrawDoorSpend()
scrDrawDoorRequire()
dIndex = 0
tempPow = 2
if (tempPow <= 1)
    dIndex = 6
else
    dIndex = 7
scrComboDrawIm()
lMX = (x + (w * 16))
lMY = (y + (h * 16))
draw_set_color(make_color_hsv(hue, 255, 255))
draw_set_font(fMiniLevel)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text(lMX, (lMY - 12), string(oCount))
draw_text(lMX, (lMY + 12), "Ω")
draw_set_color(c_white)
x -= 112
y -= 32
w = 3
h = 4
