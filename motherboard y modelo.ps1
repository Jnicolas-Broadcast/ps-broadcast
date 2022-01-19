$ConfirmPreference = "None"
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
#Set-ExecutionPolicy  -ExecutionPolicy Bypass

<# ---------------------------------------------------------------
Copiar a portapapeles la salida de la variable
$OutputVariable1 = (cmd /c "wmic baseboard get product, Manufacturer") | Out-String | clip

    https://stackoverflow.com/questions/14071012/how-do-i-automatically-answer-yes-to-a-prompt-in-powershell
------------------------------------------------------------------

You can't use 'runas' directly in Powershell.  Anyway as you know, Runas will prompt for a password. 
To run a program with different credentials in Powershell is a two-part process:
1. Store the password interactively to an encoded text file:

$credential = Get-Credential 'uepccba.local\jcabral'
$credential.Password | ConvertFrom-SecureString | Set-Content c:\password.txt
#>

#new-item -force -path "\\10.1.3.171\c$\" -name "modelo-mb.txt" -itemtype file
Add-Content -Path "\\10.1.3.171\c$\modelo-mb.txt" -Value (cmd /c "wmic baseboard get product, Manufacturer")
Add-Content -Path "\\10.1.3.171\c$\modelo-mb.txt" -Value (cmd /c "hostname")
Add-Content -Path "\\10.1.3.171\c$\modelo-mb.txt" -Value (cmd /c "ECHO --------------------------------------------------------------------")