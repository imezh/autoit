Func Fill ($window = "",$handler = "",$value = "", $sleep = 0,$validator = 0, $stdout = 0)

   AutoItSetOption ( "WinTitleMatchMode" , 2 )

#---------------------------------------------------------------------
	If $stdout = 1 Then

	  ConsoleWrite('<Window> ')
	  ConsoleWrite($window)
	  ConsoleWrite(' </Window>' & @CRLF)

	  ConsoleWrite('<Handler> ')
	  ConsoleWrite($handler)
	  ConsoleWrite(' </Handler>' & @CRLF)

	  ConsoleWrite('<Value> ')
	  ConsoleWrite($value)
	  ConsoleWrite(' </Value>' & @CRLF)

	  ConsoleWrite('<Sleep> ')
	  ConsoleWrite($sleep)
	  ConsoleWrite(' </Sleep>' & @CRLF)

	  ConsoleWrite('<Validator> ')
	  ConsoleWrite($validator)
	  ConsoleWrite(' </Validator>' & @CRLF)

	  ConsoleWrite('<Stdout> ')
	  ConsoleWrite($stdout)
	  ConsoleWrite(' </Stdout>' & @CRLF)

   EndIf
#---------------------------------------------------------------------
   If WinWaitActive($window) Then

	  ControlClick($window, "", $handler)

	  ControlSend($window, "", $handler, StringUpper($value))

	  ControlSend($window, "", $handler, "{ENTER}")

;~ #---------------------------------------------------------------------
;~ 	  $sText = WinGetText($window)

;~ 	  #ConsoleWrite($sText)

;~ 	  $vSplit=StringSplit($sText,@CRLF)

;~ 	  Select
;~ 	  case StringIsAlpha ($value)
;~ 			$pattern = "[:alpha:]"
;~ 	  case StringIsDigit ($value)
;~ 			$pattern = "[:digit:]"

;~ 	  EndSelect
;~ #---------------------------------------------------------------------
;~    if $stdout = 1 Then

;~ 	  ConsoleWrite('<Search pattern> ')
;~ 	  ConsoleWrite($pattern)
;~ 	  ConsoleWrite(' </Search pattern>' & @CRLF)

;~    EndIf
;~ #-----------------------------------------------------------------------

   EndIf

   Sleep($sleep)

EndFunc


