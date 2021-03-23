#include<JSON.au3>
$data=FileRead(@ScriptDir&'\1.txt')

;tra ve object json
$object=Json_Decode($data)

$dem = 0
While True
    $message=Json_Get($object,'["comments"]["data"]['&$dem&']["message"]')
    if $message = '' Then ExitLoop
    MsgBox(0,0,$message)
    $dem+=1
WEnd