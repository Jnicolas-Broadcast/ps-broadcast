<# CREAR NOMBRE DE ARCHIVOS BASADOS EN EL TIMESTAMP..

Function GetFileName([ref]$fileName)
{
 $invalidChars = [io.path]::GetInvalidFileNamechars() 
 $date = Get-Date -format s
 $fileName.value = ($date.ToString() -replace "[$invalidChars]","-") + ".txt"
}

$fileName = $null
GetFileName([ref]$fileName)
new-item -path c:\ -name $filename -itemtype file

#>