$host.ui.RawUI.WindowTitle = “Obtener GUID de un msi”
$OutputVariable = (cmd.exe /c hostname) | Out-String | clip
# ---------------------------------------------------------------
#Extraer GUID de Msi instalada.. reemplazando algunas lineas.
#OutputVariable y clip, tomamos desde el portapapeles la salida del comando "hostname.exe"
get-wmiobject Win32_Product | Sort-Object -Property Name |Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize

# la segunda linea arroja el GUID, funciona correctamente.
# Podre exportar la salida del comando
# https://techgenix.com/powershell-cmdlet-output-to-the-clipboard/#:~:text=You%20can%20also%20move%20the,the%20end%20of%20your%20cmdlet.&text=Now%2C%20if%20we%20add%20the,output%20in%20the%20PowerShell%20session.
# https://devblogs.microsoft.com/scripting/powertip-send-output-to-clipboard-with-powershell/

dir *.txt | ForEach {
    $variable = "$($_.Name)`n$(Get-content $_.FullName)"
    Add-Content -Value $variable -Path .\Output.txt
}