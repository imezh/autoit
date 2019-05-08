#include <C:\autoit-v3\install\Examples\Fill.au3>

AutoItSetOption ( "WinTitleMatchMode" , 2 )

$wOrderBook = "Order Book"
$wCreateParent = "Create Parent"

$hClient = "[NAME:ulLookUpEdit]"
$hInstrument = "[NAME:gridLookUpEdit1]"
$hQuantity = "[NAME:ulQuantity]"
$hLimit = "[NAME:comboBoxEditType]"
$hPrice = "[NAME:textEditPrice]"

$pClient = "abuparent"
$pInstrument = "SBER"
$pQuantity = "100"
$pLimit = "limit"
$pPrice = "200"

Fill($wCreateParent,$hClient,$pClient,1000,0,0)
Fill($wCreateParent,$hInstrument,$pInstrument,1000,0,0)
#Fill($wCreateParent,$hQuantity,$pQuantity,1000,0,0)
Fill($wCreateParent,$hLimit,$pLimit,1000,0,0)
Fill($wCreateParent,$hPrice,$pPrice,1000,0,0)