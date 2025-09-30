var cStr;
if (salvageLock == -1)
    lockString = ("Base Color: " + cName[colReplace])
else if salvageIsCombo
{
    switch salLock[salvageLock, 3]
    {
        case 0:
            cStr = ""
            if (salLock[salvageLock, 1] != 0)
                cStr = (string(salLock[salvageLock, 1]) + " ")
            else
                cStr = (string(salLock[salvageLock, 2]) + "i ")
            lockString = (("Normal Lock: " + cStr) + cName[colReplace])
            break
        case 1:
            lockString = ("Blank Lock: No " + cName[colReplace])
            break
        case 2:
            cStr = ""
            if (salLock[salvageLock, 1] != 0)
            {
                if (salLock[salvageLock, 1] > 0)
                    cStr = "[+] "
                else
                    cStr = "[-] "
            }
            else if (salLock[salvageLock, 2] > 0)
                cStr = "[+i] "
            else
                cStr = "[-i] "
            lockString = ((("Blast Lock: " + cStr) + " ") + cName[colReplace])
            break
        case 3:
            lockString = ("All Lock: [ALL] " + cName[colReplace])
            break
    }
    
}
else
{
    switch salType
    {
        case 0:
            cStr = ""
            if (salCount != 0)
                cStr = (string(salCount) + " ")
            else
                cStr = (string(salICount) + "i ")
            lockString = (("Normal Lock: " + cStr) + cName[colReplace])
            break
        case 1:
            lockString = ("Blank Lock: No " + cName[colReplace])
            break
        case 2:
            cStr = ""
            if (salCount != 0)
            {
                if (salCount > 0)
                    cStr = "[+] "
                else
                    cStr = "[-] "
            }
            else if (salICount > 0)
                cStr = "[+i] "
            else
                cStr = "[-i] "
            lockString = ((("Blast Lock: " + cStr) + " ") + cName[colReplace])
            break
        case 3:
            lockString = ("All Lock: [ALL] " + cName[colReplace])
            break
    }
    
}
