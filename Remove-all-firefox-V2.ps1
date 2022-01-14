#Remove-all-firefox-V2.ps1
<#
    extraer nombre de la app .msi desde wmic > product get name y reemplazar en la linea '%Partial Name%'
#>
<#Extraido de :
    https://superuser.com/questions/234104/uninstalling-programs-silently-via-cmd/234107
#>
(Get-WmiObject -Query "SELECT * FROM Win32_Product WHERE Name like '%Partial Name%'").uninstall()