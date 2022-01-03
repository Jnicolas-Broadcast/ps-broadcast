#Elimina Firefox de manera silenciosa
#Application names
$AppName = "*Firefox*"

$Path = "HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall"

#Search for Application that meets the criteria
$Search = Get-ChildItem -Path $Path -ErrorAction SilentlyContinue | Get-ItemProperty | Where-Object {$_.DisplayName -like $AppName}
   
[PSCustomObject]@{
            Firefox           = $search.DisplayName
            Uninstall         = $Search.UninstallString
}