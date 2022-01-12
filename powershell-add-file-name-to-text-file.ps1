#Ejemplo
# powershell-add-file-name-to-text-file
# https://stackoverflow.com/questions/29149037/powershell-add-file-name-to-text-file

dir *.txt | ForEach {
    $variable = "$($_.Name)`n$(Get-content $_.FullName)"
    Add-Content -Value $variable -Path .\Output.txt
}