#$host.ui.RawUI.WindowTitle = “Obtener hardware y modelo de motherboard”

# Copiar a portapapeles la salida de la variable
#$OutputVariable1 = (cmd /c "wmic baseboard get product, Manufacturer") | Out-String | clip

<# ---------------------------------------------------------------
#>

new-item -force -path c:\ -name "modelo-mb" -itemtype file

Add-Content -Path "c:\modelo-mb.txt" -Value (cmd /c "wmic baseboard get product, Manufacturer")