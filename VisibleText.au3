#include <MsgBoxConstants.au3>

Example()

Func Example()
    ; Run Notepad

   AutoItSetOption ( "WinTitleMatchMode" , 2 )

    ; Wait 10 seconds for the Notepad window to appear.
    Local $hWnd = WinWait("Create Parent", "", 10)

	#MsgBox($MB_SYSTEMMODAL,"",$hWnd)


    ; Set the edit control in Notepad with some text. The handle returned by WinWait is used for the "title" parameter of ControlSetText.
    ControlSend($hWnd, "", "[NAME:ulLookUpEdit]", "ABUPARENT")

	ControlSend($hWnd, "", "[NAME:ulLookUpEdit]", "{ENTER}")

	Sleep(1000)

    ; Retrieve the text of the edit control in Notepad. The handle returned by WinWait is used for the "title" parameter of ControlGetText.
    $sText = WinGetText($hWnd)


    $Value=StringSplit($sText,@CRLF)
 	  For $i=1 To $Value[0]
 		 If StringRegExp($Value[$i],"[A-Za-z]") and $Value[$i] = "ABUPARENT" Then
 			MsgBox($MB_SYSTEMMODAL,"",$Value[$i])
 	  EndIf
    Next

EndFunc   ;==>Example