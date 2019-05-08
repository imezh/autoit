AutoItSetOption ( "WinTitleMatchMode" , 2 )

$wOrderBook = "Order Book"
$wCreateParent = "Create Parent"

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