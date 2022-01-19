#$host.ui.RawUI.WindowTitle = “Permitir la ejecución de comandos en scripts PS”
# Start-Process powershell.exe -Credential "SISTEMA_14_712\administrador"
#Preparando el equipo para ejecucion de comandos Powershell
#Powershell-Cmdlet -Confirm:$false
$ConfirmPreference = "None" <# revisar impacto del parametro #>
Set-ExecutionPolicy -ExecutionPolicy Unrestricted