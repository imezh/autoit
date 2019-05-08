#include <MsgBoxConstants.au3>

AutoItSetOption ( "WinTitleMatchMode" , 2 )

Run("\\elf1\AppDevelopment\ULDeskUAT_NEW\InstallScript\ULDeskUAT_NEW.cmd")

$wLogOn = "UL DESK Launcher - ULLINK"
$wOrderBook = "Order Book"
$wCreateParent = "Create Parent"

if WinWaitActive($wLogOn) Then

   ControlFocus($wLogOn, "", "[NAME:TextBoxUsername]")

   ControlSend($wLogOn, "", "[NAME:TextBoxUsername]", "*dubov")

   ControlSend($wLogOn, "", "[NAME:TextBoxPassword]", "*dubov")

   ControlClick($wLogOn, "", "[NAME:ButtonOK]")

   MsgBox($MB_SYSTEMMODAL, "", "Огонь!")

Else

   MsgBox($MB_SYSTEMMODAL, "", "Что-то пошло не так!")

EndIf

$hClient = "[NAME:ulLookUpEdit]"
$hInstrument = "[NAME:gridLookUpEdit1]"
$hQuantity = "[NAME:ulQuantity]"
$hLimit = "[NAMAE:comboBoxEditType]"
$hPrice = "[NAME:textEditPrice]"

$pClient = "abuparent"
$pInstrument = "SBER"
$pQuantity = "100"
$pLimit = "limit"
$pPrice = "200"


if WinWaitActive($wOrderBook) Then

   ControlClick($wOrderBook, "", "[NAME:parentBuyButton]")

EndIf

if WinWaitActive($wCreateParent) Then
   #-------------------------------------------------------------------------------
   ControlClick($wCreateParent, "", $hClient)

   ControlSend($wCreateParent, "", $hClient, $pClient)

   ControlSend($wCreateParent, "", $hClient, "{ENTER}")

   #-------------------------------------------------------------------------------

   ControlClick($wCreateParent, "", $hInstrument)

   ControlSend($wCreateParent, "", $hInstrument, $pInstrument)

   ControlSend($wCreateParent, "", $hInstrument, "{ENTER}")
   #-------------------------------------------------------------------------------

   ControlClick($wCreateParent, "", $hQuantity)

   ControlSend($wCreateParent, "", $hQuantity, "{UP}")

   #-------------------------------------------------------------------------------

   ControlClick($wCreateParent, "", $hLimit)

   ControlSend($wCreateParent, "", $hLimit, $pLimit)

   ControlSend($wCreateParent, "", $hLimit, "{ENTER}")
   #-------------------------------------------------------------------------------

   ControlClick($wCreateParent, "", $hPrice)

   ControlSend($wCreateParent, "", $hPrice, $pPrice)

   ControlSend($wCreateParent, "", $hPrice, "{ENTER}")
   #-------------------------------------------------------------------------------

EndIf