AutoItSetOption ( "WinTitleMatchMode" , 2 )

$hControl = ControlGetHandle ( "Create Parent", "", "WindowsForms10.Window.b.app.0.ecabc2_r17_ad11")

ConsoleWrite($hControl)