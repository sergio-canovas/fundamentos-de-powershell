# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Apartado: El script principal

# Importamos la función filtrador
. "$PSScriptRoot\filtrador.ps1"

# Directorio que queremos ordenar
$ruta = "C:\Temp\Kaos"

# Obtenemos array de archivos
$listado = Get-ChildItem -Path $ruta

# Por cada fichero, ejecuta la función filtrador.
foreach ($fichero in $listado) {
    $year = $fichero.LastWriteTime.Year
    $name = $fichero.Name

    # Llamada a función filtrador.
    filtrador -year $year -ruta $ruta -name $name
}
