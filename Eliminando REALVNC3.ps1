<# Eliminar REALVNC solucion 3
Link de descarga del .bat
https://drive.google.com/file/d/1ipO-w-Rk_KXV3xJ5IimdHYdxQrtXN1hz/view?usp=sharing
link acortado:
https://bit.ly/3H78Oh3

Nombre del .bat:
"eliminar REALVNC.bat"
extraccion:
https://www.softzone.es/windows/como-se-hace/descargar-archivos-powershell/
#>
$client = new-object System.Net.WebClient
$client.DownloadFile("https://drive.google.com/file/d/1ipO-w-Rk_KXV3xJ5IimdHYdxQrtXN1hz/view?usp=sharing","C:\eliminar REALVNC.bat")
Set-Location C:\
& '.\eliminar REALVNC.bat'