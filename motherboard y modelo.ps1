$ConfirmPreference = "None"
#Set-ExecutionPolicy -ExecutionPolicy Unrestricted
Set-ExecutionPolicy  -ExecutionPolicy Unrestricted -Scope LocalMachine 

#$host.ui.RawUI.WindowTitle = “Obtener hardware y modelo de motherboard”

# Copiar a portapapeles la salida de la variable
#$OutputVariable1 = (cmd /c "wmic baseboard get product, Manufacturer") | Out-String | clip
<# ---------------------------------------------------------------
    https://stackoverflow.com/questions/14071012/how-do-i-automatically-answer-yes-to-a-prompt-in-powershell
#>
 
<#new-item -force -path c:\ -name "\\10.1.3.171\c$\modelo-mb.txt" -itemtype file
Add-Content -Path "\\10.1.3.171\c$\modelo-mb.txt" -Value (cmd /c "wmic baseboard get product, Manufacturer")
Add-Content -Path "\\10.1.3.171\c$\modelo-mb.txt" -Value (cmd /c "hostname")
Add-Content -Path "\\10.1.3.171\c$\modelo-mb.txt" -Value (cmd /c "ECHO --------------------------------------------------------------------")
#>


#new-item -force -path "\\10.1.3.171\c$\" -name "modelo-mb.txt" -itemtype file
Add-Content -Path "\\10.1.3.171\c$\modelo-mb.txt" -Value (cmd /c "wmic baseboard get product, Manufacturer")
Add-Content -Path "\\10.1.3.171\c$\modelo-mb.txt" -Value (cmd /c "hostname")
Add-Content -Path "\\10.1.3.171\c$\modelo-mb.txt" -Value (cmd /c "ECHO --------------------------------------------------------------------")