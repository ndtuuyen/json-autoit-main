#include<JSON.au3>
$data=FileRead(@ScriptDir&'\2.txt')

;tra ve object json
$object=Json_Decode($data)

$message=Json_Get($object,'["errors"][0]["message"]')
MsgBox(0,0,$message)
