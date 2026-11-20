# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Descripción: Versión que mueve en lugar de copiar, ya revisada (apartado Pidiendo una mejora a la IA)
# Esta versión MUEVE los ficheros. Pruébala primero con -WhatIf sobre la carpeta de pruebas:
# .\Organizar.ps1 -Ruta C:\Temp\Kaos -WhatIf

[CmdletBinding(SupportsShouldProcess)]
param (
    [Parameter(Mandatory)]
    [string]$Ruta,

    [string]$Registro = "$PSScriptRoot\registro.csv"
)

# Importamos la función filtrador
. "$PSScriptRoot\filtrador.ps1"

# Comprobamos que la carpeta existe antes de empezar
if (-not (Test-Path -Path $Ruta -PathType Container)) {
    Write-Error "La carpeta $Ruta no existe."
    return
}

# Solo ficheros, también los de las subcarpetas, saltando los que ya están en la carpeta de su año
$listado = Get-ChildItem -Path $Ruta -File -Recurse |
    Where-Object { $_.DirectoryName -ne (Join-Path -Path $Ruta -ChildPath $_.LastWriteTime.Year) }

# Por cada fichero, llamamos a filtrador y guardamos lo que devuelve
$resultados = foreach ($fichero in $listado) {
    filtrador -Anio $fichero.LastWriteTime.Year -Ruta $Ruta -Origen $fichero.FullName
}

# Con -WhatIf no se mueve nada, así que no hay nada que registrar
if ($resultados) {
    $resultados | Export-Csv -Path $Registro -NoTypeInformation -Append -Encoding UTF8
    $resultados | Format-Table -AutoSize
}
