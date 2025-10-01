if salvageLock == -1{
    lockString = "Base Color: "+cName[colReplace];
}else{
    if salvageIsCombo{
        switch salLock[salvageLock,3]{//Lock type
            case 0:
                var cStr = "";
                if salLock[salvageLock,1] != 0{//Re
                    cStr = string(salLock[salvageLock,1])+" ";
                }else{//Im
                    cStr = string(salLock[salvageLock,2])+"i ";
                }
                lockString = "Normal Lock: "+cStr+cName[colReplace];
            break;
            case 1:
                lockString = "Blank Lock: No "+cName[colReplace];
            break;
            case 2:
                var cStr = "";
                if salLock[salvageLock,1] != 0{//Re
                    if salLock[salvageLock,1] > 0{
                        cStr = "[+] ";
                    }else{
                        cStr = "[-] ";
                    }
                }else{//Im
                    if salLock[salvageLock,2] > 0{
                        cStr = "[+i] ";
                    }else{
                        cStr = "[-i] ";
                    }
                }
                lockString = "Blast Lock: "+cStr+" "+cName[colReplace];
            break;
            case 3:
                lockString = "All Lock: [ALL] "+cName[colReplace];
            break;
        }
    }else{//Normal door
        switch salType{
            case 0:
                var cStr = "";
                if salCount != 0{//Re
                    cStr = string(salCount)+" ";
                }else{//Im
                    cStr = string(salICount)+"i ";
                }
                lockString = "Normal Lock: "+cStr+cName[colReplace];
            break;
            case 1:
                lockString = "Blank Lock: No "+cName[colReplace];
            break;
            case 2:
                var cStr = "";
                if salCount != 0{//Re
                    if salCount > 0{
                        cStr = "[+] ";
                    }else{
                        cStr = "[-] ";
                    }
                }else{//Im
                    if salICount > 0{
                        cStr = "[+i] ";
                    }else{
                        cStr = "[-i] ";
                    }
                }
                lockString = "Blast Lock: "+cStr+" "+cName[colReplace];
            break;
            case 3:
                lockString = "All Lock: [ALL] "+cName[colReplace];
            break;
        }
    }
}
