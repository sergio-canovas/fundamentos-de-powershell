# Fundamentos de PowerShell (2ª edición)
# Capítulo 15. Proyecto final: organizando nuestros ficheros por años.
# Apartado: La versión final

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

# Solo ficheros: las carpetas de los años no se tocan
$listado = Get-ChildItem -Path $Ruta -File

# Por cada fichero, llamamos a filtrador y guardamos lo que devuelve
$resultados = foreach ($fichero in $listado) {
    filtrador -Anio $fichero.LastWriteTime.Year -Ruta $Ruta -Nombre $fichero.Name
}

# Con -WhatIf no se copia nada, así que no hay nada que registrar
if ($resultados) {
    $resultados | Export-Csv -Path $Registro -NoTypeInformation -Append -Encoding UTF8
    $resultados | Format-Table -AutoSize
}
