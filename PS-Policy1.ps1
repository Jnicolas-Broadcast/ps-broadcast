$host.ui.RawUI.WindowTitle = “Permitir la ejecución de comandos en scripts PS”
Start-Process powershell.exe -Credential "SISTEMA_14_712\administrador"
#Preparando el equipo para ejecucion de comandos Powershell
Set-ExecutionPolicy -ExecutionPolicy Unrestricted