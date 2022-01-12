
$OutputVariable1 = (cmd.exe /c hostname) #| Out-String | clip

Function GetFileName([ref]$fileName)
{
 $invalidChars = [io.path]::GetInvalidFileNamechars() 
 $date = Get-Date -format s
 $fileName.value = ($date.ToString() -replace "[$invalidChars]","-") + ".txt"
}



New-Item -path c:\ -name  $OutputVariable1 -ItemType File
Add-Content "C:\files\open\file.txt" "The second sentence in our file."