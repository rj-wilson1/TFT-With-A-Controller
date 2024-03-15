; Initialize an array to store the position coordinates of various elements
PositionCoordinates := []

; Define the position coordinates for each hex in the battlefield
; Row 1 Hexes
PositionCoordinates[1] := [580, 450]
PositionCoordinates[2] := [683, 450]
PositionCoordinates[3] := [790, 450]
PositionCoordinates[4] := [909, 450]
PositionCoordinates[5] := [1019, 450]
PositionCoordinates[6] := [1137, 450]
PositionCoordinates[7] := [1253, 450]

; Row 2 Hexes
PositionCoordinates[8] := [610, 530]
PositionCoordinates[9] := [730, 530]
PositionCoordinates[10] := [855, 530]
PositionCoordinates[11] := [970, 530]
PositionCoordinates[12] := [1081, 530]
PositionCoordinates[13] := [1206, 530]
PositionCoordinates[14] := [1322, 530]

; Row 3 Hexes
PositionCoordinates[15] := [533, 593]
PositionCoordinates[16] := [683, 593]
PositionCoordinates[17] := [790, 593]
PositionCoordinates[18] := [909, 593]
PositionCoordinates[19] := [1021, 593]
PositionCoordinates[20] := [1137, 593]
PositionCoordinates[21] := [1253, 593]

; Row 4 Hexes
PositionCoordinates[22] := [610, 677]
PositionCoordinates[23] := [730, 677]
PositionCoordinates[24] := [855, 677]
PositionCoordinates[25] := [970, 677]
PositionCoordinates[26] := [1081, 677]
PositionCoordinates[27] := [1206, 677]
PositionCoordinates[28] := [1352, 677]

; Bench Coordinates
PositionCoordinates[29] := [424, 786]
PositionCoordinates[30] := [544, 786]
PositionCoordinates[31] := [662, 786]
PositionCoordinates[32] := [776, 786]
PositionCoordinates[33] := [891, 786]
PositionCoordinates[34] := [1007, 786]
PositionCoordinates[35] := [1127, 786]
PositionCoordinates[36] := [1236, 786]
PositionCoordinates[37] := [1369, 786]

; Shop Coordinates
PositionCoordinates[38] := [498, 944]
PositionCoordinates[39] := [701, 944]
PositionCoordinates[40] := [902, 944]
PositionCoordinates[41] := [1117, 944]
PositionCoordinates[42] := [1311, 944]

; Item Slot Coordinates
PositionCoordinates[43] := [348, 618] ; 1
PositionCoordinates[44] := [399, 618] ; 2
PositionCoordinates[45] := [335, 660] ; 3
PositionCoordinates[46] := [390, 660] ; 4
PositionCoordinates[47] := [444, 658] ; 5
PositionCoordinates[48] := [355, 687] ; 6
PositionCoordinates[49] := [409, 687] ; 7
PositionCoordinates[50] := [317, 716] ; 8
PositionCoordinates[51] := [337, 748] ; 9
PositionCoordinates[52] := [301, 770] ; 10

; Initialize a variable to track the current position
mainPositionTracker := 1

; Up Dpad
Up::
{
    ; Move up by rows on the battlefield
    if (mainPositionTracker >= 1 && mainPositionTracker <= 7)
    {
        return
    }
    ; Move up from rows 2 and 3 of the battlefield to the upper rows
    else if (mainPositionTracker >= 8 && mainPositionTracker <= 28)
    {
        mainPositionTracker -=7
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    ; Move to item slot seven if on the first bench slot
    else if (mainPositionTracker == 29)
    {
        mainPositionTracker := 49
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    ; Move up from the bench area to the battlefield (row 4)
    else if (mainPositionTracker >= 30 && mainPositionTracker <= 32)
    {
        mainPositionTracker -=8
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    ; Move up from the bench area to the battlefield (row 4)
    else if (mainPositionTracker >= 33 && mainPositionTracker <= 37 )
    {
        mainPositionTracker -=9
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    ; Move up from the end of the shop area to the correct bench position
    else if (mainPositionTracker == 38)
    {
        mainPositionTracker := 30
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    ; Move up from the end of the shop area to the correct bench position
    else if (mainPositionTracker == 39)
    {
        mainPositionTracker := 32
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    ; Move up from the end of the shop area to the correct bench position
    else if (mainPositionTracker == 40)
    {
        mainPositionTracker := 33
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    ; Move up from the end of the shop area to the correct bench position
    else if (mainPositionTracker == 41)
    {
        mainPositionTracker := 35
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    ; Move up from the end of the shop area to the correct bench position
    else if (mainPositionTracker == 42)
    {
        mainPositionTracker := 37
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    ; Move from top of item bench to board spot 15
    else if (mainPositionTracker == 43 || mainPositionTracker == 44)
    {
        mainPositionTracker := 15
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else if (mainPositionTracker == 45 || mainPositionTracker == 46)
    {
        mainPositionTracker -= 2
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else if (mainPositionTracker == 47)
    {
        mainPositionTracker -= 3
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else if (mainPositionTracker == 48 || mainPositionTracker == 49)
    {
        mainPositionTracker -= 3
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else if (mainPositionTracker == 50)
    {
        mainPositionTracker -= 2
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else if (mainPositionTracker == 51 || mainPositionTracker == 52)
    {
        mainPositionTracker -= 1
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    return
}

; Down Dpad
Down::
{
    if (mainPositionTracker >= 38 && mainPositionTracker <= 42)
    {
        return
    }
    ; Move down by rows on the battlefield
    else if (mainPositionTracker >= 1 && mainPositionTracker <= 21) 
    {
        mainPositionTracker +=7
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    ; Move down from row 4 of the battlefield to the shop area
    else if (mainPositionTracker >= 22 && mainPositionTracker <= 24)
    {
        mainPositionTracker +=8
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    ; Move down from row 4 of the battlefield to the bench area
    else if (mainPositionTracker >= 25 && mainPositionTracker <= 28)
    {
        mainPositionTracker +=9
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    ; Move down from the bench area to the shop area
    else if (mainPositionTracker >= 29 && mainPositionTracker <= 31)
    {
        mainPositionTracker := 38
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else if (mainPositionTracker == 32)
    {
        mainPositionTracker := 39
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else if (mainPositionTracker >= 33 && mainPositionTracker <= 34)
    {
        mainPositionTracker := 40
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else if (mainPositionTracker >= 35 && mainPositionTracker <= 36)
    {
        mainPositionTracker := 41
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else if (mainPositionTracker == 37)
    {
        mainPositionTracker := 42
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    ; On item bench
    else if (mainPositionTracker == 43 || mainPositionTracker == 44)
    {
        mainPositionTracker += 2
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
        return
    }
    else if (mainPositionTracker == 45 || mainPositionTracker == 46)
    {
        mainPositionTracker += 3
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
        return
    }
    else if (mainPositionTracker == 47 || mainPositionTracker == 48)
    {
        mainPositionTracker += 2
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
        return
    }
    else if (mainPositionTracker == 49)
    {
        mainPositionTracker := 29
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
        return
    }
    else if (mainPositionTracker == 50 || mainPositionTracker || 51)
    {
        mainPositionTracker += 1
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
        return
    }
    else if (mainPositionTracker == 52)
    {
        mainPositionTracker := 38
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
        return
    }
    return
}

; Left Dpad
Left::
{
    ; Check if the current position is at the edge of the battlefield or the start of the shop/bench
    if (mainPositionTracker == 1 || mainPositionTracker == 15 || mainPositionTracker == 22)
    {
        mainPositionTracker := 47
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else if (mainPositionTracker == 38 || mainPositionTracker == 43
            || mainPositionTracker == 50 || mainPositionTracker == 52)
    {
        return
    }
    else if(mainPositionTracker == 29)
    {
        mainPositionTracker := 51
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else if(mainPositionTracker == 8)
    {
        mainPositionTracker := 15
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else if(mainPositionTracker == 48)
    {
        mainPositionTracker += 2
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else
    {
        mainPositionTracker--
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    return
}

; Right Dpad
Right::
{
    if (mainPositionTracker = 7 || mainPositionTracker = 14 || mainPositionTracker = 21)
    {
        mainPositionTracker += 7
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else if (mainPositionTracker == 28 || mainPositionTracker == 37 || mainPositionTracker == 42)
    {
        return
    }
    else if (mainPositionTracker == 44)
    {
        mainPositionTracker += 3
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else if (mainPositionTracker == 47)
    {
        mainPositionTracker := 22
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else if (mainPositionTracker == 49)
    {
        mainPositionTracker -= 2
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else if (mainPositionTracker == 50)
    {
        mainPositionTracker++
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else if (mainPositionTracker == 51 )
    {
        mainPositionTracker := 29
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    else if(mainPositionTracker == 52)
    {
        mainPositionTracker--
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1           
    }
    else
    {
        mainPositionTracker++
        MouseMove, PositionCoordinates[mainPositionTracker][1], PositionCoordinates[mainPositionTracker][2], 1
    }
    return
}

; Left Analog
^Up::
{
    ; Move 50 pixels up
    MouseMove 0, -50, 1, Relative
    ; Perform a right-click at the current mouse position
    Click, Right
    return
}

; Down Analog
^Down::
{
    ; Move 50 pixels down
    MouseMove 0, 50, 1, Relative
    ; Perform a right-click at the current mouse position
    Click, Right
    return
}

; Left Analog
^Left::
{
    ; Move 50 pixels left
    MouseMove -50, 0, 1, Relative
    ; Perform a right-click at the current mouse position
    Click, Right
    return
}

; Right Analog
^Right::
{
    ; Move 50 pixels right
    MouseMove 50, 0, 1, Relative
    ; Perform a right-click at the current mouse position
    Click, Right
    return
}

; Control-Alt-Q hotkey to exit the script
^!q::ExitApp
