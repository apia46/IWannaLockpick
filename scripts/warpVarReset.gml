var arrX, arrY, i, r, ia, ix, iy;
arrX[0] = 0
arrY[0] = 0
warpCurXS = 0
warpCurYS = 0
warpCurX = 0
warpCurY = 0
warpCurNode = -1
warpNodeS = -1
numNodes = 0
defWarpNode(0, -164, -104, 17, "H")
for (i = 0; i < 6; i += 1)
{
    r = 50
    ia = (30 + ((360 * i) / 6))
    ix = (-164 + (r * cos(degtorad(ia))))
    iy = (-104 - (r * sin(degtorad(ia))))
    arrX[i] = round(ix)
    arrY[i] = round(iy)
}
defWarpNode(1, arrX[0], arrY[0], 24, "1")
defWarpNode(2, arrX[1], arrY[1], 45, "2")
defWarpNode(3, arrX[2], arrY[2], 70, "3")
defWarpNode(4, arrX[3], arrY[3], 89, "4")
defWarpNode(5, arrX[4], arrY[4], 113, "5")
defWarpNode(6, arrX[5], arrY[5], 125, "6")
defWarpNode(7, 0, -104, 19, "B")
for (i = 0; i < 5; i += 1)
{
    r = 50
    ia = (90 + ((360 * i) / 5))
    ix = (0 + (r * cos(degtorad(ia))))
    iy = (-104 - (r * sin(degtorad(ia))))
    arrX[i] = round(ix)
    arrY[i] = round(iy)
}
defWarpNode(8, arrX[0], arrY[0], 143, "7")
defWarpNode(9, arrX[1], arrY[1], 161, "8")
defWarpNode(10, arrX[2], arrY[2], 172, "9")
defWarpNode(11, arrX[3], arrY[3], 187, "10")
defWarpNode(12, arrX[4], arrY[4], 203, "11")
defWarpNode(13, 164, -104, 22, "T")
defWarpNode(14, -228, 0, 20, "S")
defWarpNode(15, 164, -72, 229, "T1")
defWarpNode(16, 164, -40, 241, "T2")
defWarpNode(17, 164, -8, 252, "T3")
defWarpNode(18, 164, 24, 260, "T4")
defWarpNode(19, 0, 50, 332, "FP")
defWarpNode(20, -64, 98, 267, "0")
defWarpNode(21, -96, 98, 276, "SL")
defWarpNode(22, -32, 114, 277, "12")
defWarpNode(23, 0, 130, 300, "EX")
defWarpNode(24, 32, 114, 311, "Ω")
defWarpNode(25, 64, 98, 334, "KD")
defWarpNode(26, -236, -104, 333, "GR")
defWarpNode(27, 0, 162, 310, "EP")
numPairs = 0
defWarpPair(0, 1)
defWarpPair(0, 2)
defWarpPair(0, 3)
defWarpPair(0, 4)
defWarpPair(0, 5)
defWarpPair(0, 6)
defWarpPair(0, 7)
defWarpPair(0, 14)
defWarpPair(0, 26)
defWarpPair(7, 8)
defWarpPair(7, 9)
defWarpPair(7, 10)
defWarpPair(7, 11)
defWarpPair(7, 12)
defWarpPair(7, 13)
defWarpPair(13, 15)
defWarpPair(15, 16)
defWarpPair(16, 17)
defWarpPair(17, 18)
defWarpPair(18, 19)
defWarpPair(19, 20)
defWarpPair(19, 22)
defWarpPair(19, 23)
defWarpPair(19, 24)
defWarpPair(19, 25)
defWarpPair(20, 21)
defWarpPair(23, 27)
warpCurXS = 0
warpCurYS = 0
warpCurNode = -1
warpNodeS = -1
