#include <MsgBoxConstants.au3>

Example()

Func Example()
    ; Run Notepad
    Run("notepad.exe")

    ; Wait 10 seconds for the Notepad window to appear.
    Local $hWnd = WinWait("[CLASS:Notepad]", "", 10)

    ; Set the edit control in Notepad with some text. The handle returned by WinWait is used for the "title" parameter of ControlSetText.
    ControlSetText($hWnd, "", "Edit1", "798987978978987")

    ; Retrieve the text of the edit control in Notepad. The handle returned by WinWait is used for the "title" parameter of ControlGetText.
    $sText = ControlGetText($hWnd, "", "Edit1")

   $Value=StringSplit($sText,@CRLF)
	  For $i=1 To $Value[0]
		 If StringRegExp($Value[$i],"[0-9][^:alpha:]") Then
			MsgBox($MB_SYSTEMMODAL,"",$Value[$i])
	  EndIf
   Next

EndFunc   ;==>Example
