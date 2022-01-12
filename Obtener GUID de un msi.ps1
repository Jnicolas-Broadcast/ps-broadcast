#Extraer GUID de Msi instalada.. reemplazando algunas lineas.
#get-wmiobject Win32_Product | Sort-Object -Property Name |Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize
# la segunda linea arroja el GUID, funciona correctamente.