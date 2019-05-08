Func Fill($window = "",$handler = "",$value = "", $sleep = 0,$validator = 0, $stdout = 0, $type = "text")

#---------------------------------------------------------------------
	If $stdout = 1 Then
	  ConsoleWrite('########################'& @CRLF)
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
	  ConsoleWrite('########################'& @CRLF)

   EndIf
#---------------------------------------------------------------------
   If WinWaitActive($window) Then

	  ControlClick($window, "", $handler)

	  ControlSend($window, "", $handler, StringUpper($value))

	  ControlSend($window, "", $handler, "{ENTER}")

#---------------------------------------------------------------------

	  $sText = WinGetText($window)

   If $stdout = 1 Then

	  ConsoleWrite('<Text> ')
	  ConsoleWrite($sText)
	  ConsoleWrite(' </Text>' & @CRLF)

   EndIf

	  $vSplit=StringSplit($sText,@CRLF)

	  Select
	  case StringIsAlpha ($value)
			$pattern = "[:alpha:]"
	  case StringIsDigit ($value)
			$pattern = "[:digit:]"

	  EndSelect
#---------------------------------------------------------------------
   if $stdout = 1 Then

	  ConsoleWrite('<Search pattern> ')
	  ConsoleWrite($pattern)
	  ConsoleWrite(' </Search pattern>' & @CRLF)

   EndIf
#-----------------------------------------------------------------------

   EndIf

   Sleep($sleep)

EndFunc


