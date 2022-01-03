@echo off
<#
============================================================================
	Version Batch
	Kill some demons.. By Joaquin Cabral 
===========================================================================
mis "tags":
matarAdobe
matarOffice

conocer la versíon de Firefox via cmd, se debe ejecutar:
firefox -v|more
(sin los dos puntos delante..)y presionar "enter"
#>
cd "C:\Program Files\Mozilla Firefox\" | .\firefox.exe -v | more > "C:\Users\TESTING\Desktop" > pruebas.txt


$ValoresFirefox = @("93.0")
$Valores = Get-Content "c:/Program Files/Mozilla Firefox/firefox.exe -v | more"
#Toma los valores de salida de ese comando... este caso seria el 93.0 de Firefox
if($ValoresFirefox -icontains $Valores){
	Write-Host "Valores = $Valores" -ForegroundColor Green
} else {
	Write-Host "$Valores La version de Firefox no es valida." -ForegroundColor Red
}


<#
Algunas ideas formato borrador
$BuscandoAdobe = Get-Content "C"

powershell.exe -noexit c:\script.ps1
#>