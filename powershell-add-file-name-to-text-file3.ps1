$OutputVariable1 = (cmd.exe /c hostname) #| Out-String | clip
$fileName = $null
Function GetFileName([ref]$fileName)
{
 $fileName.value = (OutputVariable1 -replace " ") + ".txt"
}

New-Item -path c:\ -name  $OutputVariable1 -ItemType File
$OutputVariable2 = (get-wmiobject Win32_Product | Sort-Object -Property Name |Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize)

Add-Content "$OutputVariable2"


