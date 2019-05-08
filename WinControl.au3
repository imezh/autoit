#include <Array.au3>
Func Var_GetAllWindowsControls($hCallersWindow)
    ; Get all list of controls
    $sClassList = WinGetClassList($hCallersWindow)

    ; Create array
    $aClassList = StringSplit($sClassList, @CRLF, 2)

    ; Sort array
    _ArraySort($aClassList)
    _ArrayDelete($aClassList, 0)

    ; Loop
    $iCurrentClass = ""
    $iCurrentCount = 1
    $iTotalCounter = 1

    For $i = 0 To UBound($aClassList) - 1
        If $aClassList[$i] = $iCurrentClass Then
            $iCurrentCount += 1
        Else
            $iCurrentClass = $aClassList[$i]
            $iCurrentCount = 1
        EndIf

        $hControl = ControlGetHandle($hCallersWindow, "", "[CLASSNN:" & $iCurrentClass & $iCurrentCount & "]")
        $text = StringRegExpReplace(ControlGetText($hCallersWindow, "", $hControl), "[\n\r]", "{@CRLF}")
        $aPos = ControlGetPos($hCallersWindow, "", $hControl)
        $sControlID = _WinAPI_GetDlgCtrlID($hControl)
        If IsArray($aPos) Then
            ConsoleWrite("Func=[Var_GetAllWindowsControls]: ControlCounter=[" & StringFormat("%3s", $iTotalCounter) & "] ControlID=[" & StringFormat("%5s", $sControlID) & "] Handle=[" & StringFormat("%10s", $hControl) & "] ClassNN=[" & StringFormat("%19s", $iCurrentClass & $iCurrentCount) & "] XPos=[" & StringFormat("%4s", $aPos[0]) & "] YPos=[" & StringFormat("%4s", $aPos[1]) & "] Width=[" & StringFormat("%4s", $aPos[2]) & "] Height=[" & StringFormat("%4s", $aPos[3]) & "] Text=[" & $text & "]." & @CRLF)
        Else
            ConsoleWrite("Func=[Var_GetAllWindowsControls]: ControlCounter=[" & StringFormat("%3s", $iTotalCounter) & "] ControlID=[" & StringFormat("%5s", $sControlID) & "] Handle=[" & StringFormat("%10s", $hControl) & "] ClassNN=[" & StringFormat("%19s", $iCurrentClass & $iCurrentCount) & "] XPos=[winclosed] YPos=[winclosed] Width=[winclosed] Height=[winclosed] Text=[" & $text & "]." & @CRLF)
        EndIf
        If Not WinExists($hCallersWindow) Then ExitLoop
        $iTotalCounter += 1
    Next

EndFunc   ;==>Var_GetAllWindowsControls